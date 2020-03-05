library IEEE;
use IEEE.std_logic_1164.all;

entity mux_freq is
	port (
	    clk          :In std_logic;
	    reset_freq   : IN std_logic;
	    FREQ         : IN  std_logic_vector(1 downto 0);--frequence reçue de la STM32
		 end_freq     : OUT std_logic_vector(5 downto 0)
			);
		 
		 end mux_freq;

		 
architecture Behavioral of mux_freq
is
begin

process(clk, FREQ, reset_freq)
	begin 
	if (rising_edge(clk)) then
	if reset_freq = '1' then 
		end_freq <= "000000";
	elsif (reset_freq = '0') then
		case FREQ is
			  when "00" => end_freq <= "011111"; --Clk_systeme 50MHz --> 50KHz (5MHz pour dc), dc compteur 10
			  when "01" => end_freq <= "000101"; --Clk_systeme 50MHz --> 100KHz (10MHz pour dc) , dc compteur 5
			  when "10" => end_freq <= "000011"; --Clk_systeme 50MHz --> 166.66 KHz (16MHz pour dc), dc compteur 3
			  when "11" => end_freq <= "000010"; --Clk_systeme 50MHz --> 250KHz (25MHz pour dc), dc compteur 2
			  when others  => end_freq <= "000000";-----autres cas possibles-----
			  
		end case;
	end if;
	end if;
end process;

end Behavioral;
