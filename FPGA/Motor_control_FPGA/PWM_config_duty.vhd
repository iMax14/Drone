----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:39:18 03/03/2020 
-- Design Name: 
-- Module Name:    PWM_config_duty - Behavioral 
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

entity PWM_config_duty is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           user_keys : in  STD_LOGIC_VECTOR (3 downto 0);
           duty : out  STD_LOGIC_VECTOR (10 downto 0));				-- Duty de 5%/t_on = 1ms --> Duty = 102
																						-- Duty de 10%/t_on = 2ms --> Duty = 205
end PWM_config_duty;

architecture Behavioral of PWM_config_duty is
	signal duty_inter : STD_LOGIC_VECTOR (10 downto 0) := "00001100110"; -- t_on = 1ms    --> Duty = 102 --> Motor arrêté

begin
	process(clk,reset,user_keys)
		begin 
			if rising_edge(clk) then
				if (reset = '0') then 
					duty_inter <= "01111101000";	-- t_on = 1ms    --> Duty = 102 --> Motor arrêté
				else
					case user_keys is
						  when "0111" => duty_inter <= "00001111111"; 		-- t_on = 1.25ms --> Duty = 127 --> 25% de Vmax 	[KEY 1]
						  when "1011" => duty_inter <= "00010011000"; 		-- t_on = 1.5ms  --> Duty = 152 --> 50% de Vmax 	[KEY 2]
						  when "1101" => duty_inter <= "00010110001"; 		-- t_on = 1.75ms --> Duty = 177 --> 75% de Vmax 	[KEY 3]
						  when "1110" => duty_inter <= "00011001101"; 		-- t_on = 2ms    --> Duty = 205 --> Vmax 				[KEY 4]
						  when others => duty_inter <= "00001100110";		-- t_on = 1ms    --> Duty = 102 --> Motor arrêté
					end case;
				end if;
			end if;
	end process;

	duty <= duty_inter;

end Behavioral;

