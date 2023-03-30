library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity TB_CARRY_GENERATOR is 
end TB_CARRY_GENERATOR; 

architecture TEST of TB_CARRY_GENERATOR is

	constant NBIT : natural := 8;
	constant NBIT_PER_BLOCK : natural := 4;

	component CARRY_GENERATOR is
		generic (
			NBIT :		integer := 32;
			NBIT_PER_BLOCK: integer := 4);
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

	A <= "00000000",
		"01010101" after 2 ns,
		"11111111" after 4 ns,
		"00111100" after 6 ns,
		"01101010" after 8 ns;

	B <= "00000000",
		"10101010" after 2 ns,
		"00000000" after 4 ns,
		"10010101" after 6 ns,
		"00110110" after 8 ns;

	ci_proc: process
	begin
		Ci <= '0';
		wait for 1 ns;
		Ci <= '1';
		wait for 1 ns;
	end process;

end TEST;
