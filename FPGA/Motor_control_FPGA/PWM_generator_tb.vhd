--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:03:45 03/04/2020
-- Design Name:   
-- Module Name:   C:/Users/Maxime/Desktop/Projet_drone/FPGA/Motor_control_FPGA/PWM_generator_tb.vhd
-- Project Name:  Motor_control_FPGA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PWM_generator
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
 
ENTITY PWM_generator_tb IS
END PWM_generator_tb;
 
ARCHITECTURE behavior OF PWM_generator_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PWM_generator
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
			duty_pwm : in  STD_LOGIC_VECTOR (6 downto 0);
         pwm : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal duty_pwm : std_logic_vector(6 downto 0) := (others => '0');

 	--Outputs
   signal pwm : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns; --50MHz
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PWM_generator PORT MAP (
          clk => clk,
          reset => reset,
          duty_pwm => duty_pwm,
          pwm => pwm
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
	reset <='1'; -- Actif bas 
	duty_pwm <= "1000000"; -- t_on = 1.25ms
	
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
