
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ACC_NBIT8 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_ACC_NBIT8;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_NBIT8.all;

entity ADD_NO_CARRY_NBIT8_DW01_add_0 is

   port( A, B : in std_logic_vector (7 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (7 downto 0);  CO : out std_logic);

end ADD_NO_CARRY_NBIT8_DW01_add_0;

architecture SYN_rpl of ADD_NO_CARRY_NBIT8_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port,
      carry_2_port, n1, n_1002 : std_logic;

begin
   
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           n_1002, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port, S
                           => SUM(1));
   U1 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n1);
   U2 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_NBIT8.all;

entity MUX21_7 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_7;

architecture SYN_BEHAVIORAL of MUX21_7 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => A, B => B, S => S, Z => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_NBIT8.all;

entity MUX21_6 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_6;

architecture SYN_BEHAVIORAL of MUX21_6 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => A, B => B, S => S, Z => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_NBIT8.all;

entity MUX21_5 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_5;

architecture SYN_BEHAVIORAL of MUX21_5 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => A, B => B, S => S, Z => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_NBIT8.all;

entity MUX21_4 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_4;

architecture SYN_BEHAVIORAL of MUX21_4 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => A, B => B, S => S, Z => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_NBIT8.all;

entity MUX21_3 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_3;

architecture SYN_BEHAVIORAL of MUX21_3 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => A, B => B, S => S, Z => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_NBIT8.all;

entity MUX21_2 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_2;

architecture SYN_BEHAVIORAL of MUX21_2 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => A, B => B, S => S, Z => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_NBIT8.all;

entity MUX21_1 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_1;

architecture SYN_BEHAVIORAL of MUX21_1 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => A, B => B, S => S, Z => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_NBIT8.all;

entity MUX21_0 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_0;

architecture SYN_BEHAVIORAL of MUX21_0 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => A, B => B, S => S, Z => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_NBIT8.all;

entity ADD_NO_CARRY_NBIT8 is

   port( A, B : in std_logic_vector (7 downto 0);  S : out std_logic_vector (7 
         downto 0));

end ADD_NO_CARRY_NBIT8;

architecture SYN_BEHAVIORAL of ADD_NO_CARRY_NBIT8 is

   component ADD_NO_CARRY_NBIT8_DW01_add_0
      port( A, B : in std_logic_vector (7 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (7 downto 0);  CO : out std_logic);
   end component;
   
   signal n1, n_1003 : std_logic;

begin
   
   n1 <= '0';
   add_17 : ADD_NO_CARRY_NBIT8_DW01_add_0 port map( A(7) => A(7), A(6) => A(6),
                           A(5) => A(5), A(4) => A(4), A(3) => A(3), A(2) => 
                           A(2), A(1) => A(1), A(0) => A(0), B(7) => B(7), B(6)
                           => B(6), B(5) => B(5), B(4) => B(4), B(3) => B(3), 
                           B(2) => B(2), B(1) => B(1), B(0) => B(0), CI => n1, 
                           SUM(7) => S(7), SUM(6) => S(6), SUM(5) => S(5), 
                           SUM(4) => S(4), SUM(3) => S(3), SUM(2) => S(2), 
                           SUM(1) => S(1), SUM(0) => S(0), CO => n_1003);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_NBIT8.all;

entity MUX21_GENERIC_NBIT8 is

   port( A, B : in std_logic_vector (7 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (7 downto 0));

end MUX21_GENERIC_NBIT8;

architecture SYN_STRUCTURAL of MUX21_GENERIC_NBIT8 is

   component MUX21_1
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_2
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_3
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_4
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_5
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_6
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_7
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_0
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;

begin
   
   bit_mux_0 : MUX21_0 port map( A => A(0), B => B(0), S => SEL, Y => Y(0));
   bit_mux_1 : MUX21_7 port map( A => A(1), B => B(1), S => SEL, Y => Y(1));
   bit_mux_2 : MUX21_6 port map( A => A(2), B => B(2), S => SEL, Y => Y(2));
   bit_mux_3 : MUX21_5 port map( A => A(3), B => B(3), S => SEL, Y => Y(3));
   bit_mux_4 : MUX21_4 port map( A => A(4), B => B(4), S => SEL, Y => Y(4));
   bit_mux_5 : MUX21_3 port map( A => A(5), B => B(5), S => SEL, Y => Y(5));
   bit_mux_6 : MUX21_2 port map( A => A(6), B => B(6), S => SEL, Y => Y(6));
   bit_mux_7 : MUX21_1 port map( A => A(7), B => B(7), S => SEL, Y => Y(7));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_NBIT8.all;

entity reg_generic_NBIT8 is

   port( d_in : in std_logic_vector (7 downto 0);  d_out : out std_logic_vector
         (7 downto 0);  en_n, rst_n, clk : in std_logic);

end reg_generic_NBIT8;

architecture SYN_ARCH of reg_generic_NBIT8 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
      , n17, n18, n19, n20, n21, n22, n23, n24, n25, n26 : std_logic;

begin
   
   mem_reg_7_inst : DFF_X1 port map( D => n19, CK => clk, Q => d_out(7), QN => 
                           n18);
   mem_reg_6_inst : DFF_X1 port map( D => n20, CK => clk, Q => d_out(6), QN => 
                           n17);
   mem_reg_5_inst : DFF_X1 port map( D => n21, CK => clk, Q => d_out(5), QN => 
                           n16);
   mem_reg_4_inst : DFF_X1 port map( D => n22, CK => clk, Q => d_out(4), QN => 
                           n15);
   mem_reg_3_inst : DFF_X1 port map( D => n23, CK => clk, Q => d_out(3), QN => 
                           n14);
   mem_reg_2_inst : DFF_X1 port map( D => n24, CK => clk, Q => d_out(2), QN => 
                           n13);
   mem_reg_1_inst : DFF_X1 port map( D => n25, CK => clk, Q => d_out(1), QN => 
                           n12);
   mem_reg_0_inst : DFF_X1 port map( D => n26, CK => clk, Q => d_out(0), QN => 
                           n11);
   U2 : OAI22_X1 port map( A1 => n18, A2 => n1, B1 => n2, B2 => n3, ZN => n19);
   U3 : INV_X1 port map( A => d_in(7), ZN => n3);
   U4 : OAI22_X1 port map( A1 => n17, A2 => n1, B1 => n2, B2 => n4, ZN => n20);
   U5 : INV_X1 port map( A => d_in(6), ZN => n4);
   U6 : OAI22_X1 port map( A1 => n16, A2 => n1, B1 => n2, B2 => n5, ZN => n21);
   U7 : INV_X1 port map( A => d_in(5), ZN => n5);
   U8 : OAI22_X1 port map( A1 => n15, A2 => n1, B1 => n2, B2 => n6, ZN => n22);
   U9 : INV_X1 port map( A => d_in(4), ZN => n6);
   U10 : OAI22_X1 port map( A1 => n14, A2 => n1, B1 => n2, B2 => n7, ZN => n23)
                           ;
   U11 : INV_X1 port map( A => d_in(3), ZN => n7);
   U12 : OAI22_X1 port map( A1 => n13, A2 => n1, B1 => n2, B2 => n8, ZN => n24)
                           ;
   U13 : INV_X1 port map( A => d_in(2), ZN => n8);
   U14 : OAI22_X1 port map( A1 => n12, A2 => n1, B1 => n2, B2 => n9, ZN => n25)
                           ;
   U15 : INV_X1 port map( A => d_in(1), ZN => n9);
   U16 : OAI22_X1 port map( A1 => n11, A2 => n1, B1 => n2, B2 => n10, ZN => n26
                           );
   U17 : INV_X1 port map( A => d_in(0), ZN => n10);
   U18 : NAND2_X1 port map( A1 => rst_n, A2 => n1, ZN => n2);
   U19 : NAND2_X1 port map( A1 => rst_n, A2 => en_n, ZN => n1);

end SYN_ARCH;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_NBIT8.all;

entity ACC_NBIT8 is

   port( A, B : in std_logic_vector (7 downto 0);  CLK, RST_n, ACCUMULATE, 
         ACC_EN_n : in std_logic;  Y : out std_logic_vector (7 downto 0));

end ACC_NBIT8;

architecture SYN_structural of ACC_NBIT8 is

   component ADD_NO_CARRY_NBIT8
      port( A, B : in std_logic_vector (7 downto 0);  S : out std_logic_vector 
            (7 downto 0));
   end component;
   
   component MUX21_GENERIC_NBIT8
      port( A, B : in std_logic_vector (7 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (7 downto 0));
   end component;
   
   component reg_generic_NBIT8
      port( d_in : in std_logic_vector (7 downto 0);  d_out : out 
            std_logic_vector (7 downto 0);  en_n, rst_n, clk : in std_logic);
   end component;
   
   signal Y_7_port, Y_6_port, Y_5_port, Y_4_port, Y_3_port, Y_2_port, Y_1_port,
      Y_0_port, out_add_7_port, out_add_6_port, out_add_5_port, out_add_4_port,
      out_add_3_port, out_add_2_port, out_add_1_port, out_add_0_port, 
      add_in_b_7_port, add_in_b_6_port, add_in_b_5_port, add_in_b_4_port, 
      add_in_b_3_port, add_in_b_2_port, add_in_b_1_port, add_in_b_0_port : 
      std_logic;

begin
   Y <= ( Y_7_port, Y_6_port, Y_5_port, Y_4_port, Y_3_port, Y_2_port, Y_1_port,
      Y_0_port );
   
   reg_acc : reg_generic_NBIT8 port map( d_in(7) => out_add_7_port, d_in(6) => 
                           out_add_6_port, d_in(5) => out_add_5_port, d_in(4) 
                           => out_add_4_port, d_in(3) => out_add_3_port, 
                           d_in(2) => out_add_2_port, d_in(1) => out_add_1_port
                           , d_in(0) => out_add_0_port, d_out(7) => Y_7_port, 
                           d_out(6) => Y_6_port, d_out(5) => Y_5_port, d_out(4)
                           => Y_4_port, d_out(3) => Y_3_port, d_out(2) => 
                           Y_2_port, d_out(1) => Y_1_port, d_out(0) => Y_0_port
                           , en_n => ACC_EN_n, rst_n => RST_n, clk => CLK);
   mux_fb : MUX21_GENERIC_NBIT8 port map( A(7) => B(7), A(6) => B(6), A(5) => 
                           B(5), A(4) => B(4), A(3) => B(3), A(2) => B(2), A(1)
                           => B(1), A(0) => B(0), B(7) => Y_7_port, B(6) => 
                           Y_6_port, B(5) => Y_5_port, B(4) => Y_4_port, B(3) 
                           => Y_3_port, B(2) => Y_2_port, B(1) => Y_1_port, 
                           B(0) => Y_0_port, SEL => ACCUMULATE, Y(7) => 
                           add_in_b_7_port, Y(6) => add_in_b_6_port, Y(5) => 
                           add_in_b_5_port, Y(4) => add_in_b_4_port, Y(3) => 
                           add_in_b_3_port, Y(2) => add_in_b_2_port, Y(1) => 
                           add_in_b_1_port, Y(0) => add_in_b_0_port);
   adder : ADD_NO_CARRY_NBIT8 port map( A(7) => A(7), A(6) => A(6), A(5) => 
                           A(5), A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1)
                           => A(1), A(0) => A(0), B(7) => add_in_b_7_port, B(6)
                           => add_in_b_6_port, B(5) => add_in_b_5_port, B(4) =>
                           add_in_b_4_port, B(3) => add_in_b_3_port, B(2) => 
                           add_in_b_2_port, B(1) => add_in_b_1_port, B(0) => 
                           add_in_b_0_port, S(7) => out_add_7_port, S(6) => 
                           out_add_6_port, S(5) => out_add_5_port, S(4) => 
                           out_add_4_port, S(3) => out_add_3_port, S(2) => 
                           out_add_2_port, S(1) => out_add_1_port, S(0) => 
                           out_add_0_port);

end SYN_structural;
