library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity pwm_generator is
	port (
			 freq_pwm   : IN std_logic_vector(5 downto 0);
			 clk_pwm    : IN  std_logic;
			 reset_pwm  : IN  std_logic;
			 pwm_dc     : IN  std_logic_vector(6 downto 0);--duty cycle
			 pwm        : OUT std_logic
			 );
end pwm_generator;

architecture Behavioral of pwm_generator 
is 
signal clock: std_logic_vector(5 downto 0) := "000000";
signal counter: std_logic_vector(6 downto 0) := "0000000";
signal out_pwm : std_logic:='0';

begin

process (clk_pwm,reset_pwm) 
	begin
   
	if rising_edge(clk_pwm) then
	  if reset_pwm ='1' then 
			out_pwm <='0';
	  end if;
     if(reset_pwm ='0') then
					clock<= clock + 1;
					if (clock>= freq_pwm -1) then  -- nous avons choisit de'avoir une precison au % pret pour notre duty cycle. ainsi le motif va se repeter à la frequence interne sur /100
						   clock<= "000000";         --pour 100KHz, nous faisons le calcul suivant (50MHZ/100)/100Khz=5, on compte donc jusqu'a 5
															-- remet a 0 à la valeur 4 de clock
						if (counter < pwm_dc) then 
							out_pwm <='1'; --sortie à 1 tant que le rapport cyclique n'a pas été atteint 
						else 
							out_pwm <='0';        
						end if;
						
						if (counter >= "1100011") then 
							counter<="0000000"; --remet à 0 a la valeur 99 de counter
						else 
							counter <= counter + 1;                 -- pwm_dc aura atteint la valeur 100
						end if;
					end if;
	  end if;
	end if; 
end process;

pwm <= out_pwm ;


end Behavioral;





