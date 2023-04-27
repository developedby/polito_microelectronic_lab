library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity SIPISOALU is 
	Port (	CLK	:	In	std_logic;
		RESET	:  	In      std_logic;
		-- Strobe A to start shifting in A same clock cycle
		STARTA	:  	In 	std_logic;
		-- Serial input
		A	:	In	std_logic;
		-- Strobe B to load B at the same clock cycle
		LOADB	:	In 	std_logic;
		-- Parallel input
		B	:	In	std_logic_vector(3 downto 0);
		-- Start C signals the beginning of shifting out the result of the sum
		-- First bit is sent at the time, second bit at next clock
		-- So whatever connect with the output needs to store C at the same cycle.
		-- We can not control when output is sent,
		--  it happens immediately after loading A and B completely.
		STARTC	:	Out	std_logic;
		-- Serial output
		C	:	Out	std_logic
	);
end SIPISOALU; 



architecture A of SIPISOALU is

	-- Stores 3 bits of operand A, load 1 it at a time, MSB first
	signal SIPO		 : std_logic_vector(2 downto 0) := "000";
	-- SIPOA holds the full A operand, 3 bits from SIPO, one bit from A on next clock
	-- PIPO is the 	B operand, loaded from B
	-- PISO is the output, put sends 1 bit at a time, LSB first
	signal SIPOA, PIPO, PISO : std_logic_vector(3 downto 0) := "0000";
	-- SUM is the result of Operand A + Operand B, on bits. MSB (carry) is discarded by PISO
	signal SUM		 : std_logic_vector(4 downto 0) := "00000";
	-- EA controls whether the SIPO shifts in A to its LSB or retains previous value
	-- LDB controls whether PIPO loads B or retains prev value
	signal EA, LDB		 : std_logic := '0';
	-- LDC controls whether PISO loads 4 bits of SUM or retains prev value
	-- SHIFTC controls whether PISO shifts out the next bit to C or retains prev value
	-- LDC has priority over SHIFTC
	signal LDC, SHIFTC	 : std_logic := '0';

	-- Unused
	signal count, next_count : integer range 0 to 3 := 0;	


	-- FSM component declaration
	component sipisoAluControl
	port (
		clk, rst, strobeA, strobeB: in std_logic;
		shiftA, loadB, loadC, shiftC, startC: out std_logic
	);
	end component;

	-- begin architecture
	begin


		SIPO_3BIT_A: process(CLK, RESET)
		begin
			if(RESET='1')
				then SIPO <= (others => '0');
			elsif (CLK'event and CLK='1')
				then
					if(EA='1')
						then SIPO <= SIPO(1 downto 0) & A;
					end if;
			end if;
		end process;

		SIPOA <= SIPO & a;


		PIPO_4BIT_B: process(CLK, RESET)
		begin
			if(RESET='1')
				then PIPO <= (others => '0');
			elsif (CLK'event and CLK='1')
				then
					if(LDB='1')
						then PIPO <= B;
					end if;
			end if;
		end process;


		PISO_4BIT_C: process(CLK, RESET)
		begin
			if(RESET='1')
				then PISO <= (others => '0');
			elsif (CLK'event and CLK='1')
				then
					if(LDC='1')
						then PISO <= SUM(3 downto 0);
					elsif(SHIFTC='1')
						then PISO <= '0' & PISO(3 downto 1);
					end if;
			end if;
		end process;


		C <= PISO(0);

		SUM <= ('0' & PIPO) + ('0' & SIPOA);


	-- FSM instance port map
	control: sipisoAluControl
	port map(
		clk => CLK,
		rst => RESET,
		strobeA => STARTA,
		strobeB => LOADB,
		shiftA => EA,
		loadB => LDB,
		loadC => LDC,
		shiftC => SHIFTC,
		startC => STARTC
	);

end A;

