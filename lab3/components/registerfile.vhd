library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;
use work.aux.all;

entity register_file is
	-- Parametric on width of registers and number of registers
	-- Needs to be power of 2
	generic (
		WIDTH_REG : natural := 64;
		NUM_REGS : natural := 32);
	port (
		CLK:     IN std_logic;
		RESET:   IN std_logic;
		ENABLE:  IN std_logic;
		RD1:     IN std_logic;
		RD2:     IN std_logic;
		WR:      IN std_logic;
		ADD_WR:  IN std_logic_vector(i_log2ceil(NUM_REGS)-1 downto 0);
		ADD_RD1: IN std_logic_vector(i_log2ceil(NUM_REGS)-1 downto 0);
		ADD_RD2: IN std_logic_vector(i_log2ceil(NUM_REGS)-1 downto 0);
		DATAIN:  IN std_logic_vector(WIDTH_REG-1 downto 0);
		OUT1:    OUT std_logic_vector(WIDTH_REG-1 downto 0);
		OUT2:    OUT std_logic_vector(WIDTH_REG-1 downto 0));
end register_file;

architecture A of register_file is

	-- suggested structures
	subtype REG_ADDR is natural range 0 to NUM_REGS-1; -- using natural type
	type REG_ARRAY is array(REG_ADDR) of std_logic_vector(WIDTH_REG-1 downto 0); 
	signal REGISTERS : REG_ARRAY; 

	-- One register for each output, updated synchronously
	signal out_reg1, out_reg2 : std_logic_vector(WIDTH_REG-1 downto 0);
	
begin 
	-- Main process, reset, read and write
	process (CLK)
	begin
		if rising_edge(CLK) then
			out_reg1 <= out_reg1;  -- By default keep old value
			out_reg2 <= out_reg2;
			REGISTERS <= REGISTERS;

			if RESET = '1' then
				-- Reset puts everything at 0
				registers <= (others => (others => '0'));
				out_reg1 <= (others => '0');
				out_reg2 <= (others => '0');
			elsif ENABLE = '1' then
				-- Only write and update the read registers if EN='1'

				-- We read the old value, even if writing to this register at the same time
				if RD1 = '1' then
					out_reg1 <= REGISTERS(to_integer(unsigned(ADD_RD1)));
				end if;
				if RD2 = '1' then
					out_reg2 <= REGISTERS(to_integer(unsigned(ADD_RD2)));
				end if;

				if WR = '1' then
					REGISTERS(to_integer(unsigned(ADD_WR))) <= DATAIN;
				end if;
			end if;

		end if;
	end process;

	-- Async read from out registers, but not from actual register file, guarantees sync read
	OUT1 <= out_reg1;
	OUT2 <= out_reg2;

end A;
