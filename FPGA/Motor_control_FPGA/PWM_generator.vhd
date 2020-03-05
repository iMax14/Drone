----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:52:27 03/02/2020 
-- Design Name: 
-- Module Name:    PWM_generator - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity PWM_generator is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  duty_pwm : in  STD_LOGIC_VECTOR(6 downto 0);
           pwm : out  STD_LOGIC);
end PWM_generator;

architecture Behavioral of PWM_generator is
	signal pwm_clock: STD_LOGIC_VECTOR(13 downto 0) := "00000000000000";
	signal counter: STD_LOGIC_VECTOR(9 downto 0) := "0000000000";
	signal pwm_inter : STD_LOGIC := '0';
	signal divider_pwm_clock : STD_LOGIC_VECTOR (13 downto 0):= "10011100010000"; -- 10000 pour avoir une fréquence de PWM à 50kHz
	
	SIGNAL t_on_cpt  : INTEGER := conv_integer(duty_pwm)/2;                        --number of clocks during t_on [500;1000]


begin
	process (clk,reset) 
		begin
			if rising_edge(clk) then
				if (reset = '0') then --Actif bas 
					pwm_inter <= '0';
				else
					pwm_clock <= pwm_clock + 1;
					if (pwm_clock >= divider_pwm_clock - 1) then   	-- nous avons choisit d'avoir une precison au % pret pour notre duty cycle. Ainsi le motif va se repeter à la frequence interne sur /100
						pwm_clock <= "00000000000000";        			-- pour 50Hz, nous faisons le calcul suivant (50MHZ/100)/50Hz = 10000, on compte donc jusqu'a 10000
																					-- remet a 0 au 9999 de clock
						
						counter <= counter + 1;     					

						if (counter < t_on_cpt) then 
							pwm_inter <= '1'; 				 				--sortie à 1 tant que le rapport cyclique n'a pas été atteint 
						else 
							pwm_inter <= '0';  
							counter <= "0000000000";							
						end if;
					
					end if;				
				end if;				
			end if; 				

	end process;

	pwm <= pwm_inter ;

end Behavioral;



--entity PWM_generator is
--    Port ( clk : in  STD_LOGIC;
--           reset : in  STD_LOGIC;
--			  duty_pwm : in  STD_LOGIC_VECTOR(6 downto 0);
--           pwm : out  STD_LOGIC);
--end PWM_generator;
--
--architecture Behavioral of PWM_generator is
--	signal pwm_clock: STD_LOGIC_VECTOR(13 downto 0) := "00000000000000";
--	signal counter: STD_LOGIC_VECTOR(6 downto 0) := "0000000";
--	signal pwm_inter : STD_LOGIC := '0';
--	signal divider_pwm_clock : STD_LOGIC_VECTOR (13 downto 0):= "10011100010000"; -- 10000 pour avoir une fréquence de PWM à 50kHz
--
--begin
--	process (clk,reset) 
--		begin
--			if rising_edge(clk) then
--				if (reset = '0') then --Actif bas 
--					pwm_inter <= '0';
--				else
--					pwm_clock <= pwm_clock + 1;
--					if (pwm_clock >= divider_pwm_clock - 1) then   	-- nous avons choisit d'avoir une precison au % pret pour notre duty cycle. Ainsi le motif va se repeter à la frequence interne sur /100
--						pwm_clock <= "00000000000000";        			-- pour 50Hz, nous faisons le calcul suivant (50MHZ/100)/50Hz = 10000, on compte donc jusqu'a 10000
--																					-- remet a 0 au 9999 de clock
--						if (counter < duty_pwm) then 
--							pwm_inter <= '1'; 				 				--sortie à 1 tant que le rapport cyclique n'a pas été atteint 
--						else 
--							pwm_inter <= '0';        
--						end if;
--						
--						if (counter >= "1100011") then 
--							counter <= "0000000"; 			 				--remet à 0 la valeur 99 de counter
--						else 
--							counter <= counter + 1;     					-- pwm_dc aura atteint la valeur 100
--						end if;		
--					
--					end if;				
--				end if;				
--			end if; 				
--
--	end process;
--
--	pwm <= pwm_inter ;
--
--end Behavioral;

