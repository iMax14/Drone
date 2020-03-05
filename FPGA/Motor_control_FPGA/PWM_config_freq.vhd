----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:06:14 03/03/2020 
-- Design Name: 
-- Module Name:    PWM_config_freq - Behavioral 
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

entity PWM_config_freq is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           user_keys12 : in  STD_LOGIC_VECTOR (1 downto 0);
           freq : out  STD_LOGIC_VECTOR (6 downto 0));
end PWM_config_freq;

architecture Behavioral of PWM_config_freq is
	signal freq_inter : STD_LOGIC_VECTOR (6 downto 0) := "1000000";

begin
	process(clk,reset,user_keys12)
		begin 
			if rising_edge(clk) then
				if (reset = '0') then 
					freq_inter <= "1000000";
				else
					case user_keys12 is
						  when "11" => freq_inter <= "1000000"; 	--f_CLK = 50MHz --> f_PWM = 7.8KHz [(50MHZ/100)/7.8KHz = 64] 
						  when "10" => freq_inter <= "0100000"; 	--f_CLK = 50MHz --> f_PWM = 15.6KHz [(50MHZ/100)/15.6KHz = 32] [KEY 2]
						  when "01" => freq_inter <= "0010000"; 	--f_CLK = 50MHz --> f_PWM = 31.2KHz [(50MHZ/100)/31.2KHz = 16] [KEY 1]
						  when "00" => freq_inter <= "0001000"; 	--f_CLK = 50MHz --> f_PWM = 62.4KHz [(50MHZ/100)/62.4KHz = 8] [KEY 1+2]
						  when others => freq_inter <= "0000000";
					end case;
				end if;
			end if;
	end process;

	freq <= freq_inter;

end Behavioral;

