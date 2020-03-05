library IEEE;
use IEEE.std_logic_1164.all;

entity trait_spi is
	port ( 
	       clk       : in  std_logic;
	       test_data  : in  STD_LOGIC_VECTOR (15 downto 0);
			 start_R    : out std_logic;
			 start_L    : out std_logic;
			 pwm_dc_L   : out std_logic_vector(6 downto 0);
			 pwm_dc_R   : out std_logic_vector(6 downto 0);
			 dir_R      : out std_logic;
			 dir_L      : out std_logic;
			 freq_recue : out std_logic_vector(1 downto 0) 
			); 
		 end trait_spi;
		 

		 
architecture Behavioral of trait_spi
is

signal error        : std_logic_vector(6 downto 0):="0000000";
signal sigstart_R   : std_logic:='0';
signal sigstart_L   : std_logic:='0';
signal sigpwm_dc_L  : std_logic_vector(6 downto 0):="0000000";
signal sigpwm_dc_R  : std_logic_vector(6 downto 0):="0000000";
signal sigdir_R     : std_logic:='0';
signal sigdir_L     : std_logic:='0';
signal sigfreq_recue: std_logic_vector(1 downto 0):="00";
signal CMD        : STD_LOGIC_VECTOR(3 downto 0):="0000";
signal SFD        : STD_LOGIC_VECTOR(3 downto 0):="0000";

signal Control_SFD: STD_LOGIC:='0';   
signal Control_CMD: STD_LOGIC:='0';                      -- CMD="1" commande valide, CMD="0" commande réservée    
signal Control_FCS: STD_LOGIC:='0';     -- FCS="1" parité valide, FCS="0" parité non valide, erreur de transmission    
signal result     : STD_LOGIC_vector(2 downto 0):="000";

begin

process(test_data,clk,sigstart_R,sigstart_L,sigpwm_dc_L,sigpwm_dc_R,sigdir_R,sigdir_L,sigfreq_recue,SFD, CMD)
	begin 




if (rising_edge(clk)) then

case SFD is
	when "1111" => Control_SFD <= '1' ;
	when others => Control_SFD <= '0' ;
end case;				
						
case cmd is
	when "0000" => Control_CMD <= '0';-----------------------------
	when "0011" => Control_CMD <= '0';
	when "0101" => Control_CMD <= '0';
	when "0110" => Control_CMD <= '0';--------interdit---------
	when "1000" => Control_CMD <= '0';
	when "1011" => Control_CMD <= '0';
	when "1101" => Control_CMD <= '0';
	when "1110" => Control_CMD <= '0';-----------------------------	
	when "0001" => Control_CMD <= '1';-----------------------------
	when "0010" => Control_CMD <= '1';
	when "0100" => Control_CMD <= '1';
	when "0111" => Control_CMD <= '1';------commande ok------
	when "1001" => Control_CMD <= '1';
	when "1010" => Control_CMD <= '1';
	when "1100" => Control_CMD <= '1';
	when "1111" => Control_CMD <= '1';------------------------------	  
	when others => Control_CMD <= '0';-----autres cas possibles-----
end case;			

if((test_data(11) xor test_data(10) xor test_data(9) xor test_data(8)xor test_data(7) xor test_data(6) xor test_data(5) xor test_data(4) xor test_data(3) xor test_data(2) xor test_data(1) xor test_data(0))='0') then
		Control_FCS<='1';			
else 
		Control_FCS<='0';
end if;
result(2) <= control_sfd;	
result(1) <= control_cmd;
result(0) <= control_fcs;		
--if (result="110" or result="111") then 
case cmd is
when "0001" => sigstart_R      <= test_data(1);---------moteur droit-----------
when "0010" => sigdir_R        <= test_data(1);
when "0100" => 
               
               sigfreq_recue(1)<= test_data(2); 
               sigfreq_recue(0)<= test_data(1) ;
when "0111" => sigpwm_dc_R(6)  <= test_data(7);
               sigpwm_dc_R(5)  <= test_data(6);
					sigpwm_dc_R(4)  <= test_data(5);
               sigpwm_dc_R(3)  <= test_data(4);
               sigpwm_dc_R(2)  <= test_data(3);
               sigpwm_dc_R(1)  <= test_data(2);
               sigpwm_dc_R(0)  <= test_data(1); 

when "1001" => sigstart_L      <= test_data(1);---------moteur gauche-----------
when "1010" => sigdir_L        <= test_data(1);
when "1100" =>     
               sigfreq_recue(1)<= test_data(2); 
               sigfreq_recue(0)<= test_data(1) ;
when "1111" => sigpwm_dc_L(6)  <= test_data(7);
               sigpwm_dc_L(5)  <= test_data(6);
               sigpwm_dc_L(4)  <= test_data(5);
               sigpwm_dc_L(3)  <= test_data(4);
               sigpwm_dc_L(2)  <= test_data(3);
               sigpwm_dc_L(1)  <= test_data(2);
               sigpwm_dc_L(0)  <= test_data(1) ; 
when "0000" =>        error <= "1111111";
when "0011" =>        error <= "1111111";
when "0101" =>        error <= "1111111";
when "0110" =>        error <= "1111111";
when "1000" =>        error <= "1111111";
when "1011" =>        error <= "1111111";
when "1101" =>        error <= "1111111";
when "1110" =>        error <= "1111111";			  
when others =>        error <= "1111111";   -----autres cas possibles-----
end case;

end if;
--end if;

SFD(3)<=test_data(15);	
SFD(2)<=test_data(14);	
SFD(1)<=test_data(13);	
SFD(0)<=test_data(12);
cmd(3)<= test_data(11);
cmd(2)<= test_data(10);
cmd(1)<= test_data(9);
cmd(0)<= test_data(8);
start_R      <=    sigstart_R; 
dir_R        <=    sigdir_R;
freq_recue   <=    sigfreq_recue;
start_L      <=    sigstart_L;
dir_L        <=    sigdir_L;
pwm_dc_L     <=    sigpwm_dc_L; 
pwm_dc_R     <=    sigpwm_dc_R;



end process;

end Behavioral;