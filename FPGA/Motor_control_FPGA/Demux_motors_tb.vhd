--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:17:13 03/06/2020
-- Design Name:   
-- Module Name:   C:/Users/Maxime/Documents/Drone/FPGA/Motor_control_FPGA/Demux_motors_tb.vhd
-- Project Name:  Motor_control_FPGA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Demux_motors
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
 
ENTITY Demux_motors_tb IS
END Demux_motors_tb;
 
ARCHITECTURE behavior OF Demux_motors_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Demux_motors
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         duty : IN  std_logic_vector(10 downto 0);
         sel : IN  std_logic_vector(2 downto 0);
         duty_M1 : OUT  std_logic_vector(10 downto 0);
         duty_M2 : OUT  std_logic_vector(10 downto 0);
         duty_M3 : OUT  std_logic_vector(10 downto 0);
         duty_M4 : OUT  std_logic_vector(10 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal duty : std_logic_vector(10 downto 0) := (others => '0');
   signal sel : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal duty_M1 : std_logic_vector(10 downto 0);
   signal duty_M2 : std_logic_vector(10 downto 0);
   signal duty_M3 : std_logic_vector(10 downto 0);
   signal duty_M4 : std_logic_vector(10 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns; --50MHz
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Demux_motors PORT MAP (
          clk => clk,
          reset => reset,
          duty => duty,
          sel => sel,
          duty_M1 => duty_M1,
          duty_M2 => duty_M2,
          duty_M3 => duty_M3,
          duty_M4 => duty_M4
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
	
	reset <= '1','0' after 25us,'1' after 30us;									-- Actif bas
	sel <= "001",									-- Motor 1
			 "100" after 50us;					-- Motor 4
			 
	duty <= 	"00001000000",  					-- Duty = 64%
				"00001010000" after 50us; 		-- Duty = 80%
				

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
