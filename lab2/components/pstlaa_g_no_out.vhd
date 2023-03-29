library ieee; 
use ieee.std_logic_1164.all; 
use WORK.constants.all;

-- parametric sparse tree look-ahead adder
-- G/PG subtree
-- For when NBIT < RADIX,
-- the outputs would not have index multiple of RADIX,
-- so we only pass the MSB forward to the parent subtree.
entity pstlaa_g_no_out is
  generic (
    RADIX: natural := NumBitBlock;
    NBIT : natural := NumBitTotal);
  port (
    Pin : in  std_logic_vector(NBIT-1 downto 0);
    Gin : in  std_logic_vector(NBIT-1 downto 0);
    Gout: out std_logic);
end entity;

-- Recursive structural definition of the carry logic
architecture structural of pstlaa_g_no_out is
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

  signal Gout_left, Pout_left, Gout_right : std_logic;
begin
  stop_condition: if NBIT = 2 generate
    -- Stop condition, single PG block connected to the input PG network
    single_g: g_block
    port map (Gik => Gin(1), Pik => Pin(1), Gkj => Gin(0), Gij => Gout);
  else generate
    -- Separate sub instances between left and right
    -- For the PG subtree the two subsubtrees are also PG-blocks only.
    left_pstlaa: pstlaa_pg_no_out
    generic map (RADIX => RADIX, NBIT => NBIT/2)
    port map (
      Pin => Pin(NBIT-1 downto NBIT/2),
      Gin => Gin(NBIT-1 downto NBIT/2),
      Pout => Pout_left,
      Gout => Gout_left
    );

    right_pstlaa: pstlaa_g_no_out
    generic map (RADIX => RADIX, NBIT => NBIT/2)
    port map (
      Pin  => Pin((NBIT/2)-1 downto 0),
      Gin  => Gin((NBIT/2)-1 downto 0),
      Gout => Gout_right
    );

    -- For these subtrees with radix > nbit,
    -- we only have one connecting PG block which is the output for the parent subtree
    single_g: g_block
    port map (Gik => Gout_left, Pik => Pout_left, Gkj => Gout_right, Gij => Gout);
  
  end generate;
    
end architecture;