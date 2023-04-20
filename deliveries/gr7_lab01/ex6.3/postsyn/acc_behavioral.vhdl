
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ACC_NBIT8_1 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_ACC_NBIT8_1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_NBIT8_1.all;

entity ACC_NBIT8_1_DW01_add_0 is

   port( A, B : in std_logic_vector (7 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (7 downto 0);  CO : out std_logic);

end ACC_NBIT8_1_DW01_add_0;

architecture SYN_rpl of ACC_NBIT8_1_DW01_add_0 is

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

use work.CONV_PACK_ACC_NBIT8_1.all;

entity ACC_NBIT8_1 is

   port( A, B : in std_logic_vector (7 downto 0);  CLK, RST_n, ACCUMULATE, 
         ACC_EN_n : in std_logic;  Y : out std_logic_vector (7 downto 0));

end ACC_NBIT8_1;

architecture SYN_behavioral of ACC_NBIT8_1 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component ACC_NBIT8_1_DW01_add_0
      port( A, B : in std_logic_vector (7 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (7 downto 0);  CO : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Y_7_port, Y_6_port, Y_5_port, Y_4_port, Y_3_port, Y_2_port, Y_1_port,
      Y_0_port, N22, N23, N24, N25, N26, N27, N28, N29, n9, n32, n33, n34, n35,
      n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50
      , n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, 
      n65, n66, n_1003 : std_logic;

begin
   Y <= ( Y_7_port, Y_6_port, Y_5_port, Y_4_port, Y_3_port, Y_2_port, Y_1_port,
      Y_0_port );
   
   n9 <= '0';
   accumulated_reg_0_inst : DFF_X1 port map( D => n47, CK => CLK, Q => Y_0_port
                           , QN => n39);
   accumulated_reg_1_inst : DFF_X1 port map( D => n46, CK => CLK, Q => Y_1_port
                           , QN => n38);
   accumulated_reg_2_inst : DFF_X1 port map( D => n45, CK => CLK, Q => Y_2_port
                           , QN => n37);
   accumulated_reg_3_inst : DFF_X1 port map( D => n44, CK => CLK, Q => Y_3_port
                           , QN => n36);
   accumulated_reg_4_inst : DFF_X1 port map( D => n43, CK => CLK, Q => Y_4_port
                           , QN => n35);
   accumulated_reg_5_inst : DFF_X1 port map( D => n42, CK => CLK, Q => Y_5_port
                           , QN => n34);
   accumulated_reg_6_inst : DFF_X1 port map( D => n41, CK => CLK, Q => Y_6_port
                           , QN => n33);
   accumulated_reg_7_inst : DFF_X1 port map( D => n40, CK => CLK, Q => Y_7_port
                           , QN => n32);
   r62 : ACC_NBIT8_1_DW01_add_0 port map( A(7) => A(7), A(6) => A(6), A(5) => 
                           A(5), A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1)
                           => A(1), A(0) => A(0), B(7) => n48, B(6) => n49, 
                           B(5) => n50, B(4) => n51, B(3) => n52, B(2) => n53, 
                           B(1) => n54, B(0) => n55, CI => n9, SUM(7) => N29, 
                           SUM(6) => N28, SUM(5) => N27, SUM(4) => N26, SUM(3) 
                           => N25, SUM(2) => N24, SUM(1) => N23, SUM(0) => N22,
                           CO => n_1003);
   U39 : MUX2_X1 port map( A => B(0), B => Y_0_port, S => ACCUMULATE, Z => n55)
                           ;
   U40 : MUX2_X1 port map( A => B(1), B => Y_1_port, S => ACCUMULATE, Z => n54)
                           ;
   U41 : MUX2_X1 port map( A => B(2), B => Y_2_port, S => ACCUMULATE, Z => n53)
                           ;
   U42 : MUX2_X1 port map( A => B(3), B => Y_3_port, S => ACCUMULATE, Z => n52)
                           ;
   U43 : MUX2_X1 port map( A => B(4), B => Y_4_port, S => ACCUMULATE, Z => n51)
                           ;
   U44 : MUX2_X1 port map( A => B(5), B => Y_5_port, S => ACCUMULATE, Z => n50)
                           ;
   U45 : MUX2_X1 port map( A => B(6), B => Y_6_port, S => ACCUMULATE, Z => n49)
                           ;
   U46 : MUX2_X1 port map( A => B(7), B => Y_7_port, S => ACCUMULATE, Z => n48)
                           ;
   U47 : OAI22_X1 port map( A1 => n39, A2 => n56, B1 => n57, B2 => n58, ZN => 
                           n47);
   U48 : INV_X1 port map( A => N22, ZN => n58);
   U49 : OAI22_X1 port map( A1 => n38, A2 => n56, B1 => n57, B2 => n59, ZN => 
                           n46);
   U50 : INV_X1 port map( A => N23, ZN => n59);
   U51 : OAI22_X1 port map( A1 => n37, A2 => n56, B1 => n57, B2 => n60, ZN => 
                           n45);
   U52 : INV_X1 port map( A => N24, ZN => n60);
   U53 : OAI22_X1 port map( A1 => n36, A2 => n56, B1 => n57, B2 => n61, ZN => 
                           n44);
   U54 : INV_X1 port map( A => N25, ZN => n61);
   U55 : OAI22_X1 port map( A1 => n35, A2 => n56, B1 => n57, B2 => n62, ZN => 
                           n43);
   U56 : INV_X1 port map( A => N26, ZN => n62);
   U57 : OAI22_X1 port map( A1 => n34, A2 => n56, B1 => n57, B2 => n63, ZN => 
                           n42);
   U58 : INV_X1 port map( A => N27, ZN => n63);
   U59 : OAI22_X1 port map( A1 => n33, A2 => n56, B1 => n57, B2 => n64, ZN => 
                           n41);
   U60 : INV_X1 port map( A => N28, ZN => n64);
   U61 : OAI22_X1 port map( A1 => n32, A2 => n56, B1 => n57, B2 => n65, ZN => 
                           n40);
   U62 : INV_X1 port map( A => N29, ZN => n65);
   U63 : NAND2_X1 port map( A1 => RST_n, A2 => n66, ZN => n57);
   U64 : INV_X1 port map( A => ACC_EN_n, ZN => n66);
   U65 : NAND2_X1 port map( A1 => ACC_EN_n, A2 => RST_n, ZN => n56);

end SYN_behavioral;
