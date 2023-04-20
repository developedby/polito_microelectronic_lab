library IEEE;
use IEEE.std_logic_1164.all; --  libreria IEEE con definizione tipi standard logic
use WORK.constants.all; -- libreria WORK user-defined

entity MUX21_GENERIC is
	Generic (
		NBIT: integer := numBit;
		DELAY_MUX: Time := tp_mux
	);
	Port (
		A:	In	std_logic_vector(NBIT-1 downto 0);
		B:	In	std_logic_vector(NBIT-1 downto 0);
		SEL:In	std_logic;
		Y:	Out	std_logic_vector(NBIT-1 downto 0)
	);
end MUX21_GENERIC;


architecture BEHAVIORAL of MUX21_GENERIC is
begin
	Y <= A when SEL = '0' else B after DELAY_MUX;
end BEHAVIORAL;

architecture STRUCTURAL of MUX21_GENERIC is
	component MUX21 is
		Generic (DELAY_MUX: Time := tp_mux);
		Port (
			A:	In	std_logic;
			B:	In	std_logic;
			S:	In	std_logic;
			Y:	Out	std_logic
		);
	end component;
begin
	MUX_BIT_GENERATE: for i in 0 to NBIT-1 generate
		bit_mux: MUX21
		generic map (DELAY_MUX)
		port map (A=>A(i),B=>B(i),S=>SEL,Y=>Y(i));
	end generate;
end STRUCTURAL;


configuration CFG_MUX21_GEN_BEHAVIORAL of MUX21_GENERIC is
	for BEHAVIORAL
	end for;
end CFG_MUX21_GEN_BEHAVIORAL;

configuration CFG_MUX21_GEN_STRUCTURAL of MUX21_GENERIC is
	for STRUCTURAL
		for all : MUX21
			use configuration WORK.CFG_MUX21_BEHAVIORAL;
		end for;
	end for;
end CFG_MUX21_GEN_STRUCTURAL;
