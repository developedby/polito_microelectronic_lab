library ieee; 
use ieee.std_logic_1164.all; 
use WORK.constants.all;

-- parametric sparse tree look-ahead adder
-- Mixed G and PG subtree
entity pstlaa_g is
  generic (
    -- PG signals are calculated in blocks of this length
    -- Output length is NBIT_IN/NBIT_PER_BLOCK,
    -- and subtrees smaller than this are handled differently.
    NBIT_PER_BLOCK: natural := NumBitBlock;
    NBIT_IN : natural := NumBitTotal);
  port (
    Pin : in  std_logic_vector(NBIT_IN-1 downto 0);
    Gin : in  std_logic_vector(NBIT_IN-1 downto 0);
    Gout: out std_logic_vector((NBIT_IN/NBIT_PER_BLOCK)-1 downto 0));
end entity;

-- Recursive structural definition of the carry logic
architecture structural of pstlaa_g is
  component pstlaa_g is
    generic (
      NBIT_PER_BLOCK: natural := NumBitBlock;
      NBIT_IN : natural := NumBitTotal);
    port (
      Pin : in  std_logic_vector(NBIT_IN-1 downto 0);
      Gin : in  std_logic_vector(NBIT_IN-1 downto 0);
      Gout: out std_logic_vector((NBIT_IN/NBIT_PER_BLOCK)-1 downto 0));
  end component;

  component pstlaa_pg is
    generic (
      NBIT_PER_BLOCK: natural := NumBitBlock;
      NBIT_IN : natural := NumBitTotal);
    port (
      Pin : in  std_logic_vector(NBIT_IN-1 downto 0);
      Gin : in  std_logic_vector(NBIT_IN-1 downto 0);
      Pout: out std_logic_vector((NBIT_IN/NBIT_PER_BLOCK)-1 downto 0);
      Gout: out std_logic_vector((NBIT_IN/NBIT_PER_BLOCK)-1 downto 0));
  end component;
  
  component pstlaa_g_no_out is
    generic (
      NBIT_PER_BLOCK: natural := NumBitBlock;
      NBIT_IN : natural := NumBitTotal);
    port (
      Pin : in  std_logic_vector(NBIT_IN-1 downto 0);
      Gin : in  std_logic_vector(NBIT_IN-1 downto 0);
      Gout: out std_logic);
  end component;

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

  component g_block is
    port (
      Gik : in  std_logic;
      Pik : in  std_logic;
      Gkj : in  std_logic;
      Gij : out std_logic);
  end component;

  constant NBIT_OUT : natural := NBIT_IN / NBIT_PER_BLOCK;
  -- The subtrees have half the number of outputs, but at least one
  constant NBIT_OUT_SUBTREE: natural := max(NBIT_OUT/2, 1);

  signal Pin_left, Pin_right, Gin_left, Gin_right: std_logic_vector(NBIT_IN/2-1 downto 0);
  -- When NBIT_IN == NBIT_PER_BLOCK we want this to have width 1, so that's why we use this weird max expression
  signal Pout_left, Gout_left, Gout_right :
    std_logic_vector(NBIT_OUT_SUBTREE-1 downto 0);
begin
  Pin_left <= Pin(NBIT_IN-1 downto NBIT_IN/2);
  Gin_left <= Gin(NBIT_IN-1 downto NBIT_IN/2);
  Pin_right <= Pin((NBIT_IN/2)-1 downto 0);
  Gin_right <= Gin((NBIT_IN/2)-1 downto 0);

  stop_condition: if NBIT_IN = NBIT_PER_BLOCK generate
    -- From this point inwards, each subtree only has 1 output,
    -- since the others would have an index not multiple of the NBIT_PER_BLOCK,
    -- so we switch to the other component with different behaviour.
    single_output_pstlaa: pstlaa_g_no_out
    generic map (NBIT_PER_BLOCK => NBIT_PER_BLOCK, NBIT_IN => NBIT_IN)
    port map (
      Pin => Pin,
      Gin => Gin,
      Gout => Gout(0)
    );
  else generate
    -- Separate sub instances between left and right
    -- Each subtree has half the inputs and produces half the outputs
    -- For the G subtree the one subsubtree is a PG and the other a G.
    left_pstlaa: pstlaa_pg
    generic map (NBIT_PER_BLOCK => NBIT_PER_BLOCK, NBIT_IN => NBIT_IN/2)
    port map (
      Pin => Pin_left,
      Gin => Gin_left,
      Pout => Pout_left,
      Gout => Gout_left
    );

    right_pstlaa: pstlaa_g
    generic map (NBIT_PER_BLOCK => NBIT_PER_BLOCK, NBIT_IN => NBIT_IN/2)
    port map (
      Pin  => Pin_right,
      Gin  => Gin_right,
      Gout => Gout_right
    );

    -- The two subtrees are joined by some G blocks on the left side
    join_blocks: for I in NBIT_OUT_SUBTREE-1 downto 0 generate
      block_i: g_block
      port map (
        Gik => Gout_left(I), -- 1 input coming from the left subtree
        Pik => Pout_left(I),
        Gkj => Gout_right(NBIT_OUT_SUBTREE-1), -- 1 input coming form last output of right subtree
        Gij => Gout(NBIT_OUT_SUBTREE + I) -- Outputs of the left tree go through this G block layer
      );

    -- The outputs of the right tree go through directly without extra blocks
    Gout(NBIT_OUT_SUBTREE-1 downto 0) <= Gout_right;
    end generate join_blocks;
  end generate stop_condition;
end architecture;