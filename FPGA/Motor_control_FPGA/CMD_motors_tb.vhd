--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:51:49 03/03/2020
-- Design Name:   
-- Module Name:   C:/Users/Maxime/Desktop/Projet_drone/FPGA/Motor_control_FPGA/CMD_motors_tb.vhd
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
         user_keys : IN  std_logic_vector(3 downto 0);
         motor_1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal user_keys : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal motor_1 : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns; --50MHz
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CMD_motors PORT MAP (
          clk => clk,
          reset => reset,
          user_keys => user_keys,
          motor_1 => motor_1
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
	
 	user_keys <="0111", "1011" after 50ms, "1101" after 100ms, "1110" after 150ms;
	reset <='1'; -- Actif bas 

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
