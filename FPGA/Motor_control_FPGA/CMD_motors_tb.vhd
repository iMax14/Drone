--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:34:50 03/06/2020
-- Design Name:   
-- Module Name:   C:/Users/Maxime/Documents/Drone/FPGA/Motor_control_FPGA/CMD_motors_tb.vhd
-- Project Name:  Motor_control_FPGA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CMD_motors
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY CMD_motors_tb IS
END CMD_motors_tb;
 
ARCHITECTURE behavior OF CMD_motors_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CMD_motors
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         mosi : IN  std_logic;
         sclk : IN  std_logic;
         ssel : IN  std_logic;
         motor_av_g : OUT  std_logic;
		   motor_av_d : out  STD_LOGIC;
		   motor_ar_g : out  STD_LOGIC;
		   motor_ar_d : out  STD_LOGIC
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal mosi : std_logic := '0';
   signal sclk : std_logic := '0';
   signal ssel : std_logic := '0';

 	--Outputs
   signal motor_av_g : std_logic;
   signal motor_av_d : std_logic;
   signal motor_ar_g : std_logic;
   signal motor_ar_d : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns; --50MHz
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CMD_motors PORT MAP (
          clk => clk,
          reset => reset,
          mosi => mosi,
          sclk => sclk,
          ssel => ssel,
          motor_av_g => motor_av_g,
			 motor_av_d => motor_av_d,
          motor_ar_g => motor_ar_g,
          motor_ar_d => motor_ar_d

        );
 
   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
  	reset <= '1', '0' after 31000us;									-- Actif bas
	mosi	<= '0', 
				'1' after 100us, ----------PACKET 1---------- 
				'1' after 110us, 
				'1' after 120us, 
				'1' after 130us,--SFD
				 
				'0' after 140us, 
				'0' after 150us, 
				'1' after 160us, 
				'0' after 170us,--CMD : duty motor 1
				
				'1' after 180us, 
				'1' after 190us, 
				'0' after 200us, 
				'0' after 210us,
				'1' after 220us,
				'0' after 230us,
				'0' after 240us,--VALUE : duty = 100% 
				
				'0' after 250us,--FCS
				
				'1' after 30000us, ----------PACKET 2----------
				'1' after 30010us, 
				'1' after 30020us, 
				'1' after 30030us,--SFD
				
				'0' after 30040us, 
				'1' after 30050us, 
				'1' after 30060us, 
				'0' after 30070us,--CMD : duty motor 2
				
				'1' after 30080us, 
				'1' after 30090us, 
				'0' after 30100us, 
				'0' after 30110us,
				'1' after 30120us,
				'0' after 30130us,
				'0' after 30140us,--VALUE : duty = 100% 
				
				'1' after 30150us,--FCS
				
				'0' after 30160us;--FCS

   ssel	<= '1',		 			----------PACKET 1----------
				'0' after 90us,
				'1' after 285us,
				
				'0' after 29990us,   ----------PACKET 2----------
				'1' after 30160us;

	sclk	<= '0',					----------PACKET 1----------
				'1' after 100us, 
				'0' after 105us, 
				'1' after 110us, 
				'0' after 115us, 
				'1' after 120us, 
				'0' after 125us, 
				'1' after 130us, 
				'0' after 135us, 
				'1' after 140us, 
				'0' after 145us, 
				'1' after 150us, 
				'0' after 155us, 
				'1' after 160us,
				'0' after 165us, 
				'1' after 170us, 
				'0' after 175us, 
				'1' after 180us, 
				'0' after 185us, 
				'1' after 190us, 
				'0' after 195us, 
				'1' after 200us,  
				'0' after 205us, 
				'1' after 210us, 
				'0' after 215us, 
				'1' after 220us, 
				'0' after 225us, 
				'1' after 230us,
				'0' after 235us, 
				'1' after 240us,
				'0' after 245us, 
				'1' after 250us, 
				'0' after 255us,
				
				'1' after 30000us,	----------PACKET 2---------- 
				'0' after 30005us, 
				'1' after 30010us, 
				'0' after 30015us, 
				'1' after 30020us, 
				'0' after 30025us, 
				'1' after 30030us, 
				'0' after 30035us, 
				'1' after 30040us, 
				'0' after 30045us, 
				'1' after 30050us, 
				'0' after 30055us, 
				'1' after 30060us,
				'0' after 30065us, 
				'1' after 30070us, 
				'0' after 30075us, 
				'1' after 30080us, 
				'0' after 30085us, 
				'1' after 30090us, 
				'0' after 30095us, 
				'1' after 30100us, 
				'0' after 30105us, 
				'1' after 30110us, 
				'0' after 30115us, 
				'1' after 30120us, 
				'0' after 30125us, 
				'1' after 30130us,
				'0' after 30135us, 
				'1' after 30140us,
				'0' after 30145us, 
				'1' after 30150us, 
				'0' after 30155us;

--   -- Stimulus process
--   stim_proc: process
--   begin		
--      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for clk_period*10;
--
--      -- insert stimulus here 
--
--      wait;
--   end process;

END;
