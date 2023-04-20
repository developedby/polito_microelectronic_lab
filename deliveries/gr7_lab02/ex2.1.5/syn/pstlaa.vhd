library ieee; 
use ieee.std_logic_1164.all; 
use WORK.constants.all;

-- parametric sparse tree look-ahead adder
-- Complete design in a single entity
entity pstlaa is
  generic (
    -- PG signals are calculated in blocks of this length
    -- Output length is NBIT/NBIT_PER_BLOCK,
    -- and subtrees smaller than this are handled differently.
    NBIT_PER_BLOCK: natural;
    NBIT : natural);
  port (
    Pin : in  std_logic_vector(NBIT downto 1);
    Gin : in  std_logic_vector(NBIT downto 1);
    Gout: out std_logic_vector(NBIT / NBIT_PER_BLOCK downto 1));
end entity;

architecture structural of pstlaa is
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

  constant NLAYERS : natural := i_log2ceil(NBIT);
  constant NLAYERS_NO_OUT : natural := i_log2ceil(NBIT_PER_BLOCK);

  -- This creates many unused signals but i don't know how to create a variable
  -- number of signals, each with different length.
  type internal is array (0 to NLAYERS) of std_logic_vector(NBIT downto 1);
  signal P, G: internal;
begin
  
  -- The design is based on layers of G/PG blocks, there are log2(NBIT) layers in total,
  -- with two kinds of layers.
  --
  -- The first kind are the layers where the input is divided by less equal than NBIT_PER_BLOCK.
  -- The last layer of G/PG blocks of this kind contributes one output,
  -- the previous ones contribute 0.
  -- They have an exponentially decreasing amout of blocks, equally spaced,
  -- starting with NBIT/2.
  -- They are all PG blocks except the last one.
  --
  -- The second kind are the one where the input is divided by more than NBIT_PER_BLOCK.
  -- For these layers, each contributes an exponentially increasing amout of outputs.
  -- All the layers of this kind have the same amount of blocks, NBIT/NBIT_PER_BLOCK,
  -- and they are placed in groups of increasing size.
  -- They are all PG blocks except for the last group.

  -- The very first layer takes the input, the others take internal signals
  P(0) <= Pin;
  G(0) <= Gin;

  layers: for I in 1 to NLAYERS generate
    layer: for J in 1 to NBIT generate
      -- Groups encompass an exponentially increasing number of inputs based on their layer.
      constant GROUP_LEN  : natural := 2 ** I;
      -- Until the first output, groups only have 1 block, then they incrase exponentially with depth.
      -- Blocks are only placed in the upper half of the group, the lower half just connects to the layer above.
      constant GROUP_NBLK : natural := i_max(1, (GROUP_LEN/2) / NBIT_PER_BLOCK);
      -- The group starts at the closest lower multiple of GROUP_LEN (starting at 1)
      constant GROUP_START: natural := (((J-1) / GROUP_LEN) * GROUP_LEN) + 1;
      -- Column in layer is connected with above if in same column as output or no output but must propagate next layer
      constant IS_CONNECTED : boolean := (J mod i_min(GROUP_LEN, NBIT_PER_BLOCK)) = 0; 
    begin
      connected: if IS_CONNECTED generate
        -- We say that the lower half of the group is empty and the upper has blocks
        has_blk: if J >= (GROUP_START + (GROUP_LEN/2)) generate
          -- The lowest group is filled with G block
          in_g_group: if J <= GROUP_LEN generate
            g_inst: g_block
            port map(
              Gik => G(I-1)(J),
              Pik => P(I-1)(J),
              Gkj => G(I-1)(GROUP_START + (GROUP_LEN/2) - 1), -- Last block of right side of layer above
              Gij => G(I)(J));
          end generate in_g_group;

          -- The rest has PG blocks
          in_pg_group: if J > GROUP_LEN generate
            pg_inst: pg_block
            port map (
              Gik => G(I-1)(J),
              Pik => P(I-1)(J),
              Gkj => G(I-1)(GROUP_START + (GROUP_LEN/2) - 1),
              Pkj => P(I-1)(GROUP_START + (GROUP_LEN/2) - 1),
              Gij => G(I)(J),
              Pij => P(I)(J));
          end generate in_pg_group;
        end generate has_blk;

        -- For the places without blocks, we just connect with the layer above
        has_conn: if J < (GROUP_START + (GROUP_LEN/2)) generate
          P(I)(J) <= P(I-1)(J);
          G(I)(J) <= G(I-1)(J);
        end generate has_conn;
      end generate connected;
    end generate layer;
  end generate layers;

  -- Outputs
  outs: for I in 1 to NBIT / NBIT_PER_BLOCK generate
    Gout(I) <= G(i_log2ceil(I * NBIT_PER_BLOCK))(I * NBIT_PER_BLOCK);
  end generate outs;

end architecture;
