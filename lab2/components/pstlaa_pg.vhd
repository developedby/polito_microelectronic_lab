library ieee; 
use ieee.std_logic_1164.all; 
use WORK.constants.all;

-- parametric sparse tree look-ahead adder
-- PG-only subtree
entity pstlaa_pg is
  generic (
    NBIT_PER_BLOCK: natural := NumBitBlock;
    NBIT : natural := NumBitTotal);
  port (
    Pin : in  std_logic_vector(NBIT-1 downto 0);
    Gin : in  std_logic_vector(NBIT-1 downto 0);
    Pout: out std_logic_vector((NBIT/NBIT_PER_BLOCK)-1 downto 0);
    Gout: out std_logic_vector((NBIT/NBIT_PER_BLOCK)-1 downto 0));
end entity;

-- Recursive structural definition of the carry logic
architecture structural of pstlaa_pg is
  component pstlaa_pg is
    generic (
      NBIT_PER_BLOCK: natural := NumBitBlock;
      NBIT : natural := NumBitTotal);
    port (
      Pin : in  std_logic_vector(NBIT-1 downto 0);
      Gin : in  std_logic_vector(NBIT-1 downto 0);
      Pout: out std_logic_vector((NBIT/NBIT_PER_BLOCK)-1 downto 0);
      Gout: out std_logic_vector((NBIT/NBIT_PER_BLOCK)-1 downto 0));
  end component;
  
  component pstlaa_pg_no_out is
    generic (
      NBIT_PER_BLOCK: natural := NumBitBlock;
      NBIT : natural := NumBitTotal);
    port (
      Pin : in  std_logic_vector(NBIT-1 downto 0);
      Gin : in  std_logic_vector(NBIT-1 downto 0);
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

  signal Pout_left, Pout_right : std_logic_vector(((NBIT/NBIT_PER_BLOCK)/2)-1 downto 0);
  signal Gout_left, Gout_right : std_logic_vector(((NBIT/NBIT_PER_BLOCK)/2)-1 downto 0);
begin
  stop_condition: if NBIT = NBIT_PER_BLOCK generate
    -- From this point inwards, each subtree only has 1 output,
    -- since the others would have an index not multiple of the NBIT_PER_BLOCK
    single_output_pstlaa: pstlaa_pg_no_out
    generic map (NBIT_PER_BLOCK => NBIT_PER_BLOCK, NBIT => NBIT)
    port map (
      Pin => Pin,
      Gin => Gin,
      Pout => Pout_left(0),
      Gout => Gout_left(0)
    );
  else generate
    -- Separate sub instances between left and right
    -- For the PG subtree the two subsubtrees are also PG-blocks only.
    left_pstlaa: pstlaa_pg
    generic map (NBIT_PER_BLOCK => NBIT_PER_BLOCK, NBIT => NBIT/2)
    port map (
      Pin => Pin(NBIT-1 downto NBIT/2),
      Gin => Gin(NBIT-1 downto NBIT/2),
      Pout => Pout_left,
      Gout => Gout_left
    );

    right_pstlaa: pstlaa_pg
    generic map (NBIT_PER_BLOCK => NBIT_PER_BLOCK, NBIT => NBIT/2)
    port map (
      Pin  => Pin((NBIT/2)-1 downto 0),
      Gin  => Gin((NBIT/2)-1 downto 0),
      Pout => Pout_right,
      Gout => Gout_right
    );

    -- The two subtrees are joined by some PG blocks on the left side
    join_blocks: for I in ((NBIT/NBIT_PER_BLOCK)/2)-1 downto 0 generate
      block_i: pg_block
      port map (
        Gik => Gout_left(I), -- 1 input coming from the left subtree
        Pik => Pout_left(I),
        Gkj => Gout_right(((NBIT/NBIT_PER_BLOCK)/2)-1), -- 1 input coming form last output of right subtree
        Pkj => Pout_right(((NBIT/NBIT_PER_BLOCK)/2)-1),
        Gij => Gout(I + (NBIT/NBIT_PER_BLOCK)/2),
        Pij => Pout(I + (NBIT/NBIT_PER_BLOCK)/2)
      );

    -- The outputs of the right tree go through directly without extra blocks
    Gout(((NBIT/NBIT_PER_BLOCK)/2)-1 downto 0) <= Gout_right;
    Pout(((NBIT/NBIT_PER_BLOCK)/2)-1 downto 0) <= Pout_right;
    end generate join_blocks;
  end generate stop_condition;
end architecture;