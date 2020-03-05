library IEEE;
use IEEE.std_logic_1164.all;

entity rising is
	port ( 
	       clk          : in std_logic;
	       input1       : in  std_logic;
			 input2       : in  std_logic;
			 output       : out std_logic
			); 
		 end rising;
		 


architecture Behavioral of rising
is

begin
process(clk, input1,input2)
	begin 

if (clk' event and clk='1') then
	if (input1='1' and input2='1') then
		output<='1';
	else 
		output<='0';
	end if;
end if; 
end process;
end Behavioral;