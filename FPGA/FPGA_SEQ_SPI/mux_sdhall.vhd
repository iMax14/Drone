library IEEE;
use IEEE.std_logic_1164.all;

entity mux_sdhall is
	port (
	    pwm         : IN std_logic;
	    reset_mux   : IN std_logic;
	    SDHALL      : IN  std_logic_vector(4 downto 0);--Start Direction h3 h2 h1
		
		 Qh1         : OUT std_logic;
		 Qh2         : OUT std_logic;
		 Qh3         : OUT std_logic;
		 Ql1         : OUT std_logic;
	    Ql2         : OUT std_logic;
		 Ql3         : OUT std_logic
			);
		 
		 end mux_sdhall;



		 
architecture Behavioral of mux_sdhall
is
signal result: std_logic_vector(5 downto 0):="101010";
signal Switchs: std_logic_vector(5 downto 0):="101010";
begin

process(SDHALL, reset_mux,pwm)
	begin 
	
	if reset_mux = '1' then 
		Switchs <= "101010";
	elsif (reset_mux = '0') then
		case SDHALL is
			  when "10001" => Switchs <= "111010";-----------------------------
			  result(0)<=Switchs(0);
			  result(1)<=Switchs(1) and pwm;
			  result(2)<=Switchs(2);
			  result(3)<=Switchs(3);
			  result(4)<=Switchs(4);
			  result(5)<=Switchs(5);
			  
			  when "10010" => Switchs <= "101110";
			  result(0)<=Switchs(0);
			  result(1)<=Switchs(1);
			  result(2)<=Switchs(2);
			  result(3)<=Switchs(3);
			  result(4)<=Switchs(4);
			  result(5)<=Switchs(5) and pwm;
			  
			  when "10011" => Switchs <= "101110";
			  result(0)<=Switchs(0);
			  result(1)<=Switchs(1) and pwm;
			  result(2)<=Switchs(2);
			  result(3)<=Switchs(3);
			  result(4)<=Switchs(4);
			  result(5)<=Switchs(5);
			  
			  when "10100" => Switchs <= "101011";--------SENS HORAIRE---------
			  result(0)<=Switchs(0);
			  result(1)<=Switchs(1);
			  result(2)<=Switchs(2); 
			  result(3)<=Switchs(3)and pwm;
			  result(4)<=Switchs(4);
			  result(5)<=Switchs(5);
			  
			  when "10101" => Switchs <= "111010";
			  result(0)<=Switchs(0);
			  result(1)<=Switchs(1);
			  result(2)<=Switchs(2) ;
			  result(3)<=Switchs(3)and pwm;
			  result(4)<=Switchs(4);
			  result(5)<=Switchs(5);
			
			  when "10110" => Switchs <= "101011";
			  result(0)<=Switchs(0);
			  result(1)<=Switchs(1);
			  result(2)<=Switchs(2);
			  result(3)<=Switchs(3);
			  result(4)<=Switchs(4);
			  result(5)<=Switchs(5) and pwm;
			  
			  when "10111" => Switchs <= "101010";
	        result(0)<=Switchs(0);
			  result(1)<=Switchs(1);
			  result(2)<=Switchs(2);
			  result(3)<=Switchs(3);
			  result(4)<=Switchs(4);
			  result(5)<=Switchs(5);
			  when "10000" => Switchs <= "101010";-----------------------------
			  result(0)<=Switchs(0);
			  result(1)<=Switchs(1);
			  result(2)<=Switchs(2);
			  result(3)<=Switchs(3);
			  result(4)<=Switchs(4);
			  result(5)<=Switchs(5);
			  
			  
			
			  when "11001" => Switchs <= "101011";-----------------------------
			  result(0)<=Switchs(0);
			  result(1)<=Switchs(1);
			  result(2)<=Switchs(2);
			  result(3)<=Switchs(3);
			  result(4)<=Switchs(4);
			  result(5)<=Switchs(5)and pwm;
			  
			  when "11010" => Switchs <= "111010";
			  result(0)<=Switchs(0);
			  result(1)<=Switchs(1);
			  result(2)<=Switchs(2);
			  result(3)<=Switchs(3)and pwm;
			  result(4)<=Switchs(4);
			  result(5)<=Switchs(5);

			  when "11011" => Switchs <= "101011";
			  result(0)<=Switchs(0);
			  result(1)<=Switchs(1);
			  result(2)<=Switchs(2);
			  result(3)<=Switchs(3)and pwm;
			  result(4)<=Switchs(4);
			  result(5)<=Switchs(5);

			  when "11100" => Switchs <= "101110";------SENS ANTI HORAIRE------
			  result(0)<=Switchs(0);
			  result(1)<=Switchs(1)and pwm;
			  result(2)<=Switchs(2);
			  result(3)<=Switchs(3);
			  result(4)<=Switchs(4);
			  result(5)<=Switchs(5);

			  when "11101" => Switchs <= "101110";
			  result(0)<=Switchs(0);
			  result(1)<=Switchs(1);
			  result(2)<=Switchs(2);
			  result(3)<=Switchs(3);
			  result(4)<=Switchs(4);
			  result(5)<=Switchs(5)and pwm;

			  when "11110" => Switchs <= "111010";
			  result(0)<=Switchs(0);
			  result(1)<=Switchs(1)and pwm;
			  result(2)<=Switchs(2);
			  result(3)<=Switchs(3);
			  result(4)<=Switchs(4);
			  result(5)<=Switchs(5);

			  when "11111" => Switchs <= "101010";
			  result(0)<=Switchs(0);
			  result(1)<=Switchs(1);
			  result(2)<=Switchs(2);
			  result(3)<=Switchs(3);
			  result(4)<=Switchs(4);
			  result(5)<=Switchs(5);

			  when "11000" => Switchs <= "101010";------------------------------
			  result(0)<=Switchs(0);
			  result(1)<=Switchs(1);
			  result(2)<=Switchs(2);
			  result(3)<=Switchs(3);
			  result(4)<=Switchs(4);
			  result(5)<=Switchs(5);

			  
			  when others  => Switchs <= "101010";-----autres cas possibles-----
			  result(0)<=Switchs(0);
			  result(1)<=Switchs(1);
			  result(2)<=Switchs(2);
			  result(3)<=Switchs(3);
			  result(4)<=Switchs(4);
			  result(5)<=Switchs(5);

			  
		end case;
	end if;
	Qh1<=result(4);        
	Qh2<=result(2);         
	Qh3<=result(0);         
	Ql1<=result(5);         
	Ql2<=result(3);         
	Ql3<=result(1);          
end process;

end Behavioral;