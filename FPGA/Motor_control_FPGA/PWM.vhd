----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:07:32 03/04/2020 
-- Design Name: 
-- Module Name:    PWM - Behavioral 
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
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

entity pwm is
  generic(
      sys_clk         : integer := 50_000_000;										--system clock frequency in Hz
      pwm_freq        : integer := 50;    											--PWM switching frequency in Hz
      bits_resolution : integer := 11);          									--bits of resolution setting the duty cycle (2^11 = 2048)
  port(
      clk       : in  STD_LOGIC;                                   			--system clock
      reset   	 : in  STD_LOGIC;                                    			--asynchronous reset
      duty      : in  STD_LOGIC_VECTOR(bits_resolution-1 downto 0); 			--duty cycle
      pwm_out   : out STD_LOGIC);									          		--pwm outputs
end pwm;

architecture logic of pwm is
	signal shift        : STD_LOGIC_VECTOR(10 downto 0):="00001100110";
  --constant shift  : integer := 102;                          --Facteur pour passer d'une échelle 0/100 à 0/2048
  constant period  : integer := sys_clk/pwm_freq;                          --number of clocks in one pwm period
  --type counters is array (0 to 0) of integer range 0 to period - 1; --data type for array of period counters
  signal count     : integer range 0 to period - 1 := 0;                            --array of period counters
  signal half_duty : integer range 0 to period/2 := 0;                     --number of clocks in 1/2 duty cycle

begin
  process(clk, reset)
  
  begin
    if(reset = '0') then                                            			--asynchronous reset (actif bas)
      count <= 0;                                            	--clear counter
      pwm_out <= '0';                                        					--clear pwm output
    elsif(rising_edge(clk)) then                                
      half_duty <= conv_integer(duty+shift)*period/(2**bits_resolution)/2;     	--determine clocks in 1/2 duty cycle
		if(count = period - 1) then                  			--end of period reached
		 count <= 0;                                                      	--reset counter
		else                                                              	--end of period not reached
		 count <= count + 1;                                        			--increment counter
		end if;	
		
		if(count = half_duty) then                                      		--phase's falling edge reached
		 pwm_out <= '0';                                                 		--deassert the pwm output
		elsif(count = period - half_duty) then                         		--phase's rising edge reached
		 pwm_out <= '1';                                                 		--assert the pwm output
		end if;  
    end if;
  
  end process;
  
end logic;
