library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.aux.all;

entity windowed_rf is
	-- Choosing a bad combination of these will make the design very large and slow
  generic (
    WIDTH_REG   : natural; -- The number of bits of each register
    M : natural;  -- The number of global registers
    N  : natural; -- Number of registers in each IN, OUT, LOCAL section
    F : natural -- The number of windows, must be >= 2
	);
  port (
    CLK:     IN std_logic;
		RESET:   IN std_logic;
		ENABLE:  IN std_logic;
		RD1:     IN std_logic;
		RD2:     IN std_logic;
		WR:      IN std_logic;
		save:    IN std_logic;
		restore: IN std_logic; -- Restore has priority over save
		ADD_WR:  IN std_logic_vector(i_log2ceil(wrf_window_len(N, M))-1 downto 0);
		ADD_RD1: IN std_logic_vector(i_log2ceil(wrf_window_len(N, M))-1 downto 0);
		ADD_RD2: IN std_logic_vector(i_log2ceil(wrf_window_len(N, M))-1 downto 0);
		DATAIN:  IN std_logic_vector(WIDTH_REG-1 downto 0);
		OUT1:    OUT std_logic_vector(WIDTH_REG-1 downto 0);
		OUT2:    OUT std_logic_vector(WIDTH_REG-1 downto 0);
		fill:    OUT std_logic;
		spill:   OUT std_logic);
end entity;

architecture behavioural of windowed_rf is

	-- Each window adds 2 sections
	constant num_regs_local: natural := 2 * N * F;
	-- The total size of the windowed register file
	constant num_regs : natural := num_regs_local + M;

	component register_file is
		-- Parametric on width of registers and number of registers
		-- Needs to be power of 2
		generic (
			WIDTH_REG : natural;
			NUM_REGS : natural);
		port (
			CLK:     IN  std_logic;
			RESET:   IN  std_logic;
			ENABLE:  IN  std_logic;
			RD1:     IN  std_logic;
			RD2:     IN  std_logic;
			WR:      IN  std_logic;
			ADD_WR:  IN  std_logic_vector(i_log2ceil(NUM_REGS)-1 downto 0);
			ADD_RD1: IN  std_logic_vector(i_log2ceil(NUM_REGS)-1 downto 0);
			ADD_RD2: IN  std_logic_vector(i_log2ceil(NUM_REGS)-1 downto 0);
			DATAIN:  IN  std_logic_vector(WIDTH_REG - 1 downto 0);
			OUT1:    OUT std_logic_vector(WIDTH_REG - 1 downto 0);
			OUT2:    OUT std_logic_vector(WIDTH_REG - 1 downto 0));
	end component;

	-- We control the windowed register file with a state machine, these are the states:
	--   s_reset: A reset is happening
	--   s_regs_restore: Normal operation and the last movement was a restore
	--   s_regs_save: Normal operation and the last movement was a save
	--   s_fill: A fill is happening (reading from memory)
	--   s_spill: A spill is happening (writing to memory)
	type wrf_state_t is (s_reset, s_regs_save, s_regs_restore, s_fill, s_spill);
	signal crnt_state, next_state: wrf_state_t;

	-- SWP: Points at the last window that had to be spilled/filled
	-- CWP: Points at the current window
	signal swp, cwp:
		std_logic_vector(i_log2ceil(F)-1 downto 0);
	-- Indicates how many windows are occupied
	signal n_used_windows: std_logic_vector(i_log2ceil(F)-1 downto 0);
	signal can_restore, can_save: std_logic;
	-- Indicates if it's doing a fill/spill or not. Goes to '0' when finished.
	signal filling, spilling: std_logic;

	-- Signals to the internal register file.
	-- Addresses in the internal register file are absolute
	signal add_rd1_rf, add_rd2_rf, add_wr_rf:
		std_logic_vector(i_log2ceil(num_regs)-1 downto 0);
	signal rd1_rf, rd2_rf, wr_rf, en_rf, rst_rf:
		std_logic;
	signal datain_rf, out1_rf, out2_rf:
		std_logic_vector(WIDTH_REG - 1 downto 0);

	-- Base address for IN/LOCAL and OUT
	signal low_base, high_base : std_logic_vector(i_log2ceil(num_regs)-1 downto 0);
	-- Address of the register being spilled/filled
	signal spill_fill_reg_addr: std_logic_vector(i_log2ceil(num_regs)-1 downto 0);
	-- 
	signal add_rd1_x, add_rd2_x, add_wr_x : std_logic_vector(i_log2ceil(num_regs)-1 downto 0);
	
begin

	rf: register_file
	generic map (WIDTH_REG => WIDTH_REG, NUM_REGS => num_regs)
	port map (
		CLK => CLK,
		RESET => RESET,
		ENABLE => en_rf,
		RD1 => rd1_rf,
		RD2 => rd2_rf,
		WR => wr_rf,
		ADD_WR => add_wr_rf,
		ADD_RD1 => add_rd1_rf,
		ADD_RD2 => add_rd2_rf,
		DATAIN => datain_rf,
		OUT1 => out1_rf,
		OUT2 => out2_rf
	);

	-- Extend the addresses to the size of the internal register file
	add_rd1_x(i_log2ceil(num_regs)-1 downto i_log2ceil(wrf_window_len(N, M))) <= (others => '0');
	add_rd1_x(i_log2ceil(wrf_window_len(N, M))-1 downto 0) <= add_rd1;
	add_rd2_x(i_log2ceil(num_regs)-1 downto i_log2ceil(wrf_window_len(N, M))) <= (others => '0');
	add_rd2_x(i_log2ceil(wrf_window_len(N, M))-1 downto 0) <= add_rd2;
	add_wr_x(i_log2ceil(num_regs)-1 downto i_log2ceil(wrf_window_len(N, M))) <= (others => '0');
	add_wr_x(i_log2ceil(wrf_window_len(N, M))-1 downto 0) <= add_wr;

	-- The absolute addresses being passed to the internal register file
	add_rd1_rf <=
		spill_fill_reg_addr when spilling = '1' else
		std_logic_vector(unsigned(low_base) + unsigned(ADD_RD1)) when unsigned(ADD_RD1) < to_unsigned(2*N, ADD_RD1'length) else
		std_logic_vector(unsigned(high_base) + unsigned(ADD_RD1));
	add_rd2_rf <=
		std_logic_vector(unsigned(low_base) + unsigned(ADD_RD2)) when unsigned(ADD_RD2) < to_unsigned(2*N, ADD_RD2'length) else
		std_logic_vector(unsigned(high_base) + unsigned(ADD_RD2));
	add_wr_rf <=
		spill_fill_reg_addr when filling = '1' else
		std_logic_vector(unsigned(low_base) + unsigned(ADD_WR)) when unsigned(ADD_WR) < to_unsigned(2*N, ADD_WR'length) else
		std_logic_vector(unsigned(high_base) + unsigned(ADD_WR));

	low_base <= std_logic_vector(to_unsigned(2*N, ADD_WR'length) * unsigned(cwp) );
	high_base <= (others => '0') when unsigned(cwp) = to_unsigned(F-1, cwp'length) else
		std_logic_vector(unsigned(cwp) + to_unsigned(2*N, ADD_WR'length));

	can_save <= '0' when n_used_windows = std_logic_vector(to_unsigned(F, n_used_windows'length)) else '1';
	can_restore <= '0' when n_used_windows = std_logic_vector(to_unsigned(1, n_used_windows'length)) else '1';

	process (clk)
	begin
		if rising_edge(clk) then
			if reset = '1' then
			else
			end if;
		end if;
	end process;

end architecture;
