library IEEE;
use IEEE.std_logic_1164.all; 
use WORK.constants.all;

entity FD_GENERIC is
	generic (
		NBIT: integer := numBit
	);
	Port (
		D:	In	std_logic_vector(NBIT-1 downto 0);
		CK:	In	std_logic;
		RESET:	In	std_logic;
		Q:	Out	std_logic_vector(NBIT-1 downto 0)
	);
end FD_GENERIC;


architecture SYNCHRONOUS of FD_GENERIC is -- flip flop D with syncronous reset

begin
	PSYNCH: process(CK,RESET)
	begin
	  if CK'event and CK='1' then -- positive edge triggered:
	    if RESET='1' then -- active high reset 
	      Q <= (others => '0');
	    else
	      Q <= D;
	    end if;
	  end if;
	end process;

end SYNCHRONOUS;

architecture ASYNCHRONOUS of FD_GENERIC is -- flip flop D with asyncronous reset

begin
	
	PASYNCH: process(CK,RESET)
	begin
	  if RESET='1' then
	    Q <= (others => '0');
	  elsif CK'event and CK='1' then
	    Q <= D;
	  end if;
	end process;

end ASYNCHRONOUS;


configuration CFG_FD_GENERIC_SYNC of FD_GENERIC is
	for SYNCHRONOUS
	end for;
end CFG_FD_GENERIC_SYNC;


configuration CFG_FD_GENERIC_ASYNC of FD_GENERIC is
	for ASYNCHRONOUS
	end for;
end CFG_FD_GENERIC_ASYNC;


