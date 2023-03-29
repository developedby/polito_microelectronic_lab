library ieee; 
use ieee.std_logic_1164.all; 
use WORK.constants.all;

-- parametric sparse tree look-ahead adder
-- PG-only subtree
entity pstlaa_g is
  generic (
    RADIX: natural := NumBitBlock;
    NBIT : natural := NumBitTotal);
  port (
    Pin : in  std_logic_vector(NBIT-1 downto 0);
    Gin : in  std_logic_vector(NBIT-1 downto 0);
    Gout: out std_logic_vector((NBIT/RADIX)-1 downto 0));
end entity;

-- Recursive structural definition of the carry logic
architecture structural of pstlaa_g is
  component pstlaa_g is
    generic (
      RADIX: natural := NumBitBlock;
      NBIT : natural := NumBitTotal);
    port (
      Pin : in  std_logic_vector(NBIT-1 downto 0);
      Gin : in  std_logic_vector(NBIT-1 downto 0);
      Gout: out std_logic_vector((NBIT/RADIX)-1 downto 0));
  end component;

  component pstlaa_pg is
    generic (
      RADIX: natural := NumBitBlock;
      NBIT : natural := NumBitTotal);
    port (
      Pin : in  std_logic_vector(NBIT-1 downto 0);
      Gin : in  std_logic_vector(NBIT-1 downto 0);
      Pout: out std_logic_vector((NBIT/RADIX)-1 downto 0);
      Gout: out std_logic_vector((NBIT/RADIX)-1 downto 0));
  end component;
  
  component pstlaa_g_no_out is
    generic (
      RADIX: natural := NumBitBlock;
      NBIT : natural := NumBitTotal);
    port (
      Pin : in  std_logic_vector(NBIT-1 downto 0);
      Gin : in  std_logic_vector(NBIT-1 downto 0);
      Gout: out std_logic);
  end component;

  component pstlaa_pg_no_out is
    generic (
      RADIX: natural := NumBitBlock;
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

  component g_block is
    port (
      Gik : in  std_logic;
      Pik : in  std_logic;
      Gkj : in  std_logic;
      Gij : out std_logic);
  end component;

  signal Pout_left : std_logic_vector(((NBIT/RADIX)/2)-1 downto 0);
  signal Gout_left, Gout_right : std_logic_vector(((NBIT/RADIX)/2)-1 downto 0);
begin
  stop_condition: if NBIT = RADIX generate
    -- From this point inwards, each subtree only has 1 output,
    -- since the others would have an index not multiple of the radix
    single_output_pstlaa: pstlaa_g_no_out
    generic map (RADIX => RADIX, NBIT => NBIT)
    port map (
      Pin => Pin,
      Gin => Gin,
      Gout => Gout_left(0)
    );
  else generate
    -- Separate sub instances between left and right
    -- For the PG subtree the two subsubtrees are also PG-blocks only.
    left_pstlaa: pstlaa_pg
    generic map (RADIX => RADIX, NBIT => NBIT/2)
    port map (
      Pin => Pin(NBIT-1 downto NBIT/2),
      Gin => Gin(NBIT-1 downto NBIT/2),
      Pout => Pout_left,
      Gout => Gout_left
    );

    right_pstlaa: pstlaa_g
    generic map (RADIX => RADIX, NBIT => NBIT/2)
    port map (
      Pin  => Pin((NBIT/2)-1 downto 0),
      Gin  => Gin((NBIT/2)-1 downto 0),
      Gout => Gout_right
    );

    -- The two subtrees are joined by some G blocks on the left side
    join_blocks: for I in ((NBIT/RADIX)/2)-1 downto 0 generate
      block_i: g_block
      port map (
        Gik => Gout_left(I), -- 1 input coming from the left subtree
        Pik => Pout_left(I),
        Gkj => Gout_right(((NBIT/RADIX)/2)-1), -- 1 input coming form last output of right subtree
        Gij => Gout(I + (NBIT/RADIX)/2)
      );

    -- The outputs of the right tree go through directly without extra blocks
    Gout(((NBIT/RADIX)/2)-1 downto 0) <= Gout_right;
    end generate join_blocks;
  end generate stop_condition;
end architecture;