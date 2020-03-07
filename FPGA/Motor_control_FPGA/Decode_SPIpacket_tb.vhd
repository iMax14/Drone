--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:36:02 03/06/2020
-- Design Name:   
-- Module Name:   C:/Users/Maxime/Documents/Drone/FPGA/Motor_control_FPGA/Decode_SPIpacket_tb.vhd
-- Project Name:  Motor_control_FPGA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Decode_SPIpacket
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
 
ENTITY Decode_SPIpacket_tb IS
END Decode_SPIpacket_tb;
 
ARCHITECTURE behavior OF Decode_SPIpacket_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Decode_SPIpacket
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         SPI_packet : IN  std_logic_vector(15 downto 0);
			sel : out  STD_LOGIC_VECTOR (2 downto 0);
         duty : OUT  std_logic_vector(10 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal SPI_packet : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
	signal sel : std_logic_vector(2 downto 0);
   signal duty : std_logic_vector(10 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns; --50MHz
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Decode_SPIpacket PORT MAP (
          clk => clk,
          reset => reset,
          SPI_packet => SPI_packet,
			 sel => sel,
          duty => duty
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
	
  	reset <= '1';												-- Actif bas
	
	SPI_packet <= "1111001010100001",					-- Set Duty = 80% / Motor 1
					  "1101001010100000"	after 50us, 	-- SFD corrompu
					  "1111110100000001"	after 100us, 	-- Start motor 4
					  "1111001010100000"	after 150us, 	-- FCS corrompu
					  "1111110000000000"	after 200us, 	-- CMD interdite
					  "1111001010000000"	after 250us; 	-- Set Duty = 64% / Motor 1

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
