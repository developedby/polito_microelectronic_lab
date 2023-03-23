-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.constants.all;
-------------------------------------------------------------------------------

entity tb_acc is

end tb_acc;

-------------------------------------------------------------------------------

architecture TEST of tb_acc is
  constant NBIT : integer := 64;
  
  component ACC
    generic (NBIT: integer);
    port (
      A          : in  std_logic_vector(NBIT - 1 downto 0);
      B          : in  std_logic_vector(NBIT - 1 downto 0);
      CLK        : in  std_logic;
      RST_n      : in  std_logic;
      ACCUMULATE : in  std_logic;
      ACC_EN_n   : in  std_logic;  -- optional use of the enable
      Y          : out std_logic_vector(NBIT - 1 downto 0));
  end component;

  signal A_i          : std_logic_vector(NBIT - 1 downto 0);
  signal B_i          : std_logic_vector(NBIT - 1 downto 0);
  signal CLK_i        : std_logic :='0' ;
  signal RST_n_i      : std_logic;
  signal ACCUMULATE_i : std_logic;
  signal ACC_EN_n_i   : std_logic; -- optional
  signal Y_s          : std_logic_vector(NBIT - 1 downto 0);
  signal Y_b          : std_logic_vector(NBIT - 1 downto 0);

begin  -- TEST

  DUT_STR: ACC
    generic map (NBIT => NBIT)
    port map (
        A          => A_i,
        B          => B_i,
        CLK        => CLK_i,
        RST_n      => RST_n_i,
        ACCUMULATE => ACCUMULATE_i,
        ACC_EN_n   => ACC_EN_n_i, -- optional
        Y          => Y_s);

  DUT_BEH: ACC
    generic map (NBIT => NBIT)
    port map (
        A          => A_i,
        B          => B_i,
        CLK        => CLK_i,
        RST_n      => RST_n_i,
        ACCUMULATE => ACCUMULATE_i,
        ACC_EN_n   => ACC_EN_n_i, -- optional
        Y          => Y_b);

  
  p_clock: process (CLK_i)
  begin  -- process p_clock
    CLK_i <= not(CLK_i) after 6 ns;
  end process p_clock;

  test: process
  begin  -- process test
  
  ACC_EN_n_i <= '0';

  A_i <= (others => '0');
  B_i <= (others => '0');
  A_i(0) <= '1';
  B_i(1) <= '1';
  RST_n_i      <= '0';
  ---- ACC_EN_n_i   <= '0';  -- optional
  ACCUMULATE_i <= '1';                  -- seleziona ingresso FEEDBACK del mux

  wait for 12 ns;

  A_i <= (others => '0');
  B_i <= (others => '0');
  A_i(0) <= '1';
  B_i(1) <= '1';

  RST_n_i      <= '1';
  ---- ACC_EN_n_i   <= '0';   -- optional
  ACCUMULATE_i <= '1';                  -- seleziona ingresso FEEDBACK del mux

  wait for 7 ns;

  A_i <= (others => '0');
  B_i <= (others => '0');
  A_i(0) <= '1';
  B_i(1) <= '1';
  RST_n_i      <= '1';
  ---- ACC_EN_n_i   <= '0';   -- optional
  ACCUMULATE_i <= '0';                  -- seleziona ingresso B del mux

  wait for 12 ns;

  A_i <= (others => '0');
  B_i <= (others => '0');
  A_i(4) <= '1';
  B_i(1) <= '1';
  RST_n_i      <= '1';
  -- ACC_EN_n_i   <= '0';
  ACCUMULATE_i <= '1';                  -- seleziona ingresso FEEDBACK del mux

  wait for 19 ns;

  A_i <= (others => '0');
  B_i <= (others => '0');
  A_i(4) <= '1';
  B_i(1) <= '1';
  RST_n_i      <= '1';
  ---- ACC_EN_n_i   <= '1';    --- optional
  ACCUMULATE_i <= '1';                  -- seleziona ingresso FEEDBACK del mux

  wait for 20 ns;

  A_i <= (others => '0');
  B_i <= (others => '0');
  A_i(4) <= '1';
  B_i(1) <= '1';
  RST_n_i      <= '1';
  --- ACC_EN_n_i   <= '0'; -- optional
  ACCUMULATE_i <= '1';

  wait for 5 ns;

  A_i <= (others => '0');
  B_i <= (others => '0');
  A_i(4) <= '1';
  B_i(8) <= '1';
  RST_n_i      <= '1';
  --- ACC_EN_n_i   <= '0';  -- optional
  ACCUMULATE_i <= '0';

  wait for 10 ns;

  ACCUMULATE_i <= '1';
  ACC_EN_n_i <= '1';

  wait ;
    
  end process test;

end TEST;

-------------------------------------------------------------------------------


configuration CFG_TESTACC of tb_acc is
  for TEST
      for DUT_BEH : ACC
        use configuration WORK.CFG_ACC_BEHAVIORAL;
      end for;
      for DUT_STR : ACC
        use configuration WORK.CFG_ACC_STRUCTURAL;
      end for;
  end for;
end CFG_TESTACC;
