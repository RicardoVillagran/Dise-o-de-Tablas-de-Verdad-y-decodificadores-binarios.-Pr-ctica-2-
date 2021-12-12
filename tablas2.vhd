library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity tablas2 is 
Port (b: in  STD_LOGIC_VECTOR (3 downto 0);
		a: in  STD_LOGIC_VECTOR (3 downto 0);
		l: out STD_LOGIC_VECTOR (6 downto 0);
		s: out STD_LOGIC_VECTOR (6 downto 0));
end tablas2;
architecture Behavioral of tablas2 is 
begin 
	with b select 
	s <="1000000" when "0000",   
	"0001000" when "0111",  
	"0001000" when "1010",   
	"0001000" when "1011",   
	"0001000" when "1100",  
	"0001000" when "1101", 
	"0001000" when "1110", 
	"0001000" when "1111", 
	"0000110" when others;     
	with a select
l <= "1111110" when  "0000",  
	  "1111110" when others;
end Behavioral;