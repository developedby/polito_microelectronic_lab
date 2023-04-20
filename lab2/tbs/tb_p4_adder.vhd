library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use WORK.constants.all;

entity TB_P4_ADDER is
end TB_P4_ADDER;

architecture TEST of TB_P4_ADDER is
	constant NBIT : natural := 32;
	constant NBIT_PER_BLOCK: natural := 4;

	-- P4 component declaration
	component P4_ADDER is
		generic (
			NBIT_PER_BLOCK: integer := NumBitBlock;
			NBIT : natural := NumBitTotal);
		port (
			A    :	in	std_logic_vector(NBIT-1 downto 0);
			B    :	in	std_logic_vector(NBIT-1 downto 0);
			Cin  :	in	std_logic;
			S    :	out	std_logic_vector(NBIT-1 downto 0);
			Cout :	out	std_logic);
	end component;
	
	signal A, B, S: std_logic_vector(NBIT-1 downto 0);
	signal Cin, Cout: std_logic;
begin
	
	UUT: P4_ADDER
	generic map (NBIT => NBIT, NBIT_PER_BLOCK => NBIT_PER_BLOCK)
	port map (A => A, B => B, Cin => Cin, S => S, Cout => Cout);

	A <= x"ffffffff",
		x"ffffffff" after 1 ns,
		x"0000fffe" after 2 ns,
		x"80000000" after 3 ns,
		x"accc9d94" after 4 ns,
		x"9fc3dc12" after 5 ns,
		x"32d21832" after 6 ns,
		x"754a7e07" after 7 ns,
		x"4071cc23" after 8 ns;
	B <= x"00000001",
		x"00000000" after 1 ns,
		x"00000001" after 2 ns,
		x"80000000" after 3 ns,
		x"9b49a78f" after 4 ns,
		x"280f0326" after 5 ns,
		x"411fbf03" after 6 ns,
		x"fd51367c" after 7 ns,
		x"143ad248" after 8 ns;

	process begin
		Cin <= '0';
		wait for 0.5 ns;
		Cin <= '1';
		wait for 0.5 ns;
	end process;
	
end TEST;

