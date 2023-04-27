
    library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;
    use WORK.constants.all;
    
    -- Booth Multiplier
    entity BOOTHMUL is 
      generic (
        NBIT: integer := numBit); 
      port (
        A : in  std_logic_vector(NBIT-1 downto 0);
        B : in  std_logic_vector(NBIT-1 downto 0);
        P : out std_logic_vector((2*NBIT)-1 downto 0));
    end entity; 
    
    architecture mixed of BOOTHMUL is
    
      signal A_REG : std_logic_vector(NBIT-1 downto 0);
      signal B_REG : std_logic_vector(NBIT-1 downto 0);
      signal P_REG : std_logic_vector((2*NBIT)-1 downto 0);
      signal ACC : std_logic_vector((2*NBIT)-1 downto 0);
      signal SEL : std_logic;
      signal TEMP : std_logic_vector(NBIT-1 downto 0);
    
      component RCA is 
        generic (NBIT: integer := numBit);
        --generic (NBIT: integer := numBit);
        Port (
          A:  in  std_logic_vector(NBIT-1 downto 0);
          B:  in  std_logic_vector(NBIT-1 downto 0);
          Ci:  in  std_logic;
          S:  out std_logic_vector(NBIT-1 downto 0);
          Co: out std_logic);
      end component; 
    
      component HA 
        Port (
          A:  in  std_logic;
          B:  in  std_logic;
          S:  out std_logic;
          Co: out std_logic);
      end component; 
    
    begin
    
      A_REG <= A;
    
      B_REG <= B;
    
      ACC <= (OTHERS => '0');
      SEL := '0';
      TEMP := (OTHERS => '0');
        
        -- Booth's algorithm
        for i in 0 to NBIT-1 loop
          case B_REG(NBIT-1) is
            when '0' =>
              -- Shift right and add A to accumulator
              TEMP := A_REG(NBIT-1);
              A_REG <= '0' & A_REG(NBIT-1 downto 1);
              ACC := ACC(2*NBIT-1 downto 1) & TEMP;
            when '1' =>
              -- Shift right and sub A from accumulator
              TEMP := NOT A_REG(NBIT-1);
              A_REG <= '1' & A_REG(NBIT-1 downto 1);
              ACC := ACC(2*NBIT-1 downto 1) & TEMP;
          end case;
          
          -- Perform add/sub using RCA
          RippliCarry: for j in 0 to NBIT-1 generate 
            RCA1 : RCA
            generic map (NBIT => 1)
              Port Map (
                A => ACC(j) & '0',
                B => B_REG(j) & SEL,
                Ci => '0',
                S => TEMP,
                Co => SEL
              ); 
            end generate;
    
          SEL := SEL;
        end loop;
    
        P_REG <= ACC; -- Output the result to P register
      end mixed
