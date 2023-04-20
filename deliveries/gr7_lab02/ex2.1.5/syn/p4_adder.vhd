library ieee; 
use ieee.std_logic_1164.all; 
use WORK.constants.all;

entity p4_adder is
  generic (
    NBIT_PER_BLOCK: integer := NumBitBlock;
    NBIT : natural := NumBitTotal);
  port (
    A :		in	std_logic_vector(NBIT-1 downto 0);
    B :		in	std_logic_vector(NBIT-1 downto 0);
    Cin :	in	std_logic;
    S :		out	std_logic_vector(NBIT-1 downto 0);
    Cout :	out	std_logic);
end entity;

architecture structural of p4_adder is
  constant NBLOCKS : natural := NBIT/NBIT_PER_BLOCK;

  component carry_generator is
    generic (
      NBIT_PER_BLOCK: natural := NumBitBlock;
      NBIT : natural := NumBitTotal);
    port (
      A : in  std_logic_vector(NBIT-1 downto 0);
      B : in  std_logic_vector(NBIT-1 downto 0);
      Ci: in std_logic;
      Co: out std_logic_vector(NBLOCKS downto 0));
  end component;

  component sum_generator is
    generic (
      NBIT_PER_BLOCK: integer := NumBitBlock;
      NBLOCKS       : integer := NumBitTotal/NumBitBlock);
    port (
      A : in  std_logic_vector((NBIT_PER_BLOCK*NBLOCKS)-1 downto 0);
      B : in  std_logic_vector((NBIT_PER_BLOCK*NBLOCKS)-1 downto 0);
      Ci: in  std_logic_vector(NBLOCKS-1 downto 0);
      S : out std_logic_vector((NBIT_PER_BLOCK*NBLOCKS)-1 downto 0));
  end component;

  signal C : std_logic_vector(NBLOCKS downto 0);
begin

  carry: carry_generator
  generic map (NBIT_PER_BLOCK => NBIT_PER_BLOCK, NBIT => NBIT)
  port map (A => A, B => B, Ci => Cin, Co => C);
  
  sum: sum_generator
  generic map (NBIT_PER_BLOCK => NBIT_PER_BLOCK, NBLOCKS => NBLOCKS)
  port map (A => A, B => B, Ci => C(NBLOCKS-1 downto 0), S => S);

  Cout <= C(NBLOCKS); -- Carry out on the last bit of the carry generator

end architecture;