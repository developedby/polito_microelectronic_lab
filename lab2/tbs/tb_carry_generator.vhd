library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity TB_CARRY_GENERATOR is 
end TB_CARRY_GENERATOR; 

architecture TEST of TB_CARRY_GENERATOR is

	constant NBIT : natural := 16;
	constant NBIT_PER_BLOCK : natural := 4;

	component CARRY_GENERATOR is
		generic (
			NBIT: integer;
			NBIT_PER_BLOCK: integer);
		port (
			A :	in	std_logic_vector(NBIT-1 downto 0);
			B :	in	std_logic_vector(NBIT-1 downto 0);
			Ci:	in	std_logic;
			Co:	out	std_logic_vector((NBIT/NBIT_PER_BLOCK)-1 downto 0));
	end component;

	signal A, B : std_logic_vector(NBIT-1 downto 0);
	signal Ci   : std_logic;
	signal Co   : std_logic_vector((NBIT/NBIT_PER_BLOCK)-1 downto 0);
begin

	uut: CARRY_GENERATOR
	generic map (NBIT, NBIT_PER_BLOCK)
	port map (A, B, Ci, Co);

	A <= x"0000",
		x"0055" after 2 ns,
		x"00FF" after 4 ns,
		x"003B" after 6 ns,
		x"006A" after 8 ns;

	B <= x"0000",
		x"00AA" after 2 ns,
		x"0000" after 4 ns,
		x"0095" after 6 ns,
		x"0036" after 8 ns;

	ci_proc: process
	begin
		Ci <= '0';
		wait for 1 ns;
		Ci <= '1';
		wait for 1 ns;
	end process;

end TEST;
