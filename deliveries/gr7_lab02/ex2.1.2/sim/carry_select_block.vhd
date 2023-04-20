library ieee; 
use ieee.std_logic_1164.all; 
use WORK.constants.all;

entity carry_select_block is
  generic (NBIT: integer := numBit);
  port (
    A  : in  std_logic_vector(NBIT-1 downto 0);
    B  : in  std_logic_vector(NBIT-1 downto 0);
    Cin: in  std_logic;
    S  : out std_logic_vector(NBIT-1 downto 0));
end entity;

architecture structural of carry_select_block is
  component RCA is 
    generic (NBIT: integer := numBit);
    Port (
      A:	In	std_logic_vector(NBIT-1 downto 0);
      B:	In	std_logic_vector(NBIT-1 downto 0);
      Ci:	In	std_logic;
      S:	Out	std_logic_vector(NBIT-1 downto 0);
      Co:	Out	std_logic);
  end component; 

  signal S0 , S1 : std_logic_vector(NBIT-1 downto 0);
begin
  -- Structural Carry Select Block is two RCAs, one with Ci on '0' the other on '1'.
  -- This way they generate both possible sums and the CSB Cin selects the correct one.
  -- So, we only need to propagate the Cin on the CSB through a mux at the end,
  -- Making it faster to chain multiple of these blocks.

  -- RCA adding with Ci=0
  RCA0: RCA
  generic map (NBIT => NBIT)
  port map (A => A, B => B, Ci => '0', S => S0, Co => open);

  -- RCA adding with Ci=1
  RCA1: RCA
  generic map (NBIT => NBIT)
  port map (A => A, B => B, Ci => '1', S => S1, Co => open);

  -- Select between the two RCAs using the Cin signal as selector
  S <= S0 when Cin = '0' else S1;

end structural;
