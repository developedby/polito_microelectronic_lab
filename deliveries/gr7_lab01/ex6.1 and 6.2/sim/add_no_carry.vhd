library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use WORK.constants.all;

-- Ripple Carry
entity ADD_NO_CARRY is 
	generic (NBIT: integer := numBit);
	Port (
    A:	In	std_logic_vector(NBIT-1 downto 0);
		B:	In	std_logic_vector(NBIT-1 downto 0);
		S:	Out	std_logic_vector(NBIT-1 downto 0));
end ADD_NO_CARRY; 

architecture BEHAVIORAL of ADD_NO_CARRY is
begin
  S <= A + B;
end BEHAVIORAL;

configuration CFG_ADD_NO_CARRY of ADD_NO_CARRY is
  for BEHAVIORAL 
  end for;
end CFG_ADD_NO_CARRY;
