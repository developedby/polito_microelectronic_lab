
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ALU is

-- define attributes
attribute ENUM_ENCODING : STRING;

-- define any necessary types
type TYPE_OP is (ADD, SUB, MULT, BITAND, BITOR, BITXOR, FUNCLSL, FUNCLSR, 
   FUNCRL, FUNCRR);
attribute ENUM_ENCODING of TYPE_OP : type is 
   "0000 0001 0010 0011 0100 0101 0110 0111 1000 1001";
   
   -- Declarations for conversion functions.
   function TYPE_OP_to_std_logic_vector(arg : in TYPE_OP) return 
               std_logic_vector;

end CONV_PACK_ALU;

package body CONV_PACK_ALU is
   
   -- enum type to std_logic_vector function
   function TYPE_OP_to_std_logic_vector(arg : in TYPE_OP) return 
   std_logic_vector is
   -- synopsys built_in SYN_FEED_THRU;
   begin
      case arg is
         when ADD => return "0000";
         when SUB => return "0001";
         when MULT => return "0010";
         when BITAND => return "0011";
         when BITOR => return "0100";
         when BITXOR => return "0101";
         when FUNCLSL => return "0110";
         when FUNCLSR => return "0111";
         when FUNCRL => return "1000";
         when FUNCRR => return "1001";
         when others => assert FALSE -- this should not happen.
               report "un-convertible value"
               severity warning;
               return "0000";
      end case;
   end;

end CONV_PACK_ALU;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ALU.all;

entity ALU is

   port( FUNC : in TYPE_OP;  DATA1, DATA2 : in std_logic_vector (3 downto 0);  
         OUTALU : out std_logic_vector (3 downto 0));

end ALU;

architecture SYN_BEHAVIOR of ALU is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR4_X2
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DLH_X1
      port( G, D : in std_logic;  Q : out std_logic);
   end component;
   
   signal FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port, N50, N51, N52, 
      N53, N55, N56, N57, N58, N59, N61, N62, N63, N64, N65, N66, N67, N68, N69
      , N70, N71, N72, N73, N74, n70_port, n71_port, n72_port, n73_port, 
      n74_port, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87
      , n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
      n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, 
      n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124 : 
      std_logic;

begin
   (FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port) <= 
      TYPE_OP_to_std_logic_vector(FUNC);
   
   OUTALU_reg_3_inst : DLH_X1 port map( G => N70, D => N74, Q => OUTALU(3));
   OUTALU_reg_2_inst : DLH_X1 port map( G => N70, D => N73, Q => OUTALU(2));
   OUTALU_reg_1_inst : DLH_X1 port map( G => N70, D => N72, Q => OUTALU(1));
   OUTALU_reg_0_inst : DLH_X1 port map( G => N70, D => N71, Q => OUTALU(0));
   U79 : NOR4_X2 port map( A1 => n93, A2 => FUNC_1_port, A3 => FUNC_2_port, A4 
                           => FUNC_3_port, ZN => n108);
   U80 : INV_X1 port map( A => FUNC_3_port, ZN => n95);
   U81 : INV_X1 port map( A => n70_port, ZN => n96);
   U82 : INV_X1 port map( A => FUNC_0_port, ZN => n93);
   U83 : INV_X1 port map( A => FUNC_1_port, ZN => n94);
   U84 : NOR2_X1 port map( A1 => n94, A2 => FUNC_2_port, ZN => n89);
   U85 : NOR2_X1 port map( A1 => n95, A2 => FUNC_2_port, ZN => n84);
   U86 : AOI22_X1 port map( A1 => FUNC_2_port, A2 => FUNC_1_port, B1 => n94, B2
                           => n84, ZN => n70_port);
   U87 : AOI22_X1 port map( A1 => N61, A2 => n89, B1 => DATA1(1), B2 => n96, ZN
                           => n76);
   U88 : NOR2_X1 port map( A1 => FUNC_3_port, A2 => FUNC_2_port, ZN => n88);
   U89 : AOI22_X1 port map( A1 => DATA1(3), A2 => n84, B1 => N65, B2 => 
                           FUNC_2_port, ZN => n72_port);
   U90 : NAND3_X1 port map( A1 => FUNC_0_port, A2 => FUNC_2_port, A3 => N69, ZN
                           => n71_port);
   U91 : OAI21_X1 port map( B1 => FUNC_0_port, B2 => n72_port, A => n71_port, 
                           ZN => n73_port);
   U92 : AOI21_X1 port map( B1 => N50, B2 => n88, A => n73_port, ZN => n75);
   U93 : NAND3_X1 port map( A1 => n89, A2 => n93, A3 => N61, ZN => n74_port);
   U94 : OAI221_X1 port map( B1 => n93, B2 => n76, C1 => FUNC_1_port, C2 => n75
                           , A => n74_port, ZN => N71);
   U95 : AND2_X1 port map( A1 => FUNC_2_port, A2 => n94, ZN => n80);
   U96 : AOI222_X1 port map( A1 => n96, A2 => DATA1(0), B1 => N64, B2 => n80, 
                           C1 => N55, C2 => n89, ZN => n79);
   U97 : AOI222_X1 port map( A1 => DATA1(2), A2 => n96, B1 => N68, B2 => n80, 
                           C1 => n124, C2 => n89, ZN => n78);
   U98 : NAND3_X1 port map( A1 => n88, A2 => n94, A3 => N51, ZN => n77);
   U99 : OAI221_X1 port map( B1 => FUNC_0_port, B2 => n79, C1 => n93, C2 => n78
                           , A => n77, ZN => N72);
   U100 : AOI222_X1 port map( A1 => DATA1(1), A2 => n96, B1 => N63, B2 => n80, 
                           C1 => N56, C2 => n89, ZN => n83);
   U101 : AOI222_X1 port map( A1 => DATA1(3), A2 => n96, B1 => N67, B2 => n80, 
                           C1 => N59, C2 => n89, ZN => n82);
   U102 : NAND3_X1 port map( A1 => n88, A2 => n94, A3 => N52, ZN => n81);
   U103 : OAI221_X1 port map( B1 => FUNC_0_port, B2 => n83, C1 => n93, C2 => 
                           n82, A => n81, ZN => N73);
   U104 : AOI22_X1 port map( A1 => N57, A2 => n89, B1 => DATA1(2), B2 => n96, 
                           ZN => n92);
   U105 : AOI22_X1 port map( A1 => DATA1(0), A2 => n84, B1 => N66, B2 => 
                           FUNC_2_port, ZN => n86);
   U106 : NAND3_X1 port map( A1 => FUNC_2_port, A2 => n93, A3 => N62, ZN => n85
                           );
   U107 : OAI21_X1 port map( B1 => n86, B2 => n93, A => n85, ZN => n87);
   U108 : AOI21_X1 port map( B1 => N53, B2 => n88, A => n87, ZN => n91);
   U109 : NAND3_X1 port map( A1 => n89, A2 => FUNC_0_port, A3 => N58, ZN => n90
                           );
   U110 : OAI221_X1 port map( B1 => FUNC_0_port, B2 => n92, C1 => FUNC_1_port, 
                           C2 => n91, A => n90, ZN => N74);
   U111 : OAI21_X1 port map( B1 => FUNC_2_port, B2 => FUNC_1_port, A => 
                           FUNC_3_port, ZN => N70);
   U112 : XOR2_X1 port map( A => DATA2(0), B => DATA1(0), Z => N69);
   U113 : XNOR2_X1 port map( A => n97, B => DATA1(1), ZN => N68);
   U114 : XNOR2_X1 port map( A => n98, B => DATA1(2), ZN => N67);
   U115 : OR2_X1 port map( A1 => DATA2(0), A2 => DATA1(0), ZN => N65);
   U116 : NAND2_X1 port map( A1 => n97, A2 => n99, ZN => N64);
   U117 : NAND2_X1 port map( A1 => n98, A2 => n100, ZN => N63);
   U118 : NAND2_X1 port map( A1 => n101, A2 => n102, ZN => N62);
   U119 : NOR2_X1 port map( A1 => n98, A2 => n100, ZN => N59);
   U120 : NOR2_X1 port map( A1 => n101, A2 => n102, ZN => N58);
   U121 : INV_X1 port map( A => DATA1(3), ZN => n102);
   U122 : NOR2_X1 port map( A1 => n103, A2 => n104, ZN => N57);
   U123 : NOR2_X1 port map( A1 => N61, A2 => n104, ZN => N56);
   U124 : INV_X1 port map( A => n124, ZN => n104);
   U125 : NOR2_X1 port map( A1 => n97, A2 => n99, ZN => n124);
   U126 : INV_X1 port map( A => n103, ZN => N61);
   U127 : NAND2_X1 port map( A1 => DATA1(0), A2 => DATA2(0), ZN => n103);
   U128 : XOR2_X1 port map( A => n105, B => n106, Z => N55);
   U129 : NAND2_X1 port map( A1 => DATA1(0), A2 => DATA2(1), ZN => n106);
   U130 : NAND2_X1 port map( A1 => DATA2(0), A2 => DATA1(1), ZN => n105);
   U131 : XNOR2_X1 port map( A => N66, B => n107, ZN => N53);
   U132 : XNOR2_X1 port map( A => n108, B => n109, ZN => n107);
   U133 : OAI21_X1 port map( B1 => n110, B2 => n111, A => n112, ZN => n109);
   U134 : OAI21_X1 port map( B1 => n113, B2 => n114, A => DATA1(2), ZN => n112)
                           ;
   U135 : INV_X1 port map( A => n110, ZN => n114);
   U136 : XNOR2_X1 port map( A => DATA1(3), B => n101, ZN => N66);
   U137 : INV_X1 port map( A => DATA2(3), ZN => n101);
   U138 : XNOR2_X1 port map( A => n110, B => n115, ZN => N52);
   U139 : XNOR2_X1 port map( A => n100, B => n113, ZN => n115);
   U140 : INV_X1 port map( A => n111, ZN => n113);
   U141 : OAI22_X1 port map( A1 => n116, A2 => n117, B1 => DATA1(1), B2 => n118
                           , ZN => n111);
   U142 : AND2_X1 port map( A1 => n117, A2 => n116, ZN => n118);
   U143 : INV_X1 port map( A => DATA1(2), ZN => n100);
   U144 : XOR2_X1 port map( A => n108, B => n98, Z => n110);
   U145 : INV_X1 port map( A => DATA2(2), ZN => n98);
   U146 : XOR2_X1 port map( A => n117, B => n119, Z => N51);
   U147 : XNOR2_X1 port map( A => n99, B => n116, ZN => n119);
   U148 : INV_X1 port map( A => n120, ZN => n116);
   U149 : OAI22_X1 port map( A1 => n108, A2 => n121, B1 => DATA1(0), B2 => n122
                           , ZN => n120);
   U150 : AND2_X1 port map( A1 => n121, A2 => n108, ZN => n122);
   U151 : INV_X1 port map( A => DATA1(1), ZN => n99);
   U152 : XNOR2_X1 port map( A => n108, B => n97, ZN => n117);
   U153 : INV_X1 port map( A => DATA2(1), ZN => n97);
   U154 : XNOR2_X1 port map( A => n121, B => n123, ZN => N50);
   U155 : XNOR2_X1 port map( A => n108, B => DATA1(0), ZN => n123);
   U156 : XOR2_X1 port map( A => n108, B => DATA2(0), Z => n121);

end SYN_BEHAVIOR;
