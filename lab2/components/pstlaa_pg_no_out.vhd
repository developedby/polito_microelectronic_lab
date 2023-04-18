library ieee; 
use ieee.std_logic_1164.all; 
use WORK.constants.all;

-- parametric sparse tree look-ahead adder
-- PG-only subtree
-- For when NBIT_IN < NBIT_PER_BLOCK,
-- the outputs would not have index multiple of NBIT_PER_BLOCK,
-- so we only pass the MSB forward to the parent subtree.
entity pstlaa_pg_no_out is
  generic (
    NBIT_PER_BLOCK: natural := NumBitBlock;
    NBIT_IN : natural := NumBitTotal);
  port (
    Pin : in  std_logic_vector(NBIT_IN-1 downto 0);
    Gin : in  std_logic_vector(NBIT_IN-1 downto 0);
    Pout: out std_logic;
    Gout: out std_logic);
end entity;

-- Recursive structural definition of the carry logic
architecture structural of pstlaa_pg_no_out is
  component pstlaa_pg_no_out is
    generic (
      NBIT_PER_BLOCK: natural := NumBitBlock;
      NBIT_IN : natural := NumBitTotal);
    port (
      Pin : in  std_logic_vector(NBIT_IN-1 downto 0);
      Gin : in  std_logic_vector(NBIT_IN-1 downto 0);
      Pout: out std_logic;
      Gout: out std_logic);
  end component;
  
  component pg_block is
    port (
      Gik : in  std_logic;
      Pik : in  std_logic;
      Gkj : in  std_logic;
      Pkj : in  std_logic;
      Gij : out std_logic;
      Pij : out std_logic);
  end component;

  signal Pout_left, Pout_right, Gout_left, Gout_right : std_logic;
  signal Pin_left, Pin_right, Gin_left, Gin_right: std_logic_vector(NBIT_IN/2-1 downto 0);
begin
  stop_condition:
  if NBIT_IN = 2 generate
    -- Stop condition, single PG block connected to the input PG network
    single_pg: pg_block
    port map (Gik => Gin(1), Pik => Pin(1), Gkj => Gin(0), Pkj => Pin(0), Gij => Gout, Pij => Pout);
  else generate
    Pin_left <= Pin(NBIT_IN-1 downto NBIT_IN/2);
    Gin_left <= Gin(NBIT_IN-1 downto NBIT_IN/2);
    Pin_right <= Pin((NBIT_IN/2)-1 downto 0);
    Gin_right <= Gin((NBIT_IN/2)-1 downto 0);

    -- Separate sub instances between left and right
    -- For the PG subtree the two subsubtrees are also PG-blocks only.
    left_pstlaa: pstlaa_pg_no_out
    generic map (NBIT_PER_BLOCK => NBIT_PER_BLOCK, NBIT_IN => NBIT_IN/2)
    port map (
      Pin => Pin_left,
      Gin => Gin_left,
      Pout => Pout_left,
      Gout => Gout_left
    );

    right_pstlaa: pstlaa_pg_no_out
    generic map (NBIT_PER_BLOCK => NBIT_PER_BLOCK, NBIT_IN => NBIT_IN/2)
    port map (
      Pin  => Pin_right,
      Gin  => Gin_right,
      Pout => Pout_right,
      Gout => Gout_right
    );

    -- For these subtrees with NBIT_PER_BLOCK > nbit,
    -- we only have one connecting PG block which is the output for the parent subtree
    single_pg: pg_block
    port map (Gik => Gout_left, Pik => Pout_left, Gkj => Gout_right, Pkj => Pout_right, Gij => Gout, Pij => Pout);

  end generate stop_condition;

end architecture;