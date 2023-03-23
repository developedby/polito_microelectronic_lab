library IEEE;
use IEEE.std_logic_1164.all; --  libreria IEEE con definizione tipi standard logic
use WORK.constants.all; -- libreria WORK user-defined

entity MUX21 is
	Generic (DELAY_MUX: Time := tp_mux);
	Port (	A:	In	std_logic;
		B:	In	std_logic;
		S:	In	std_logic;
		Y:	Out	std_logic);
end MUX21;

architecture BEHAVIORAL of MUX21 is

begin
	Y <= A when S='0' else B after DELAY_MUX;

end BEHAVIORAL;

configuration CFG_MUX21_BEHAVIORAL of MUX21 is
	for BEHAVIORAL
	end for;
end CFG_MUX21_BEHAVIORAL;

