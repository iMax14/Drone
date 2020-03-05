----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:58:50 03/05/2020 
-- Design Name: 
-- Module Name:    flipflop1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity flipflop1 is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end flipflop1;

architecture Behavioral of flipflop1 is
signal Q_inter: std_logic:='0';

begin
	process(clk,reset)
		begin 
			if(reset = '0') then                                            			--asynchronous reset (actif bas)
				Q_inter <= '0';
			elsif(rising_edge(clk)) then     
				Q_inter <= D; 
			end if;       
	end process; 
	Q <= Q_inter;
end Behavioral;

