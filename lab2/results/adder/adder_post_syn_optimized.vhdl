
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_p4_adder is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_p4_adder;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_62 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_62;

architecture SYN_BEHAVIORAL of FA_62 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_61 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_61;

architecture SYN_BEHAVIORAL of FA_61 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_60 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_60;

architecture SYN_BEHAVIORAL of FA_60 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_59 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_59;

architecture SYN_BEHAVIORAL of FA_59 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_58 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_58;

architecture SYN_BEHAVIORAL of FA_58 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_57 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_57;

architecture SYN_BEHAVIORAL of FA_57 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_56 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_56;

architecture SYN_BEHAVIORAL of FA_56 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_55 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_55;

architecture SYN_BEHAVIORAL of FA_55 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_54 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_54;

architecture SYN_BEHAVIORAL of FA_54 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_53 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_53;

architecture SYN_BEHAVIORAL of FA_53 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_52 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_52;

architecture SYN_BEHAVIORAL of FA_52 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_51 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_51;

architecture SYN_BEHAVIORAL of FA_51 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_50 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_50;

architecture SYN_BEHAVIORAL of FA_50 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_49 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_49;

architecture SYN_BEHAVIORAL of FA_49 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_48 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_48;

architecture SYN_BEHAVIORAL of FA_48 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_47 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_47;

architecture SYN_BEHAVIORAL of FA_47 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_46 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_46;

architecture SYN_BEHAVIORAL of FA_46 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_45 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_45;

architecture SYN_BEHAVIORAL of FA_45 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_44 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_44;

architecture SYN_BEHAVIORAL of FA_44 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_43 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_43;

architecture SYN_BEHAVIORAL of FA_43 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_42 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_42;

architecture SYN_BEHAVIORAL of FA_42 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_41 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_41;

architecture SYN_BEHAVIORAL of FA_41 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_40 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_40;

architecture SYN_BEHAVIORAL of FA_40 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_39 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_39;

architecture SYN_BEHAVIORAL of FA_39 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_38 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_38;

architecture SYN_BEHAVIORAL of FA_38 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_37 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_37;

architecture SYN_BEHAVIORAL of FA_37 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_36 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_36;

architecture SYN_BEHAVIORAL of FA_36 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_35 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_35;

architecture SYN_BEHAVIORAL of FA_35 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_34 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_34;

architecture SYN_BEHAVIORAL of FA_34 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_33 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_33;

architecture SYN_BEHAVIORAL of FA_33 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_32 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_32;

architecture SYN_BEHAVIORAL of FA_32 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_31 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_31;

architecture SYN_BEHAVIORAL of FA_31 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_30 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_30;

architecture SYN_BEHAVIORAL of FA_30 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_29 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_29;

architecture SYN_BEHAVIORAL of FA_29 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_28 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_28;

architecture SYN_BEHAVIORAL of FA_28 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_27 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_27;

architecture SYN_BEHAVIORAL of FA_27 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_26 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_26;

architecture SYN_BEHAVIORAL of FA_26 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_25 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_25;

architecture SYN_BEHAVIORAL of FA_25 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_24 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_24;

architecture SYN_BEHAVIORAL of FA_24 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_23 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_23;

architecture SYN_BEHAVIORAL of FA_23 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_22 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_22;

architecture SYN_BEHAVIORAL of FA_22 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_21 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_21;

architecture SYN_BEHAVIORAL of FA_21 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_20 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_20;

architecture SYN_BEHAVIORAL of FA_20 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_19 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_19;

architecture SYN_BEHAVIORAL of FA_19 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_18 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_18;

architecture SYN_BEHAVIORAL of FA_18 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_17 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_17;

architecture SYN_BEHAVIORAL of FA_17 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_16 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_16;

architecture SYN_BEHAVIORAL of FA_16 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_15 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_15;

architecture SYN_BEHAVIORAL of FA_15 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_14 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_14;

architecture SYN_BEHAVIORAL of FA_14 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_13 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_13;

architecture SYN_BEHAVIORAL of FA_13 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_12 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_12;

architecture SYN_BEHAVIORAL of FA_12 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_11 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_11;

architecture SYN_BEHAVIORAL of FA_11 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_10 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_10;

architecture SYN_BEHAVIORAL of FA_10 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_9 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_9;

architecture SYN_BEHAVIORAL of FA_9 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_8 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_8;

architecture SYN_BEHAVIORAL of FA_8 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_7 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_7;

architecture SYN_BEHAVIORAL of FA_7 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_6 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_6;

architecture SYN_BEHAVIORAL of FA_6 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_5 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_5;

architecture SYN_BEHAVIORAL of FA_5 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_4 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_4;

architecture SYN_BEHAVIORAL of FA_4 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_3 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_3;

architecture SYN_BEHAVIORAL of FA_3 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_2 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_2;

architecture SYN_BEHAVIORAL of FA_2 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_1 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1;

architecture SYN_BEHAVIORAL of FA_1 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n4, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n4);
   U1 : INV_X1 port map( A => n5, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n4, B2 => Ci, ZN => n5);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity RCA_NBIT4_14 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_14;

architecture SYN_STRUCTURAL of RCA_NBIT4_14 is

   component FA_53
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_54
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_55
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_56
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_56 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_55 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_54 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_53 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity RCA_NBIT4_13 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_13;

architecture SYN_STRUCTURAL of RCA_NBIT4_13 is

   component FA_49
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_50
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_51
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_52
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_52 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_51 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_50 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_49 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity RCA_NBIT4_12 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_12;

architecture SYN_STRUCTURAL of RCA_NBIT4_12 is

   component FA_45
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_46
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_47
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_48
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_48 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_47 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_46 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_45 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity RCA_NBIT4_11 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_11;

architecture SYN_STRUCTURAL of RCA_NBIT4_11 is

   component FA_41
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_42
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_43
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_44
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_44 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_43 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_42 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_41 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity RCA_NBIT4_10 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_10;

architecture SYN_STRUCTURAL of RCA_NBIT4_10 is

   component FA_37
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_38
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_39
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_40
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_40 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_39 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_38 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_37 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity RCA_NBIT4_9 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_9;

architecture SYN_STRUCTURAL of RCA_NBIT4_9 is

   component FA_33
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_34
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_35
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_36
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_36 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_35 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_34 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_33 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity RCA_NBIT4_8 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_8;

architecture SYN_STRUCTURAL of RCA_NBIT4_8 is

   component FA_29
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_30
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_31
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_32
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_32 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_31 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_30 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_29 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity RCA_NBIT4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_7;

architecture SYN_STRUCTURAL of RCA_NBIT4_7 is

   component FA_25
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_26
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_27
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_28
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_28 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_27 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_26 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_25 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity RCA_NBIT4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_6;

architecture SYN_STRUCTURAL of RCA_NBIT4_6 is

   component FA_21
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_22
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_23
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_24
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_24 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_23 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_22 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_21 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity RCA_NBIT4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_5;

architecture SYN_STRUCTURAL of RCA_NBIT4_5 is

   component FA_17
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_18
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_19
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_20
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_20 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_19 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_18 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_17 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity RCA_NBIT4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_4;

architecture SYN_STRUCTURAL of RCA_NBIT4_4 is

   component FA_13
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_14
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_15
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_16
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_16 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_15 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_14 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_13 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity RCA_NBIT4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_3;

architecture SYN_STRUCTURAL of RCA_NBIT4_3 is

   component FA_9
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_10
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_11
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_12
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_12 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_11 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_10 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_9 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity RCA_NBIT4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_2;

architecture SYN_STRUCTURAL of RCA_NBIT4_2 is

   component FA_5
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_6
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_7
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_8
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_8 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_7 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_6 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_5 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity RCA_NBIT4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_1;

architecture SYN_STRUCTURAL of RCA_NBIT4_1 is

   component FA_1
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_2
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_3
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_4
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_4 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_3 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_2 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_1 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity pg_block_25 is

   port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);

end pg_block_25;

architecture SYN_behavioural of pg_block_25 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U2 : AND2_X1 port map( A1 => Pik, A2 => Pkj, ZN => Pij);
   U3 : INV_X1 port map( A => n3, ZN => Gij);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity pg_block_24 is

   port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);

end pg_block_24;

architecture SYN_behavioural of pg_block_24 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U3 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity pg_block_23 is

   port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);

end pg_block_23;

architecture SYN_behavioural of pg_block_23 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pik, A2 => Pkj, ZN => Pij);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity pg_block_22 is

   port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);

end pg_block_22;

architecture SYN_behavioural of pg_block_22 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U2 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U3 : INV_X1 port map( A => n3, ZN => Gij);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity pg_block_21 is

   port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);

end pg_block_21;

architecture SYN_behavioural of pg_block_21 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AND2_X1 port map( A1 => Pik, A2 => Pkj, ZN => Pij);
   U3 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity pg_block_20 is

   port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);

end pg_block_20;

architecture SYN_behavioural of pg_block_20 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity pg_block_19 is

   port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);

end pg_block_19;

architecture SYN_behavioural of pg_block_19 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity pg_block_18 is

   port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);

end pg_block_18;

architecture SYN_behavioural of pg_block_18 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity pg_block_17 is

   port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);

end pg_block_17;

architecture SYN_behavioural of pg_block_17 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AND2_X1 port map( A1 => Pik, A2 => Pkj, ZN => Pij);
   U3 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity pg_block_16 is

   port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);

end pg_block_16;

architecture SYN_behavioural of pg_block_16 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity pg_block_15 is

   port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);

end pg_block_15;

architecture SYN_behavioural of pg_block_15 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity pg_block_14 is

   port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);

end pg_block_14;

architecture SYN_behavioural of pg_block_14 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity pg_block_13 is

   port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);

end pg_block_13;

architecture SYN_behavioural of pg_block_13 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity pg_block_12 is

   port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);

end pg_block_12;

architecture SYN_behavioural of pg_block_12 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : NOR2_X1 port map( A1 => Gik, A2 => Pik, ZN => n4);
   U3 : NOR2_X1 port map( A1 => Gik, A2 => Gkj, ZN => n5);
   U4 : NOR2_X1 port map( A1 => n5, A2 => n4, ZN => Gij);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity pg_block_11 is

   port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);

end pg_block_11;

architecture SYN_behavioural of pg_block_11 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : INV_X1 port map( A => Gik, ZN => n3);
   U2 : NAND2_X1 port map( A1 => Pik, A2 => Gkj, ZN => n4);
   U3 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U4 : NAND2_X1 port map( A1 => n3, A2 => n4, ZN => Gij);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity pg_block_10 is

   port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);

end pg_block_10;

architecture SYN_behavioural of pg_block_10 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n3, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity pg_block_9 is

   port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);

end pg_block_9;

architecture SYN_behavioural of pg_block_9 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U2 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U3 : INV_X1 port map( A => n3, ZN => Gij);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity pg_block_8 is

   port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);

end pg_block_8;

architecture SYN_behavioural of pg_block_8 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U3 : INV_X1 port map( A => n3, ZN => Gij);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity pg_block_7 is

   port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);

end pg_block_7;

architecture SYN_behavioural of pg_block_7 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity pg_block_6 is

   port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);

end pg_block_6;

architecture SYN_behavioural of pg_block_6 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity pg_block_5 is

   port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);

end pg_block_5;

architecture SYN_behavioural of pg_block_5 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => Gik, ZN => n4);
   U3 : NAND2_X1 port map( A1 => Gkj, A2 => Pik, ZN => n5);
   U4 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => Gij);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity pg_block_4 is

   port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);

end pg_block_4;

architecture SYN_behavioural of pg_block_4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U3 : INV_X1 port map( A => n3, ZN => Gij);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity pg_block_3 is

   port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);

end pg_block_3;

architecture SYN_behavioural of pg_block_3 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);
   U3 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity pg_block_2 is

   port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);

end pg_block_2;

architecture SYN_behavioural of pg_block_2 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U1 : INV_X1 port map( A => Gik, ZN => n4);
   U2 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U3 : NAND2_X1 port map( A1 => Gkj, A2 => Pik, ZN => n5);
   U4 : NAND2_X1 port map( A1 => n4, A2 => n5, ZN => Gij);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity pg_block_1 is

   port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);

end pg_block_1;

architecture SYN_behavioural of pg_block_1 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pkj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n3, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity g_block_7 is

   port( Gik, Pik, Gkj : in std_logic;  Gij : out std_logic);

end g_block_7;

architecture SYN_behavioural of g_block_7 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n3);
   U2 : INV_X1 port map( A => n3, ZN => Gij);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity g_block_6 is

   port( Gik, Pik, Gkj : in std_logic;  Gij : out std_logic);

end g_block_6;

architecture SYN_behavioural of g_block_6 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n3);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity g_block_5 is

   port( Gik, Pik, Gkj : in std_logic;  Gij : out std_logic);

end g_block_5;

architecture SYN_behavioural of g_block_5 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n3);
   U2 : INV_X1 port map( A => n3, ZN => Gij);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity g_block_4 is

   port( Gik, Pik, Gkj : in std_logic;  Gij : out std_logic);

end g_block_4;

architecture SYN_behavioural of g_block_4 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n3);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity g_block_3 is

   port( Gik, Pik, Gkj : in std_logic;  Gij : out std_logic);

end g_block_3;

architecture SYN_behavioural of g_block_3 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n3);
   U2 : INV_X1 port map( A => n3, ZN => Gij);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity g_block_2 is

   port( Gik, Pik, Gkj : in std_logic;  Gij : out std_logic);

end g_block_2;

architecture SYN_behavioural of g_block_2 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Gkj, B2 => Pik, A => Gik, ZN => n3);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity g_block_1 is

   port( Gik, Pik, Gkj : in std_logic;  Gij : out std_logic);

end g_block_1;

architecture SYN_behavioural of g_block_1 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n3, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n3);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity carry_select_block_NBIT4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (3 downto 0));

end carry_select_block_NBIT4_6;

architecture SYN_structural of carry_select_block_NBIT4_6 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component RCA_NBIT4_11
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_12
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S0_3_port, S0_2_port, S0_1_port, 
      S0_0_port, S1_3_port, S1_2_port, S1_1_port, S1_0_port, n10, n11, n12, n13
      , n14, n_1000, n_1001 : std_logic;

begin
   
   RCA0 : RCA_NBIT4_12 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => S0_3_port
                           , S(2) => S0_2_port, S(1) => S0_1_port, S(0) => 
                           S0_0_port, Co => n_1000);
   RCA1 : RCA_NBIT4_11 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => S1_3_port
                           , S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1001);
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   U3 : INV_X1 port map( A => n13, ZN => S(3));
   U4 : INV_X1 port map( A => n11, ZN => S(1));
   U5 : INV_X1 port map( A => n12, ZN => S(2));
   U6 : INV_X1 port map( A => n10, ZN => S(0));
   U7 : AOI22_X1 port map( A1 => S0_3_port, A2 => n14, B1 => S1_3_port, B2 => 
                           Cin, ZN => n13);
   U8 : AOI22_X1 port map( A1 => S0_2_port, A2 => n14, B1 => S1_2_port, B2 => 
                           Cin, ZN => n12);
   U9 : AOI22_X1 port map( A1 => S0_1_port, A2 => n14, B1 => S1_1_port, B2 => 
                           Cin, ZN => n11);
   U10 : AOI22_X1 port map( A1 => S0_0_port, A2 => n14, B1 => S1_0_port, B2 => 
                           Cin, ZN => n10);
   U11 : INV_X1 port map( A => Cin, ZN => n14);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity carry_select_block_NBIT4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (3 downto 0));

end carry_select_block_NBIT4_5;

architecture SYN_structural of carry_select_block_NBIT4_5 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component RCA_NBIT4_9
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_10
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S0_3_port, S0_2_port, S0_1_port, 
      S0_0_port, S1_3_port, S1_2_port, S1_1_port, S1_0_port, n10, n11, n12, n13
      , n14, n15, n_1002, n_1003 : std_logic;

begin
   
   RCA0 : RCA_NBIT4_10 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => S0_3_port
                           , S(2) => S0_2_port, S(1) => S0_1_port, S(0) => 
                           S0_0_port, Co => n_1002);
   RCA1 : RCA_NBIT4_9 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => S1_3_port
                           , S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1003);
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   U3 : INV_X1 port map( A => Cin, ZN => n10);
   U4 : INV_X1 port map( A => n14, ZN => S(3));
   U5 : INV_X1 port map( A => n12, ZN => S(1));
   U6 : INV_X1 port map( A => n13, ZN => S(2));
   U7 : INV_X1 port map( A => n11, ZN => S(0));
   U8 : INV_X1 port map( A => Cin, ZN => n15);
   U9 : AOI22_X1 port map( A1 => S0_3_port, A2 => n10, B1 => S1_3_port, B2 => 
                           Cin, ZN => n14);
   U10 : AOI22_X1 port map( A1 => S0_2_port, A2 => n10, B1 => S1_2_port, B2 => 
                           Cin, ZN => n13);
   U11 : AOI22_X1 port map( A1 => S0_1_port, A2 => n15, B1 => S1_1_port, B2 => 
                           Cin, ZN => n12);
   U12 : AOI22_X1 port map( A1 => S0_0_port, A2 => n15, B1 => S1_0_port, B2 => 
                           Cin, ZN => n11);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity carry_select_block_NBIT4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (3 downto 0));

end carry_select_block_NBIT4_4;

architecture SYN_structural of carry_select_block_NBIT4_4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component RCA_NBIT4_7
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_8
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S0_3_port, S0_2_port, S0_1_port, 
      S0_0_port, S1_3_port, S1_2_port, S1_1_port, S1_0_port, n10, n11, n12, n13
      , n14, n15, n_1004, n_1005 : std_logic;

begin
   
   RCA0 : RCA_NBIT4_8 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => S0_3_port
                           , S(2) => S0_2_port, S(1) => S0_1_port, S(0) => 
                           S0_0_port, Co => n_1004);
   RCA1 : RCA_NBIT4_7 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => S1_3_port
                           , S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1005);
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   U3 : INV_X1 port map( A => Cin, ZN => n10);
   U4 : INV_X1 port map( A => n14, ZN => S(3));
   U5 : INV_X1 port map( A => n12, ZN => S(1));
   U6 : INV_X1 port map( A => n13, ZN => S(2));
   U7 : INV_X1 port map( A => n11, ZN => S(0));
   U8 : AOI22_X1 port map( A1 => S0_3_port, A2 => n15, B1 => S1_3_port, B2 => 
                           Cin, ZN => n14);
   U9 : AOI22_X1 port map( A1 => S0_2_port, A2 => n10, B1 => S1_2_port, B2 => 
                           Cin, ZN => n13);
   U10 : AOI22_X1 port map( A1 => S0_1_port, A2 => n10, B1 => S1_1_port, B2 => 
                           Cin, ZN => n12);
   U11 : AOI22_X1 port map( A1 => S0_0_port, A2 => n15, B1 => S1_0_port, B2 => 
                           Cin, ZN => n11);
   U12 : INV_X1 port map( A => Cin, ZN => n15);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity carry_select_block_NBIT4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (3 downto 0));

end carry_select_block_NBIT4_3;

architecture SYN_structural of carry_select_block_NBIT4_3 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component RCA_NBIT4_5
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_6
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S0_3_port, S0_2_port, S0_1_port, 
      S0_0_port, S1_3_port, S1_2_port, S1_1_port, S1_0_port, n_1006, n_1007 : 
      std_logic;

begin
   
   RCA0 : RCA_NBIT4_6 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => S0_3_port
                           , S(2) => S0_2_port, S(1) => S0_1_port, S(0) => 
                           S0_0_port, Co => n_1006);
   RCA1 : RCA_NBIT4_5 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => S1_3_port
                           , S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1007);
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   U3 : MUX2_X1 port map( A => S0_0_port, B => S1_0_port, S => Cin, Z => S(0));
   U4 : MUX2_X1 port map( A => S0_2_port, B => S1_2_port, S => Cin, Z => S(2));
   U5 : MUX2_X1 port map( A => S0_1_port, B => S1_1_port, S => Cin, Z => S(1));
   U6 : MUX2_X1 port map( A => S0_3_port, B => S1_3_port, S => Cin, Z => S(3));

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity carry_select_block_NBIT4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (3 downto 0));

end carry_select_block_NBIT4_2;

architecture SYN_structural of carry_select_block_NBIT4_2 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component RCA_NBIT4_3
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_4
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S0_3_port, S0_2_port, S0_1_port, 
      S0_0_port, S1_3_port, S1_2_port, S1_1_port, S1_0_port, n_1008, n_1009 : 
      std_logic;

begin
   
   RCA0 : RCA_NBIT4_4 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => S0_3_port
                           , S(2) => S0_2_port, S(1) => S0_1_port, S(0) => 
                           S0_0_port, Co => n_1008);
   RCA1 : RCA_NBIT4_3 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => S1_3_port
                           , S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1009);
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   U3 : MUX2_X1 port map( A => S0_0_port, B => S1_0_port, S => Cin, Z => S(0));
   U4 : MUX2_X1 port map( A => S0_2_port, B => S1_2_port, S => Cin, Z => S(2));
   U5 : MUX2_X1 port map( A => S0_1_port, B => S1_1_port, S => Cin, Z => S(1));
   U6 : MUX2_X1 port map( A => S0_3_port, B => S1_3_port, S => Cin, Z => S(3));

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity carry_select_block_NBIT4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (3 downto 0));

end carry_select_block_NBIT4_1;

architecture SYN_structural of carry_select_block_NBIT4_1 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component RCA_NBIT4_1
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_2
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S0_3_port, S0_2_port, S0_1_port, 
      S0_0_port, S1_3_port, S1_2_port, S1_1_port, S1_0_port, n_1010, n_1011 : 
      std_logic;

begin
   
   RCA0 : RCA_NBIT4_2 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => S0_3_port
                           , S(2) => S0_2_port, S(1) => S0_1_port, S(0) => 
                           S0_0_port, Co => n_1010);
   RCA1 : RCA_NBIT4_1 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => S1_3_port
                           , S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1011);
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   U3 : MUX2_X1 port map( A => S0_0_port, B => S1_0_port, S => Cin, Z => S(0));
   U4 : MUX2_X1 port map( A => S0_1_port, B => S1_1_port, S => Cin, Z => S(1));
   U5 : MUX2_X1 port map( A => S0_2_port, B => S1_2_port, S => Cin, Z => S(2));
   U6 : MUX2_X1 port map( A => S0_3_port, B => S1_3_port, S => Cin, Z => S(3));

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_63 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_63;

architecture SYN_BEHAVIORAL of FA_63 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n2, n3 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);
   U1 : INV_X1 port map( A => n2, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity FA_0 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_0;

architecture SYN_BEHAVIORAL of FA_0 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n2, n3 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);
   U1 : INV_X1 port map( A => n2, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity RCA_NBIT4_15 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_15;

architecture SYN_STRUCTURAL of RCA_NBIT4_15 is

   component FA_57
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_58
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_59
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_60
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_60 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_59 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_58 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_57 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity RCA_NBIT4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_0;

architecture SYN_STRUCTURAL of RCA_NBIT4_0 is

   component FA_61
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_62
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_63
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_0
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal CTMP_3_port, CTMP_2_port, CTMP_1_port : std_logic;

begin
   
   FAI_1 : FA_0 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           CTMP_1_port);
   FAI_2 : FA_63 port map( A => A(1), B => B(1), Ci => CTMP_1_port, S => S(1), 
                           Co => CTMP_2_port);
   FAI_3 : FA_62 port map( A => A(2), B => B(2), Ci => CTMP_2_port, S => S(2), 
                           Co => CTMP_3_port);
   FAI_4 : FA_61 port map( A => A(3), B => B(3), Ci => CTMP_3_port, S => S(3), 
                           Co => Co);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity g_block_8 is

   port( Gik, Pik, Gkj : in std_logic;  Gij : out std_logic);

end g_block_8;

architecture SYN_behavioural of g_block_8 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4 : std_logic;

begin
   
   U1 : INV_X1 port map( A => Gik, ZN => n3);
   U2 : NAND2_X1 port map( A1 => Pik, A2 => Gkj, ZN => n4);
   U3 : NAND2_X1 port map( A1 => n3, A2 => n4, ZN => Gij);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity pg_block_26 is

   port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);

end pg_block_26;

architecture SYN_behavioural of pg_block_26 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   signal n2, n3 : std_logic;

begin
   
   U1 : CLKBUF_X1 port map( A => Pik, Z => n3);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n2);
   U3 : AND2_X1 port map( A1 => Pkj, A2 => n3, ZN => Pij);
   U4 : INV_X1 port map( A => n2, ZN => Gij);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity pg_block_0 is

   port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);

end pg_block_0;

architecture SYN_behavioural of pg_block_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pik, A2 => Pkj, ZN => Pij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n2);
   U3 : INV_X1 port map( A => n2, ZN => Gij);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity g_block_0 is

   port( Gik, Pik, Gkj : in std_logic;  Gij : out std_logic);

end g_block_0;

architecture SYN_behavioural of g_block_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => Pik, B2 => Gkj, A => Gik, ZN => n2);
   U2 : INV_X1 port map( A => n2, ZN => Gij);

end SYN_behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity carry_select_block_NBIT4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (3 downto 0));

end carry_select_block_NBIT4_7;

architecture SYN_structural of carry_select_block_NBIT4_7 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component RCA_NBIT4_13
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_14
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S0_3_port, S0_2_port, S0_1_port, 
      S0_0_port, S1_3_port, S1_2_port, S1_1_port, S1_0_port, n5, n6, n7, n8, n9
      , n_1012, n_1013 : std_logic;

begin
   
   RCA0 : RCA_NBIT4_14 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => S0_3_port
                           , S(2) => S0_2_port, S(1) => S0_1_port, S(0) => 
                           S0_0_port, Co => n_1012);
   RCA1 : RCA_NBIT4_13 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => S1_3_port
                           , S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1013);
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   U3 : INV_X1 port map( A => n6, ZN => S(3));
   U4 : INV_X1 port map( A => n7, ZN => S(2));
   U5 : INV_X1 port map( A => n8, ZN => S(1));
   U6 : INV_X1 port map( A => n9, ZN => S(0));
   U7 : AOI22_X1 port map( A1 => S0_3_port, A2 => n5, B1 => S1_3_port, B2 => 
                           Cin, ZN => n6);
   U8 : AOI22_X1 port map( A1 => S0_2_port, A2 => n5, B1 => S1_2_port, B2 => 
                           Cin, ZN => n7);
   U9 : AOI22_X1 port map( A1 => S0_1_port, A2 => n5, B1 => S1_1_port, B2 => 
                           Cin, ZN => n8);
   U10 : AOI22_X1 port map( A1 => S0_0_port, A2 => n5, B1 => S1_0_port, B2 => 
                           Cin, ZN => n9);
   U11 : INV_X1 port map( A => Cin, ZN => n5);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity carry_select_block_NBIT4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : out
         std_logic_vector (3 downto 0));

end carry_select_block_NBIT4_0;

architecture SYN_structural of carry_select_block_NBIT4_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component RCA_NBIT4_15
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_0
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S0_3_port, S0_2_port, S0_1_port, 
      S0_0_port, S1_3_port, S1_2_port, S1_1_port, S1_0_port, n5, n6, n7, n8, n9
      , n_1014, n_1015 : std_logic;

begin
   
   RCA0 : RCA_NBIT4_0 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) 
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic0_port, S(3) => S0_3_port
                           , S(2) => S0_2_port, S(1) => S0_1_port, S(0) => 
                           S0_0_port, Co => n_1014);
   RCA1 : RCA_NBIT4_15 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci => X_Logic1_port, S(3) => S1_3_port
                           , S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1015);
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   U3 : INV_X1 port map( A => n6, ZN => S(3));
   U4 : AOI22_X1 port map( A1 => S0_3_port, A2 => n5, B1 => S1_3_port, B2 => 
                           Cin, ZN => n6);
   U5 : INV_X1 port map( A => n7, ZN => S(2));
   U6 : AOI22_X1 port map( A1 => S0_2_port, A2 => n5, B1 => S1_2_port, B2 => 
                           Cin, ZN => n7);
   U7 : INV_X1 port map( A => n8, ZN => S(1));
   U8 : AOI22_X1 port map( A1 => S0_1_port, A2 => n5, B1 => S1_1_port, B2 => 
                           Cin, ZN => n8);
   U9 : INV_X1 port map( A => n9, ZN => S(0));
   U10 : AOI22_X1 port map( A1 => S0_0_port, A2 => n5, B1 => S1_0_port, B2 => 
                           Cin, ZN => n9);
   U11 : INV_X1 port map( A => Cin, ZN => n5);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity pstlaa_NBIT_PER_BLOCK4_NBIT32 is

   port( Pin, Gin : in std_logic_vector (32 downto 1);  Gout : out 
         std_logic_vector (8 downto 1));

end pstlaa_NBIT_PER_BLOCK4_NBIT32;

architecture SYN_structural of pstlaa_NBIT_PER_BLOCK4_NBIT32 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component g_block_1
      port( Gik, Pik, Gkj : in std_logic;  Gij : out std_logic);
   end component;
   
   component g_block_2
      port( Gik, Pik, Gkj : in std_logic;  Gij : out std_logic);
   end component;
   
   component g_block_3
      port( Gik, Pik, Gkj : in std_logic;  Gij : out std_logic);
   end component;
   
   component g_block_4
      port( Gik, Pik, Gkj : in std_logic;  Gij : out std_logic);
   end component;
   
   component pg_block_1
      port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);
   end component;
   
   component pg_block_2
      port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);
   end component;
   
   component g_block_5
      port( Gik, Pik, Gkj : in std_logic;  Gij : out std_logic);
   end component;
   
   component g_block_6
      port( Gik, Pik, Gkj : in std_logic;  Gij : out std_logic);
   end component;
   
   component pg_block_3
      port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);
   end component;
   
   component pg_block_4
      port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);
   end component;
   
   component pg_block_5
      port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);
   end component;
   
   component g_block_7
      port( Gik, Pik, Gkj : in std_logic;  Gij : out std_logic);
   end component;
   
   component pg_block_6
      port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);
   end component;
   
   component pg_block_7
      port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);
   end component;
   
   component pg_block_8
      port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);
   end component;
   
   component pg_block_9
      port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);
   end component;
   
   component pg_block_10
      port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);
   end component;
   
   component pg_block_11
      port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);
   end component;
   
   component pg_block_12
      port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);
   end component;
   
   component g_block_8
      port( Gik, Pik, Gkj : in std_logic;  Gij : out std_logic);
   end component;
   
   component pg_block_13
      port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);
   end component;
   
   component pg_block_14
      port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);
   end component;
   
   component pg_block_15
      port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);
   end component;
   
   component pg_block_16
      port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);
   end component;
   
   component pg_block_17
      port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);
   end component;
   
   component pg_block_18
      port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);
   end component;
   
   component pg_block_19
      port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);
   end component;
   
   component pg_block_20
      port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);
   end component;
   
   component pg_block_21
      port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);
   end component;
   
   component pg_block_22
      port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);
   end component;
   
   component pg_block_23
      port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);
   end component;
   
   component pg_block_24
      port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);
   end component;
   
   component pg_block_25
      port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);
   end component;
   
   component pg_block_26
      port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);
   end component;
   
   component pg_block_0
      port( Gik, Pik, Gkj, Pkj : in std_logic;  Gij, Pij : out std_logic);
   end component;
   
   component g_block_0
      port( Gik, Pik, Gkj : in std_logic;  Gij : out std_logic);
   end component;
   
   signal n8, n9, n10, P_1_32_port, P_1_30_port, P_1_28_port, P_1_26_port, 
      P_1_24_port, P_1_22_port, P_1_20_port, P_1_18_port, P_1_16_port, 
      P_1_14_port, P_1_12_port, P_1_10_port, P_1_8_port, P_1_6_port, P_1_4_port
      , P_2_32_port, P_2_24_port, P_2_16_port, P_2_8_port, P_3_32_port, 
      P_3_28_port, P_3_20_port, P_3_16_port, P_3_12_port, P_4_32_port, 
      P_4_28_port, P_4_24_port, G_1_32_port, G_1_30_port, G_1_28_port, 
      G_1_26_port, G_1_24_port, G_1_22_port, G_1_20_port, G_1_18_port, 
      G_1_16_port, G_1_14_port, G_1_12_port, G_1_10_port, G_1_8_port, 
      G_1_6_port, G_1_4_port, G_1_2_port, G_2_32_port, G_2_24_port, G_2_16_port
      , G_2_8_port, G_3_32_port, G_3_28_port, G_3_20_port, G_3_16_port, 
      G_3_12_port, G_4_32_port, G_4_28_port, G_4_24_port, n1, n2, n5, n6 : 
      std_logic;

begin
   
   g_inst_1_2 : g_block_0 port map( Gik => Gin(2), Pik => Pin(2), Gkj => Gin(1)
                           , Gij => G_1_2_port);
   pg_inst_1_4 : pg_block_0 port map( Gik => Gin(4), Pik => Pin(4), Gkj => 
                           Gin(3), Pkj => Pin(3), Gij => G_1_4_port, Pij => 
                           P_1_4_port);
   pg_inst_1_6 : pg_block_26 port map( Gik => Gin(6), Pik => Pin(6), Gkj => 
                           Gin(5), Pkj => Pin(5), Gij => G_1_6_port, Pij => 
                           P_1_6_port);
   pg_inst_1_8 : pg_block_25 port map( Gik => Gin(8), Pik => Pin(8), Gkj => 
                           Gin(7), Pkj => Pin(7), Gij => G_1_8_port, Pij => 
                           P_1_8_port);
   pg_inst_1_10 : pg_block_24 port map( Gik => Gin(10), Pik => Pin(10), Gkj => 
                           Gin(9), Pkj => Pin(9), Gij => G_1_10_port, Pij => 
                           P_1_10_port);
   pg_inst_1_12 : pg_block_23 port map( Gik => Gin(12), Pik => Pin(12), Gkj => 
                           Gin(11), Pkj => Pin(11), Gij => G_1_12_port, Pij => 
                           P_1_12_port);
   pg_inst_1_14 : pg_block_22 port map( Gik => Gin(14), Pik => Pin(14), Gkj => 
                           Gin(13), Pkj => Pin(13), Gij => G_1_14_port, Pij => 
                           P_1_14_port);
   pg_inst_1_16 : pg_block_21 port map( Gik => Gin(16), Pik => Pin(16), Gkj => 
                           Gin(15), Pkj => Pin(15), Gij => G_1_16_port, Pij => 
                           P_1_16_port);
   pg_inst_1_18 : pg_block_20 port map( Gik => Gin(18), Pik => Pin(18), Gkj => 
                           Gin(17), Pkj => Pin(17), Gij => G_1_18_port, Pij => 
                           P_1_18_port);
   pg_inst_1_20 : pg_block_19 port map( Gik => Gin(20), Pik => Pin(20), Gkj => 
                           Gin(19), Pkj => Pin(19), Gij => G_1_20_port, Pij => 
                           P_1_20_port);
   pg_inst_1_22 : pg_block_18 port map( Gik => Gin(22), Pik => Pin(22), Gkj => 
                           Gin(21), Pkj => Pin(21), Gij => G_1_22_port, Pij => 
                           P_1_22_port);
   pg_inst_1_24 : pg_block_17 port map( Gik => Gin(24), Pik => Pin(24), Gkj => 
                           Gin(23), Pkj => Pin(23), Gij => G_1_24_port, Pij => 
                           P_1_24_port);
   pg_inst_1_26 : pg_block_16 port map( Gik => Gin(26), Pik => Pin(26), Gkj => 
                           Gin(25), Pkj => Pin(25), Gij => G_1_26_port, Pij => 
                           P_1_26_port);
   pg_inst_1_28 : pg_block_15 port map( Gik => Gin(28), Pik => Pin(28), Gkj => 
                           Gin(27), Pkj => Pin(27), Gij => G_1_28_port, Pij => 
                           P_1_28_port);
   pg_inst_1_30 : pg_block_14 port map( Gik => Gin(30), Pik => Pin(30), Gkj => 
                           Gin(29), Pkj => Pin(29), Gij => G_1_30_port, Pij => 
                           P_1_30_port);
   pg_inst_1_32 : pg_block_13 port map( Gik => Gin(32), Pik => Pin(32), Gkj => 
                           Gin(31), Pkj => Pin(31), Gij => G_1_32_port, Pij => 
                           P_1_32_port);
   g_inst_2_4 : g_block_8 port map( Gik => G_1_4_port, Pik => P_1_4_port, Gkj 
                           => G_1_2_port, Gij => n10);
   pg_inst_2_8 : pg_block_12 port map( Gik => G_1_8_port, Pik => P_1_8_port, 
                           Gkj => G_1_6_port, Pkj => P_1_6_port, Gij => 
                           G_2_8_port, Pij => P_2_8_port);
   pg_inst_2_12 : pg_block_11 port map( Gik => G_1_12_port, Pik => P_1_12_port,
                           Gkj => G_1_10_port, Pkj => P_1_10_port, Gij => 
                           G_3_12_port, Pij => P_3_12_port);
   pg_inst_2_16 : pg_block_10 port map( Gik => G_1_16_port, Pik => P_1_16_port,
                           Gkj => G_1_14_port, Pkj => P_1_14_port, Gij => 
                           G_2_16_port, Pij => P_2_16_port);
   pg_inst_2_20 : pg_block_9 port map( Gik => G_1_20_port, Pik => P_1_20_port, 
                           Gkj => G_1_18_port, Pkj => P_1_18_port, Gij => 
                           G_3_20_port, Pij => P_3_20_port);
   pg_inst_2_24 : pg_block_8 port map( Gik => G_1_24_port, Pik => P_1_24_port, 
                           Gkj => G_1_22_port, Pkj => P_1_22_port, Gij => 
                           G_2_24_port, Pij => P_2_24_port);
   pg_inst_2_28 : pg_block_7 port map( Gik => G_1_28_port, Pik => P_1_28_port, 
                           Gkj => G_1_26_port, Pkj => P_1_26_port, Gij => 
                           G_3_28_port, Pij => P_3_28_port);
   pg_inst_2_32 : pg_block_6 port map( Gik => G_1_32_port, Pik => P_1_32_port, 
                           Gkj => G_1_30_port, Pkj => P_1_30_port, Gij => 
                           G_2_32_port, Pij => P_2_32_port);
   g_inst_3_8 : g_block_7 port map( Gik => G_2_8_port, Pik => P_2_8_port, Gkj 
                           => n10, Gij => n9);
   pg_inst_3_16 : pg_block_5 port map( Gik => G_2_16_port, Pik => P_2_16_port, 
                           Gkj => G_3_12_port, Pkj => P_3_12_port, Gij => 
                           G_3_16_port, Pij => P_3_16_port);
   pg_inst_3_24 : pg_block_4 port map( Gik => G_2_24_port, Pik => P_2_24_port, 
                           Gkj => G_3_20_port, Pkj => P_3_20_port, Gij => 
                           G_4_24_port, Pij => P_4_24_port);
   pg_inst_3_32 : pg_block_3 port map( Gik => G_2_32_port, Pik => P_2_32_port, 
                           Gkj => G_3_28_port, Pkj => P_3_28_port, Gij => 
                           G_3_32_port, Pij => P_3_32_port);
   g_inst_4_12 : g_block_6 port map( Gik => G_3_12_port, Pik => P_3_12_port, 
                           Gkj => n5, Gij => Gout(3));
   g_inst_4_16 : g_block_5 port map( Gik => G_3_16_port, Pik => P_3_16_port, 
                           Gkj => n9, Gij => n8);
   pg_inst_4_28 : pg_block_2 port map( Gik => G_3_28_port, Pik => P_3_28_port, 
                           Gkj => G_4_24_port, Pkj => P_4_24_port, Gij => 
                           G_4_28_port, Pij => P_4_28_port);
   pg_inst_4_32 : pg_block_1 port map( Gik => G_3_32_port, Pik => P_3_32_port, 
                           Gkj => n2, Pkj => P_4_24_port, Gij => G_4_32_port, 
                           Pij => P_4_32_port);
   g_inst_5_20 : g_block_4 port map( Gik => G_3_20_port, Pik => P_3_20_port, 
                           Gkj => n8, Gij => Gout(5));
   g_inst_5_24 : g_block_3 port map( Gik => n2, Pik => P_4_24_port, Gkj => n8, 
                           Gij => Gout(6));
   g_inst_5_28 : g_block_2 port map( Gik => G_4_28_port, Pik => P_4_28_port, 
                           Gkj => n8, Gij => Gout(7));
   g_inst_5_32 : g_block_1 port map( Gik => G_4_32_port, Pik => P_4_32_port, 
                           Gkj => n1, Gij => Gout(8));
   U1 : BUF_X2 port map( A => n8, Z => Gout(4));
   U2 : CLKBUF_X1 port map( A => n9, Z => n5);
   U3 : CLKBUF_X1 port map( A => n8, Z => n1);
   U4 : CLKBUF_X1 port map( A => G_4_24_port, Z => n2);
   U5 : CLKBUF_X1 port map( A => n10, Z => Gout(1));
   U6 : INV_X1 port map( A => n5, ZN => n6);
   U7 : INV_X1 port map( A => n6, ZN => Gout(2));

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity sum_generator_NBIT_PER_BLOCK4_NBLOCKS8 is

   port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic_vector (7
         downto 0);  S : out std_logic_vector (31 downto 0));

end sum_generator_NBIT_PER_BLOCK4_NBLOCKS8;

architecture SYN_structural of sum_generator_NBIT_PER_BLOCK4_NBLOCKS8 is

   component carry_select_block_NBIT4_1
      port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT4_2
      port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT4_3
      port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT4_4
      port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT4_5
      port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT4_6
      port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT4_7
      port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT4_0
      port( A, B : in std_logic_vector (3 downto 0);  Cin : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;

begin
   
   CSB_1 : carry_select_block_NBIT4_0 port map( A(3) => A(3), A(2) => A(2), 
                           A(1) => A(1), A(0) => A(0), B(3) => B(3), B(2) => 
                           B(2), B(1) => B(1), B(0) => B(0), Cin => Ci(0), S(3)
                           => S(3), S(2) => S(2), S(1) => S(1), S(0) => S(0));
   CSB_2 : carry_select_block_NBIT4_7 port map( A(3) => A(7), A(2) => A(6), 
                           A(1) => A(5), A(0) => A(4), B(3) => B(7), B(2) => 
                           B(6), B(1) => B(5), B(0) => B(4), Cin => Ci(1), S(3)
                           => S(7), S(2) => S(6), S(1) => S(5), S(0) => S(4));
   CSB_3 : carry_select_block_NBIT4_6 port map( A(3) => A(11), A(2) => A(10), 
                           A(1) => A(9), A(0) => A(8), B(3) => B(11), B(2) => 
                           B(10), B(1) => B(9), B(0) => B(8), Cin => Ci(2), 
                           S(3) => S(11), S(2) => S(10), S(1) => S(9), S(0) => 
                           S(8));
   CSB_4 : carry_select_block_NBIT4_5 port map( A(3) => A(15), A(2) => A(14), 
                           A(1) => A(13), A(0) => A(12), B(3) => B(15), B(2) =>
                           B(14), B(1) => B(13), B(0) => B(12), Cin => Ci(3), 
                           S(3) => S(15), S(2) => S(14), S(1) => S(13), S(0) =>
                           S(12));
   CSB_5 : carry_select_block_NBIT4_4 port map( A(3) => A(19), A(2) => A(18), 
                           A(1) => A(17), A(0) => A(16), B(3) => B(19), B(2) =>
                           B(18), B(1) => B(17), B(0) => B(16), Cin => Ci(4), 
                           S(3) => S(19), S(2) => S(18), S(1) => S(17), S(0) =>
                           S(16));
   CSB_6 : carry_select_block_NBIT4_3 port map( A(3) => A(23), A(2) => A(22), 
                           A(1) => A(21), A(0) => A(20), B(3) => B(23), B(2) =>
                           B(22), B(1) => B(21), B(0) => B(20), Cin => Ci(5), 
                           S(3) => S(23), S(2) => S(22), S(1) => S(21), S(0) =>
                           S(20));
   CSB_7 : carry_select_block_NBIT4_2 port map( A(3) => A(27), A(2) => A(26), 
                           A(1) => A(25), A(0) => A(24), B(3) => B(27), B(2) =>
                           B(26), B(1) => B(25), B(0) => B(24), Cin => Ci(6), 
                           S(3) => S(27), S(2) => S(26), S(1) => S(25), S(0) =>
                           S(24));
   CSB_8 : carry_select_block_NBIT4_1 port map( A(3) => A(31), A(2) => A(30), 
                           A(1) => A(29), A(0) => A(28), B(3) => B(31), B(2) =>
                           B(30), B(1) => B(29), B(0) => B(28), Cin => Ci(7), 
                           S(3) => S(31), S(2) => S(30), S(1) => S(29), S(0) =>
                           S(28));

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity carry_generator_NBIT_PER_BLOCK4_NBIT32 is

   port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic;  Co : 
         out std_logic_vector (8 downto 0));

end carry_generator_NBIT_PER_BLOCK4_NBIT32;

architecture SYN_structural of carry_generator_NBIT_PER_BLOCK4_NBIT32 is

   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component pstlaa_NBIT_PER_BLOCK4_NBIT32
      port( Pin, Gin : in std_logic_vector (32 downto 1);  Gout : out 
            std_logic_vector (8 downto 1));
   end component;
   
   signal Co_8_port, Co_7_port, Co_6_port, Co_5_port, Co_4_port, Co_3_port, 
      Co_2_port, Co_1_port, P_31_port, P_30_port, P_29_port, P_28_port, 
      P_27_port, P_26_port, P_25_port, P_24_port, P_23_port, P_22_port, 
      P_21_port, P_20_port, P_19_port, P_18_port, P_17_port, P_16_port, 
      P_15_port, P_14_port, P_13_port, P_12_port, P_11_port, P_10_port, 
      P_9_port, P_8_port, P_7_port, P_6_port, P_5_port, P_4_port, P_3_port, 
      P_2_port, P_1_port, P_0_port, G_31_port, G_30_port, G_29_port, G_28_port,
      G_27_port, G_26_port, G_25_port, G_24_port, G_23_port, G_22_port, 
      G_21_port, G_20_port, G_19_port, G_18_port, G_17_port, G_16_port, 
      G_15_port, G_14_port, G_13_port, G_12_port, G_11_port, G_10_port, 
      G_9_port, G_8_port, G_7_port, G_6_port, G_5_port, G_4_port, G_3_port, 
      G_2_port, G_1_port, G_0_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, 
      n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23 : 
      std_logic;

begin
   Co <= ( Co_8_port, Co_7_port, Co_6_port, Co_5_port, Co_4_port, Co_3_port, 
      Co_2_port, Co_1_port, Ci );
   
   carry_logic : pstlaa_NBIT_PER_BLOCK4_NBIT32 port map( Pin(32) => P_31_port, 
                           Pin(31) => P_30_port, Pin(30) => P_29_port, Pin(29) 
                           => P_28_port, Pin(28) => P_27_port, Pin(27) => 
                           P_26_port, Pin(26) => P_25_port, Pin(25) => 
                           P_24_port, Pin(24) => P_23_port, Pin(23) => 
                           P_22_port, Pin(22) => P_21_port, Pin(21) => 
                           P_20_port, Pin(20) => P_19_port, Pin(19) => 
                           P_18_port, Pin(18) => P_17_port, Pin(17) => 
                           P_16_port, Pin(16) => P_15_port, Pin(15) => 
                           P_14_port, Pin(14) => P_13_port, Pin(13) => 
                           P_12_port, Pin(12) => P_11_port, Pin(11) => 
                           P_10_port, Pin(10) => P_9_port, Pin(9) => P_8_port, 
                           Pin(8) => P_7_port, Pin(7) => P_6_port, Pin(6) => 
                           P_5_port, Pin(5) => P_4_port, Pin(4) => P_3_port, 
                           Pin(3) => P_2_port, Pin(2) => P_1_port, Pin(1) => 
                           P_0_port, Gin(32) => G_31_port, Gin(31) => G_30_port
                           , Gin(30) => G_29_port, Gin(29) => G_28_port, 
                           Gin(28) => G_27_port, Gin(27) => G_26_port, Gin(26) 
                           => G_25_port, Gin(25) => G_24_port, Gin(24) => 
                           G_23_port, Gin(23) => G_22_port, Gin(22) => 
                           G_21_port, Gin(21) => G_20_port, Gin(20) => 
                           G_19_port, Gin(19) => G_18_port, Gin(18) => 
                           G_17_port, Gin(17) => G_16_port, Gin(16) => 
                           G_15_port, Gin(15) => G_14_port, Gin(14) => 
                           G_13_port, Gin(13) => G_12_port, Gin(12) => 
                           G_11_port, Gin(11) => G_10_port, Gin(10) => G_9_port
                           , Gin(9) => G_8_port, Gin(8) => G_7_port, Gin(7) => 
                           G_6_port, Gin(6) => G_5_port, Gin(5) => G_4_port, 
                           Gin(4) => G_3_port, Gin(3) => G_2_port, Gin(2) => 
                           G_1_port, Gin(1) => G_0_port, Gout(8) => Co_8_port, 
                           Gout(7) => Co_7_port, Gout(6) => Co_6_port, Gout(5) 
                           => Co_5_port, Gout(4) => Co_4_port, Gout(3) => 
                           Co_3_port, Gout(2) => Co_2_port, Gout(1) => 
                           Co_1_port);
   U37 : XOR2_X1 port map( A => B(9), B => A(9), Z => P_9_port);
   U38 : XOR2_X1 port map( A => B(8), B => A(8), Z => P_8_port);
   U40 : XOR2_X1 port map( A => B(6), B => A(6), Z => P_6_port);
   U42 : XOR2_X1 port map( A => B(4), B => A(4), Z => P_4_port);
   U44 : XOR2_X1 port map( A => B(31), B => A(31), Z => P_31_port);
   U45 : XOR2_X1 port map( A => B(30), B => A(30), Z => P_30_port);
   U46 : XOR2_X1 port map( A => B(2), B => A(2), Z => P_2_port);
   U47 : XOR2_X1 port map( A => B(29), B => A(29), Z => P_29_port);
   U48 : XOR2_X1 port map( A => B(28), B => A(28), Z => P_28_port);
   U49 : XOR2_X1 port map( A => B(27), B => A(27), Z => P_27_port);
   U50 : XOR2_X1 port map( A => B(26), B => A(26), Z => P_26_port);
   U51 : XOR2_X1 port map( A => B(25), B => A(25), Z => P_25_port);
   U52 : XOR2_X1 port map( A => B(24), B => A(24), Z => P_24_port);
   U54 : XOR2_X1 port map( A => B(22), B => A(22), Z => P_22_port);
   U55 : XOR2_X1 port map( A => B(21), B => A(21), Z => P_21_port);
   U56 : XOR2_X1 port map( A => B(20), B => A(20), Z => P_20_port);
   U57 : XOR2_X1 port map( A => B(1), B => A(1), Z => P_1_port);
   U59 : XOR2_X1 port map( A => B(18), B => A(18), Z => P_18_port);
   U60 : XOR2_X1 port map( A => B(17), B => A(17), Z => P_17_port);
   U61 : XOR2_X1 port map( A => B(16), B => A(16), Z => P_16_port);
   U63 : XOR2_X1 port map( A => B(14), B => A(14), Z => P_14_port);
   U64 : XOR2_X1 port map( A => B(13), B => A(13), Z => P_13_port);
   U65 : XOR2_X1 port map( A => B(12), B => A(12), Z => P_12_port);
   U67 : XOR2_X1 port map( A => B(10), B => A(10), Z => P_10_port);
   U66 : XOR2_X1 port map( A => B(11), B => A(11), Z => P_11_port);
   U43 : XOR2_X1 port map( A => B(3), B => A(3), Z => P_3_port);
   U1 : AND2_X1 port map( A1 => B(3), A2 => A(3), ZN => G_3_port);
   U2 : AND2_X1 port map( A1 => B(11), A2 => A(11), ZN => G_11_port);
   U3 : NAND2_X1 port map( A1 => n5, A2 => B(5), ZN => n6);
   U4 : NAND2_X1 port map( A1 => n4, A2 => A(5), ZN => n7);
   U5 : NAND2_X1 port map( A1 => n6, A2 => n7, ZN => P_5_port);
   U6 : INV_X1 port map( A => B(5), ZN => n4);
   U7 : INV_X1 port map( A => A(5), ZN => n5);
   U8 : NAND2_X1 port map( A1 => B(19), A2 => n9, ZN => n10);
   U9 : NAND2_X1 port map( A1 => n8, A2 => A(19), ZN => n11);
   U10 : NAND2_X1 port map( A1 => n10, A2 => n11, ZN => P_19_port);
   U11 : INV_X1 port map( A => B(19), ZN => n8);
   U12 : INV_X1 port map( A => A(19), ZN => n9);
   U13 : NAND2_X1 port map( A1 => n13, A2 => B(7), ZN => n14);
   U14 : NAND2_X1 port map( A1 => n12, A2 => A(7), ZN => n15);
   U15 : NAND2_X1 port map( A1 => n14, A2 => n15, ZN => P_7_port);
   U16 : INV_X1 port map( A => B(7), ZN => n12);
   U17 : INV_X1 port map( A => A(7), ZN => n13);
   U18 : NAND2_X1 port map( A1 => n17, A2 => B(23), ZN => n18);
   U19 : NAND2_X1 port map( A1 => n16, A2 => A(23), ZN => n19);
   U20 : NAND2_X1 port map( A1 => n19, A2 => n18, ZN => P_23_port);
   U21 : INV_X1 port map( A => B(23), ZN => n16);
   U22 : INV_X1 port map( A => A(23), ZN => n17);
   U23 : NAND2_X1 port map( A1 => n21, A2 => B(15), ZN => n22);
   U24 : NAND2_X1 port map( A1 => n20, A2 => A(15), ZN => n23);
   U25 : NAND2_X1 port map( A1 => n23, A2 => n22, ZN => P_15_port);
   U26 : INV_X1 port map( A => B(15), ZN => n20);
   U27 : INV_X1 port map( A => A(15), ZN => n21);
   U28 : XNOR2_X1 port map( A => n2, B => A(0), ZN => P_0_port);
   U29 : AND2_X1 port map( A1 => B(14), A2 => A(14), ZN => G_14_port);
   U30 : AND2_X1 port map( A1 => B(18), A2 => A(18), ZN => G_18_port);
   U31 : AND2_X1 port map( A1 => B(19), A2 => A(19), ZN => G_19_port);
   U32 : AND2_X1 port map( A1 => B(12), A2 => A(12), ZN => G_12_port);
   U33 : AND2_X1 port map( A1 => B(13), A2 => A(13), ZN => G_13_port);
   U34 : AND2_X1 port map( A1 => B(10), A2 => A(10), ZN => G_10_port);
   U35 : AND2_X1 port map( A1 => B(22), A2 => A(22), ZN => G_22_port);
   U36 : AND2_X1 port map( A1 => B(23), A2 => A(23), ZN => G_23_port);
   U39 : AND2_X1 port map( A1 => B(16), A2 => A(16), ZN => G_16_port);
   U41 : AND2_X1 port map( A1 => B(17), A2 => A(17), ZN => G_17_port);
   U53 : AND2_X1 port map( A1 => B(6), A2 => A(6), ZN => G_6_port);
   U58 : AND2_X1 port map( A1 => B(7), A2 => A(7), ZN => G_7_port);
   U62 : AND2_X1 port map( A1 => B(8), A2 => A(8), ZN => G_8_port);
   U68 : AND2_X1 port map( A1 => B(9), A2 => A(9), ZN => G_9_port);
   U69 : AND2_X1 port map( A1 => B(20), A2 => A(20), ZN => G_20_port);
   U70 : AND2_X1 port map( A1 => B(21), A2 => A(21), ZN => G_21_port);
   U71 : AND2_X1 port map( A1 => B(2), A2 => A(2), ZN => G_2_port);
   U72 : AND2_X1 port map( A1 => B(1), A2 => A(1), ZN => G_1_port);
   U73 : INV_X1 port map( A => B(0), ZN => n2);
   U74 : AND2_X1 port map( A1 => B(26), A2 => A(26), ZN => G_26_port);
   U75 : AND2_X1 port map( A1 => B(27), A2 => A(27), ZN => G_27_port);
   U76 : AND2_X1 port map( A1 => B(5), A2 => A(5), ZN => G_5_port);
   U77 : AND2_X1 port map( A1 => B(24), A2 => A(24), ZN => G_24_port);
   U78 : AND2_X1 port map( A1 => B(25), A2 => A(25), ZN => G_25_port);
   U79 : AND2_X1 port map( A1 => B(30), A2 => A(30), ZN => G_30_port);
   U80 : AND2_X1 port map( A1 => B(31), A2 => A(31), ZN => G_31_port);
   U81 : AND2_X1 port map( A1 => B(4), A2 => A(4), ZN => G_4_port);
   U82 : AND2_X1 port map( A1 => B(29), A2 => A(29), ZN => G_29_port);
   U83 : AND2_X1 port map( A1 => B(28), A2 => A(28), ZN => G_28_port);
   U84 : AND2_X1 port map( A1 => B(15), A2 => A(15), ZN => G_15_port);
   U85 : OAI21_X1 port map( B1 => n2, B2 => n1, A => n3, ZN => G_0_port);
   U86 : INV_X1 port map( A => A(0), ZN => n1);
   U87 : OAI21_X1 port map( B1 => A(0), B2 => B(0), A => Ci, ZN => n3);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_p4_adder.all;

entity p4_adder is

   port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  S : 
         out std_logic_vector (31 downto 0);  Cout : out std_logic);

end p4_adder;

architecture SYN_structural of p4_adder is

   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component sum_generator_NBIT_PER_BLOCK4_NBLOCKS8
      port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic_vector
            (7 downto 0);  S : out std_logic_vector (31 downto 0));
   end component;
   
   component carry_generator_NBIT_PER_BLOCK4_NBIT32
      port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic;  Co :
            out std_logic_vector (8 downto 0));
   end component;
   
   signal C_7_port, C_6_port, C_5_port, C_4_port, C_3_port, C_2_port, C_1_port,
      C_0_port, n1, n2, n3, n4 : std_logic;

begin
   
   carry : carry_generator_NBIT_PER_BLOCK4_NBIT32 port map( A(31) => A(31), 
                           A(30) => A(30), A(29) => A(29), A(28) => A(28), 
                           A(27) => A(27), A(26) => A(26), A(25) => A(25), 
                           A(24) => A(24), A(23) => A(23), A(22) => A(22), 
                           A(21) => A(21), A(20) => A(20), A(19) => A(19), 
                           A(18) => A(18), A(17) => A(17), A(16) => A(16), 
                           A(15) => A(15), A(14) => A(14), A(13) => A(13), 
                           A(12) => A(12), A(11) => A(11), A(10) => A(10), A(9)
                           => A(9), A(8) => A(8), A(7) => A(7), A(6) => A(6), 
                           A(5) => A(5), A(4) => A(4), A(3) => A(3), A(2) => 
                           A(2), A(1) => A(1), A(0) => A(0), B(31) => B(31), 
                           B(30) => B(30), B(29) => B(29), B(28) => B(28), 
                           B(27) => B(27), B(26) => B(26), B(25) => B(25), 
                           B(24) => B(24), B(23) => B(23), B(22) => B(22), 
                           B(21) => B(21), B(20) => B(20), B(19) => B(19), 
                           B(18) => B(18), B(17) => B(17), B(16) => B(16), 
                           B(15) => B(15), B(14) => B(14), B(13) => B(13), 
                           B(12) => B(12), B(11) => B(11), B(10) => B(10), B(9)
                           => B(9), B(8) => B(8), B(7) => B(7), B(6) => B(6), 
                           B(5) => B(5), B(4) => B(4), B(3) => B(3), B(2) => 
                           B(2), B(1) => B(1), B(0) => B(0), Ci => Cin, Co(8) 
                           => Cout, Co(7) => C_7_port, Co(6) => C_6_port, Co(5)
                           => C_5_port, Co(4) => C_4_port, Co(3) => C_3_port, 
                           Co(2) => C_2_port, Co(1) => C_1_port, Co(0) => 
                           C_0_port);
   sum : sum_generator_NBIT_PER_BLOCK4_NBLOCKS8 port map( A(31) => A(31), A(30)
                           => A(30), A(29) => A(29), A(28) => A(28), A(27) => 
                           A(27), A(26) => A(26), A(25) => A(25), A(24) => 
                           A(24), A(23) => n2, A(22) => A(22), A(21) => A(21), 
                           A(20) => A(20), A(19) => A(19), A(18) => A(18), 
                           A(17) => A(17), A(16) => A(16), A(15) => A(15), 
                           A(14) => A(14), A(13) => A(13), A(12) => A(12), 
                           A(11) => A(11), A(10) => A(10), A(9) => A(9), A(8) 
                           => A(8), A(7) => n3, A(6) => A(6), A(5) => A(5), 
                           A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(31) => B(31), B(30) => B(30), 
                           B(29) => B(29), B(28) => B(28), B(27) => B(27), 
                           B(26) => B(26), B(25) => B(25), B(24) => B(24), 
                           B(23) => B(23), B(22) => B(22), B(21) => B(21), 
                           B(20) => B(20), B(19) => B(19), B(18) => B(18), 
                           B(17) => B(17), B(16) => B(16), B(15) => B(15), 
                           B(14) => B(14), B(13) => B(13), B(12) => B(12), 
                           B(11) => B(11), B(10) => B(10), B(9) => B(9), B(8) 
                           => B(8), B(7) => n4, B(6) => B(6), B(5) => n1, B(4) 
                           => B(4), B(3) => B(3), B(2) => B(2), B(1) => B(1), 
                           B(0) => B(0), Ci(7) => C_7_port, Ci(6) => C_6_port, 
                           Ci(5) => C_5_port, Ci(4) => C_4_port, Ci(3) => 
                           C_3_port, Ci(2) => C_2_port, Ci(1) => C_1_port, 
                           Ci(0) => C_0_port, S(31) => S(31), S(30) => S(30), 
                           S(29) => S(29), S(28) => S(28), S(27) => S(27), 
                           S(26) => S(26), S(25) => S(25), S(24) => S(24), 
                           S(23) => S(23), S(22) => S(22), S(21) => S(21), 
                           S(20) => S(20), S(19) => S(19), S(18) => S(18), 
                           S(17) => S(17), S(16) => S(16), S(15) => S(15), 
                           S(14) => S(14), S(13) => S(13), S(12) => S(12), 
                           S(11) => S(11), S(10) => S(10), S(9) => S(9), S(8) 
                           => S(8), S(7) => S(7), S(6) => S(6), S(5) => S(5), 
                           S(4) => S(4), S(3) => S(3), S(2) => S(2), S(1) => 
                           S(1), S(0) => S(0));
   U1 : BUF_X1 port map( A => B(5), Z => n1);
   U2 : BUF_X1 port map( A => A(23), Z => n2);
   U3 : BUF_X1 port map( A => A(7), Z => n3);
   U4 : BUF_X1 port map( A => B(7), Z => n4);

end SYN_structural;
