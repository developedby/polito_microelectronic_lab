library ieee; 
use ieee.std_logic_1164.all; 
use WORK.constants.all;

-- The carry generator based on a sparse PG network
entity carry_generator is
  generic (
    NBIT_PER_BLOCK: natural := NumBitBlock; -- >= 2
    NBIT : natural := NumBitTotal); -- >= 2
  port (
    A : in  std_logic_vector(NBIT-1 downto 0);
    B : in  std_logic_vector(NBIT-1 downto 0);
    Ci: in  std_logic;
    Co: out std_logic_vector((NBIT/NBIT_PER_BLOCK) downto 0));
end entity;

architecture structural of carry_generator is
  component pstlaa is
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
  end component;
  
  constant NBLOCKS : natural := NBIT/NBIT_PER_BLOCK;
  signal P, G: std_logic_vector(NBIT-1 downto 0);
begin
  P <= A xor B;
  G(NBIT-1 downto 1) <= A(NBIT-1 downto 1) and B(NBIT-1 downto 1);
  G(0) <= (A(0) and B(0)) or ((A(0) xor B(0)) and Ci); -- Add carry in to the rightmost g bit

  carry_logic: pstlaa
  generic map (NBIT_PER_BLOCK => NBIT_PER_BLOCK, NBIT => NBIT)
  port map (Pin => P, Gin => G, Gout => Co(NBLOCKS downto 1));

  Co(0) <= Ci;

end architecture;
