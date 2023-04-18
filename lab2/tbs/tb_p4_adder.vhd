library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use WORK.constants.all;

entity TB_P4_ADDER is
end TB_P4_ADDER;

architecture TEST of TB_P4_ADDER is
	constant NBIT : natural := 16;
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
	port map (A, B, Cin, S, Cout);

	A <= x"0000";
	B <= x"0000";
	Cin <= '0';
	
end TEST;

