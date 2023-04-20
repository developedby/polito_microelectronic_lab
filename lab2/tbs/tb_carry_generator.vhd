library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity TB_CARRY_GENERATOR is 
end TB_CARRY_GENERATOR; 

architecture TEST of TB_CARRY_GENERATOR is

	constant NBIT : natural := 16;
	constant NBIT_PER_BLOCK : natural := 2;
	constant NBLOCKS : natural := NBIT / NBIT_PER_BLOCK;

	component CARRY_GENERATOR is
		generic (
			NBIT: integer;
			NBIT_PER_BLOCK: integer);
		port (
			A :	in	std_logic_vector(NBIT-1 downto 0);
			B :	in	std_logic_vector(NBIT-1 downto 0);
			Ci:	in	std_logic;
			Co:	out	std_logic_vector(NBLOCKS downto 0));
	end component;

	signal A, B : std_logic_vector(NBIT-1 downto 0);
	signal Ci   : std_logic;
	signal Co   : std_logic_vector(NBLOCKS downto 0);
begin

	uut: CARRY_GENERATOR
	generic map (NBIT => NBIT, NBIT_PER_BLOCK => NBIT_PER_BLOCK)
	port map (A, B, Ci, Co);

	leading_zeros: if NBIT > 8 generate
		A(NBIT-1 downto 8) <= (others => '0');
		B(NBIT-1 downto 8) <= (others => '0');
	end generate;

	A(7 downto 0) <= x"00",
		x"55" after 2 ns,
		x"FF" after 4 ns,
		x"3B" after 6 ns,
		x"6A" after 8 ns;

	B(7 downto 0) <= x"00",
		x"AA" after 2 ns,
		x"00" after 4 ns,
		x"95" after 6 ns,
		x"36" after 8 ns;

	ci_proc: process
	begin
		Ci <= '0';
		wait for 1 ns;
		Ci <= '1';
		wait for 1 ns;
	end process;

end TEST;