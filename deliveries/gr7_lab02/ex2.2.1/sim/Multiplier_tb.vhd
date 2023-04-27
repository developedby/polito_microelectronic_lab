library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use WORK.constants.all;

entity MULTIPLIER_tb is
end MULTIPLIER_tb;

architecture TEST of MULTIPLIER_tb is

  --  input	 
  signal A_mp_i : std_logic_vector(numBit-1 downto 0) := (others => '0');
  signal B_mp_i : std_logic_vector(numBit-1 downto 0) := (others => '0');

  -- output
  signal Y_mp_i : std_logic_vector(2*numBit-1 downto 0);

  -- MUL component declaration
  component BOOTHMUL is 
    generic (
      NBIT: integer := 32); 
    port (
      A : in  std_logic_vector(NBIT-1 downto 0);
      B : in  std_logic_vector(NBIT-1 downto 0);
      P : out std_logic_vector((2*NBIT)-1 downto 0));
  end component; 

begin

  -- MUL instantiation
  mul_inst : BOOTHMUL
    generic map (NBIT => numBit)
    port map (
      A => A_mp_i,
      B => B_mp_i,
      P => Y_mp_i
    );

  -- PROCESS FOR TESTING TEST - COMLETE CYCLE ---------
  test: process
  begin

    -- cycle for operand A
    NumROW : for i in 0 to 2**(numBit)-1 loop

      -- cycle for operand B
      NumCOL : for j in 0 to 2**(numBit)-1 loop
        wait for 10 ns;
        B_mp_i <= B_mp_i + '1';
      end loop NumCOL ;

      A_mp_i <= A_mp_i + '1'; 	
    end loop NumROW ;

    wait;          
  end process test;

end TEST;
