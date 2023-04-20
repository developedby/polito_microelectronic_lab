library IEEE;

use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity TB_FD_GENERIC is
end TB_FD_GENERIC;

architecture TEST of TB_FD_GENERIC is
    constant NBIT: integer := 16; 
	signal	CK: std_logic :='0';
	signal	RESET: std_logic :='0';
	signal	D: std_logic_vector(NBIT-1 downto 0) := (others => '0');
	signal	QSYNCH: std_logic_vector(NBIT-1 downto 0);
	signal	QASYNCH: std_logic_vector(NBIT-1 downto 0);
	
	component FD_GENERIC is
		generic (
			NBIT: integer
		);
		Port (
			D:	In	std_logic_vector(NBIT-1 downto 0);
			CK:	In	std_logic;
			RESET:	In	std_logic;
			Q:	Out	std_logic_vector(NBIT-1 downto 0)
		);
	end component;

begin 	
	U1 : FD_GENERIC
	Generic Map (NBIT)
	Port Map (D, CK, RESET, QSYNCH); 

	U2 : FD_GENERIC
	Generic Map (NBIT)
	Port Map (D, CK, RESET, QASYNCH); 

	process
	begin
		RESET <= '0';
		D <= (others => '0');
		wait for 0.4 ns;
		D <= (others => '1');
		wait for 0.2 ns;
		RESET <= '1';
		wait for 0.5 ns;
		D <= (others => '0');
		RESET <= '0';
		wait for 0.3 ns;
		D <= (others => '1');
		wait for 0.3 ns;
		D <= (others => '0');
		wait for 0.2 ns;
		D <= (others => '1');
		wait for 0.3 ns;
		RESET <= '1';
		wait for 1 ns;
		RESET <= '0';
		wait;
	end process;

	PCLOCK : process(CK)
	begin
		CK <= not(CK) after 0.5 ns;	
	end process;
end TEST;

configuration FDGENTEST of TB_FD_GENERIC is
   for TEST
      for U1: FD_GENERIC
         use configuration WORK.CFG_FD_GENERIC_SYNC; 
      end for;

      for U2: FD_GENERIC
         use configuration WORK.CFG_FD_GENERIC_ASYNC; 
      end for;

   end for;
end FDGENTEST;
