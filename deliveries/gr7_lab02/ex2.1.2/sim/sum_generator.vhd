library ieee; 
use ieee.std_logic_1164.all; 
use WORK.constants.all;

-- Pentium 4 Sum generator
-- Parametrized on radix of each sum block and total number of blocks
entity sum_generator is
  generic (
    NBIT_PER_BLOCK: integer := NumBitBlock;
    NBLOCKS       : integer := NumBitTotal/NumBitBlock);
  port (
    A : in  std_logic_vector((NBIT_PER_BLOCK*NBLOCKS)-1 downto 0);
    B : in  std_logic_vector((NBIT_PER_BLOCK*NBLOCKS)-1 downto 0);
    Ci: in  std_logic_vector(NBLOCKS-1 downto 0);
    S : out std_logic_vector((NBIT_PER_BLOCK*NBLOCKS)-1 downto 0));
end entity;

architecture structural of sum_generator is

  component carry_select_block is
    generic (NBIT: integer := numBit);
    port (
      A  : in  std_logic_vector(NBIT-1 downto 0);
      B  : in  std_logic_vector(NBIT-1 downto 0);
      cin: in  std_logic;
      S  : out std_logic_vector(NBIT-1 downto 0));
  end component;

begin
  -- The sum generator is just NBLOCKS carry-select blocks in parallel,
  -- each using one bit of the input carry, NBIT_PER_BLOCK of A and B,
  -- and generating NBIT_PER_BLOCK of the output sum.
  CSB1: for I in 1 to NBLOCKS generate
    constant CSB_LEFT : natural := (NBIT_PER_BLOCK * I) - 1;
    constant CSB_RIGHT: natural := NBIT_PER_BLOCK * (I - 1);
  begin
    CSB : carry_select_block
    generic map (NBIT => NBIT_PER_BLOCK)
	  Port Map (
      A   => A(CSB_LEFT downto CSB_RIGHT),
      B   => B(CSB_LEFT downto CSB_RIGHT),
      Cin => Ci(I-1),
      S   => S(CSB_LEFT downto CSB_RIGHT)); 
  end generate;

end structural;
