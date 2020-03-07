----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:52:49 03/06/2020 
-- Design Name: 
-- Module Name:    Demux_motors - Behavioral 
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

entity Demux_motors is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           duty : in  STD_LOGIC_VECTOR (10 downto 0);
           sel : in  STD_LOGIC_VECTOR (2 downto 0);
           duty_M1 : out  STD_LOGIC_VECTOR (10 downto 0);
			  duty_M2 : out  STD_LOGIC_VECTOR (10 downto 0);
           duty_M3 : out  STD_LOGIC_VECTOR (10 downto 0);
           duty_M4 : out  STD_LOGIC_VECTOR (10 downto 0));
end Demux_motors;

architecture Behavioral of Demux_motors is
signal duty_M1_inter : STD_LOGIC_VECTOR (10 downto 0) := "00000000000"; 
signal duty_M2_inter : STD_LOGIC_VECTOR (10 downto 0) := "00000000000"; 
signal duty_M3_inter : STD_LOGIC_VECTOR (10 downto 0) := "00000000000"; 
signal duty_M4_inter : STD_LOGIC_VECTOR (10 downto 0) := "00000000000"; 

begin
	process(clk,reset,sel)
		begin
			if(reset = '0') then                                            			--asynchronous reset (actif bas)
				duty_M1_inter <= "00000000000";	
				duty_M2_inter <= "00000000000";
				duty_M3_inter <= "00000000000";
				duty_M4_inter <= "00000000000";			
			elsif(rising_edge(clk)) then                                
				case sel is
					  when "001" =>  duty_M1_inter <= duty;   
					  when "010" =>  duty_M2_inter <= duty; 		  
					  when "011" =>  duty_M3_inter <= duty; 	  
					  when "100" =>  duty_M4_inter <= duty; 				  
					  when others => duty_M1_inter <= "00000000000";	
										  duty_M2_inter <= "00000000000";
										  duty_M3_inter <= "00000000000";
										  duty_M4_inter <= "00000000000";
				end case;
			end if;
	end process;

	duty_M1 <= duty_M1_inter;
	duty_M2 <= duty_M2_inter;
	duty_M3 <= duty_M3_inter;
	duty_M4 <= duty_M4_inter;

end Behavioral;

