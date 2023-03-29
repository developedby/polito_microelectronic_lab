library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use WORK.constants.all;

-- Ripple Carry
entity RCA is 
	generic (NBIT: integer := numBit);
	Port (
    A:	In	std_logic_vector(NBIT-1 downto 0);
		B:	In	std_logic_vector(NBIT-1 downto 0);
		Ci:	In	std_logic;
		S:	Out	std_logic_vector(NBIT-1 downto 0);
		Co:	Out	std_logic);
end entity; 

architecture STRUCTURAL of RCA is

  signal STMP : std_logic_vector(NBIT-1 downto 0);
  signal CTMP : std_logic_vector(NBIT downto 0);

  component FA 
  Port (
    A:	In	std_logic;
	  B:	In	std_logic;
	  Ci:	In	std_logic;
	  S:	Out	std_logic;
	  Co:	Out	std_logic);
  end component; 

begin

  CTMP(0) <= Ci;
  S <= STMP;
  Co <= CTMP(NBIT);
  
  ADDER1: for I in 1 to NBIT generate
    FAI : FA 
	  Port Map (A(I-1), B(I-1), CTMP(I-1), STMP(I-1), CTMP(I)); 
  end generate;

end STRUCTURAL;


architecture BEHAVIORAL of RCA is
  signal result: std_logic_vector(NBIT downto 0);
  signal ax: std_logic_vector(NBIT downto 0);
  signal bx: std_logic_vector(NBIT downto 0);
  signal cix: std_logic_vector(NBIT downto 0);
begin
  ax <= "0" & A;
  bx <= "0" & B;
  cix(0) <= Ci;
  cix(NBIT downto 1) <= (others => '0');
  result <= (ax + bx + cix);
  S <= result(NBIT-1 downto 0);
  Co <= result(NBIT);
  
end BEHAVIORAL;

configuration CFG_RCA_STRUCTURAL of RCA is
  for STRUCTURAL 
    for ADDER1
      for all : FA
        use configuration WORK.CFG_FA_BEHAVIORAL;
      end for;
    end for;
  end for;
end CFG_RCA_STRUCTURAL;

configuration CFG_RCA_BEHAVIORAL of RCA is
  for BEHAVIORAL 
  end for;
end CFG_RCA_BEHAVIORAL;
