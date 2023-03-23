
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_MUX21_GENERIC_1 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_MUX21_GENERIC_1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC_1.all;

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

use work.CONV_PACK_MUX21_GENERIC_1.all;

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

use work.CONV_PACK_MUX21_GENERIC_1.all;

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

use work.CONV_PACK_MUX21_GENERIC_1.all;

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

use work.CONV_PACK_MUX21_GENERIC_1.all;

entity MUX21_GENERIC_1 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_1;

architecture SYN_STRUCTURAL of MUX21_GENERIC_1 is

   component MUX21_1
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_2
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_3
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_0
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;

begin
   
   bit_mux_0 : MUX21_0 port map( A => A(0), B => B(0), S => SEL, Y => Y(0));
   bit_mux_1 : MUX21_3 port map( A => A(1), B => B(1), S => SEL, Y => Y(1));
   bit_mux_2 : MUX21_2 port map( A => A(2), B => B(2), S => SEL, Y => Y(2));
   bit_mux_3 : MUX21_1 port map( A => A(3), B => B(3), S => SEL, Y => Y(3));

end SYN_STRUCTURAL;
