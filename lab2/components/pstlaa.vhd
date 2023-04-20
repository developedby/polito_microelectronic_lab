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
  -- with two kinds of layers, named "no_out" and "out".
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
    constant NBLKS_NO_OUT: natural := NBIT/(2**I);
    constant NBLKS_OUT: natural := NBIT/(2*NBIT_PER_BLOCK);
    constant NBLKS: natural := if_fn(I <= NLAYERS_NO_OUT, NBLKS_NO_OUT, NBLKS_OUT);
  begin
    layer: for J in 1 to NBIT generate
      connected: if (J mod 2) = 0 generate
        constant GROUP_LEN  : natural := 2 ** I;
        constant GROUP_IDX  : natural := (J-1) / GROUP_LEN;
        constant GROUP_START: natural := (GROUP_IDX * GROUP_LEN) + 1;
        constant GROUP_END  : natural := (GROUP_IDX+1) * GROUP_LEN;
      begin
        -- Instantiate the blocks for "no out" layers
        no_out_layer: if I <= NLAYERS_NO_OUT generate
          -- No out layers have exponentially less blks, starting with half the inputs
          no_out_blk: if (J mod (2**I)) = 0 generate
            -- First block is a G others are a PG
            no_out_g_blk: if J <= (2**I) generate
              no_out_g: g_block
              port map(
                Gik => G(I-1)(J),
                Pik => P(I-1)(J),
                Gkj => G(I-1)(J-(2**(I-1))),
                Gij => G(I)(J));
            end generate no_out_g_blk;
            no_out_pg_blk: if J > (2**I) generate
              no_out_pg: pg_block
              port map (
                Gik => G(I-1)(J),
                Pik => P(I-1)(J),
                Gkj => G(I-1)(J-(2**(I-1))),
                Pkj => P(I-1)(J-(2**(I-1))),
                Gij => G(I)(J),
                Pij => P(I)(J));
            end generate no_out_pg_blk;
          end generate no_out_blk;
          -- For the places without blocks, we just connect with the layer above
          no_out_connection: if (J mod (2**I)) /= 0 generate
            P(I)(J) <= P(I-1)(J);
            G(I)(J) <= G(I-1)(J);
          end generate no_out_connection;
        end generate no_out_layer;

          -- Instantiate blocks for "out" layers
        out_layer: if I > NLAYERS_NO_OUT generate

          -- We say that the lower half of the group is empty and the upper has blocks
          out_blk: if J >= (GROUP_START + (GROUP_LEN/2)) generate
            -- The lowest group is filled with G block
            out_g_group: if GROUP_IDX = 0 generate
              out_g: g_block
              port map(
                Gik => G(I-1)(J),
                Pik => P(I-1)(J),
                Gkj => G(I-1)(GROUP_START + (GROUP_LEN/2) - 1), -- Last block of right side of layer above
                Gij => G(I)(J));
            end generate out_g_group;

            -- The rest has PG blocks
            out_pg_group: if GROUP_IDX > 0 generate
              out_pg: pg_block
              port map (
                Gik => G(I-1)(J),
                Pik => P(I-1)(J),
                Gkj => G(I-1)(GROUP_START + (GROUP_LEN/2) - 1),
                Pkj => P(I-1)(GROUP_START + (GROUP_LEN/2) - 1),
                Gij => G(I)(J),
                Pij => P(I)(J));
            end generate out_pg_group;
          end generate out_blk;
          -- For the places without blocks, we just connect with the layer above
          out_connection: if J < (GROUP_START + (GROUP_LEN/2)) generate
            P(I)(J) <= P(I-1)(J);
            G(I)(J) <= G(I-1)(J);
          end generate out_connection;
        end generate out_layer;
      end generate connected;
    end generate layer;
  end generate layers;

  -- Outputs
  outs: for I in 1 to NBIT / NBIT_PER_BLOCK generate
    Gout(I) <= G(i_log2ceil(I) + NLAYERS_NO_OUT)(I * NBIT_PER_BLOCK);
  end generate outs;

end architecture;
