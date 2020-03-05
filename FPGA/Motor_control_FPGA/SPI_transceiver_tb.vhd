--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:31:40 03/05/2020
-- Design Name:   
-- Module Name:   C:/Users/Maxime/Documents/Drone/FPGA/Motor_control_FPGA/SPI_transceiver_tb.vhd
-- Project Name:  Motor_control_FPGA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SPI_transceiver
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
 
ENTITY SPI_transceiver_tb IS
END SPI_transceiver_tb;
 
ARCHITECTURE behavior OF SPI_transceiver_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SPI_transceiver
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         mosi : IN  std_logic;
         sclk : IN  std_logic;
         ssel : IN  std_logic;
         spi_packet : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal mosi : std_logic := '0';
   signal sclk : std_logic := '0';
   signal ssel : std_logic := '0';

 	--Outputs
   signal spi_packet : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns; --50MHz
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SPI_transceiver PORT MAP (
          clk => clk,
          reset => reset,
          mosi => mosi,
          sclk => sclk,
          ssel => ssel,
          spi_packet => spi_packet
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;

 	reset <= '1';									-- Actif bas
	
	mosi	<= '0', 
				'1' after 100us, 
				'1' after 110us, 
				'1' after 120us, 
				'1' after 130us, --sfd
				'0' after 140us, 
				'0' after 150us, 
				'0' after 160us, 
				'1' after 170us,--CMD
				'0' after 180us, 
				'0' after 190us, 
				'0' after 200us, 
				'0' after 210us,
				'0' after 220us,
				'0' after 230us,
				'1' after 240us,
				'0' after 250us;--value+parity
	
   ssel	<= '1',
				'0' after 90us,
				'1' after 285us;

	sclk	<= '0',
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
				'0' after 255us;
	
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
