----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:26:33 03/03/2020 
-- Design Name: 
-- Module Name:    CMD_motors - Behavioral 
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

entity CMD_motors is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  user_keys : in  STD_LOGIC_VECTOR (3 downto 0);
           motor_1 : out  STD_LOGIC);
end CMD_motors;

architecture Behavioral of CMD_motors is


-------------------------------------COMPONENTS--------------------------------------

component PWM_config_duty 
	port	(	clk : in  STD_LOGIC;
				reset : in  STD_LOGIC;
				user_keys : in  STD_LOGIC_VECTOR (3 downto 0);
				duty : out  STD_LOGIC_VECTOR (10 downto 0)
			);
end component;

component PWM_generator 
	port	(	clk : in  STD_LOGIC;
				reset : in  STD_LOGIC;
				duty_pwm : in  STD_LOGIC_VECTOR (10 downto 0);
				pwm : out  STD_LOGIC
			);
end component; 

component pwm
  generic(
      sys_clk         : integer := 50_000_000;										--system clock frequency in Hz
      pwm_freq        : integer := 50;    											--PWM switching frequency in Hz
      bits_resolution : integer := 11);          									--bits of resolution setting the duty cycle (2^11 = 2048)
  port(
      clk       : in  STD_LOGIC;                                   			--system clock
      reset   	 : in  STD_LOGIC;                                    			--asynchronous reset
      duty      : in  STD_LOGIC_VECTOR(bits_resolution-1 downto 0); 			--duty cycle
      pwm_out   : out STD_LOGIC);									          		--pwm outputs
end component;

signal duty_inter  : std_logic_vector(10 downto 0);
signal pwm_inter  : std_logic;

begin


PWM_config_duty_1: PWM_config_duty
	port map( 
	       clk       => clk,
			 reset     => reset,
			 user_keys => user_keys,
			 duty => duty_inter
			); 

PWM_1: pwm 
	port map( 
	       clk       => clk,
			 reset     => reset,
			 duty		  => duty_inter,
			 pwm_out => pwm_inter
			);
			
	motor_1 <= pwm_inter;
	
end Behavioral;

