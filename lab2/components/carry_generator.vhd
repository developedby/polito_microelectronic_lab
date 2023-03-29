library ieee; 
use ieee.std_logic_1164.all; 
use WORK.constants.all;

entity carry_generator is
  generic (
    RADIX: natural := NumBitBlock;
    NBIT : natural := NumBitTotal);
  port (
    A : in  std_logic_vector(NBIT-1 downto 0);
    B : in  std_logic_vector(NBIT-1 downto 0);
    Ci: in std_logic;
    Co: out std_logic_vector((NBIT/RADIX)-1 downto 0));
end entity;

architecture structural of carry_generator is
  component pstlaa_g is
    generic (
      RADIX: natural := NumBitBlock;
      NBIT : natural := NumBitTotal);
    port (
      Pin : in  std_logic_vector(NBIT-1 downto 0);
      Gin : in  std_logic_vector(NBIT-1 downto 0);
      Gout: out std_logic_vector((NBIT/RADIX)-1 downto 0));
  end component;

  signal P, G: std_logic_vector(NBIT downto 0);
begin
  P <= A xor B;
  G <= A and B;
  G(0) <= (A(0) and B(0)) or ((A(0) xor B(0)) and Ci); -- Add carry in to the rightmost g bit

  carry_logic: pstlaa_g
  generic map (RADIX => RADIX, NBIT => NBIT)
  port map (Pin => P, Gin => G, Gout => Co);

end architecture;