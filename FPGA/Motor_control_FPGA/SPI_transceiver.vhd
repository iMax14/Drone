----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:20:01 03/05/2020 
-- Design Name: 
-- Module Name:    SPI_transceiver - Behavioral 
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

entity SPI_transceiver is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           mosi : in  STD_LOGIC;
           sclk : in  STD_LOGIC;
           ssel : in  STD_LOGIC;
           spi_packet : out  STD_LOGIC_VECTOR (15 downto 0));
end SPI_transceiver;

architecture Behavioral of SPI_transceiver is

-------------------------------------COMPONENTS--------------------------------------

component SPI_buffer 
	port	( clk : in  STD_LOGIC;
			  reset : in  STD_LOGIC;
			  mosi : in  STD_LOGIC;
			  sclk : in  STD_LOGIC;
			  ssel : in  STD_LOGIC;
			  mosi_out : out  STD_LOGIC;
			  sclk_out : out  STD_LOGIC;
			  ssel_out : out  STD_LOGIC
			);
end component;

component SPI_receiver
	port	( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           sclk : in  STD_LOGIC;
           ssel : in  STD_LOGIC;
           mosi : in  STD_LOGIC;
           spi_packet : out  STD_LOGIC_VECTOR (15 downto 0)
			);
end component;

component risingEdge_detector
	port	( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           sclk : in  STD_LOGIC;
           front : out  STD_LOGIC
			);
end component;

signal mosi_inter  : std_logic;
signal sclk_inter  : std_logic;
signal sclk_inter_2  : std_logic;
signal ssel_inter  : std_logic;
signal spi_packet_inter : STD_LOGIC_VECTOR (15 downto 0);

begin

SPI_buffer_1: SPI_buffer
	port map( 
				 clk       => clk,
				 reset     => reset,
				 mosi 	  => mosi,
				 sclk 	  => sclk,
				 ssel 	  => ssel,
				 mosi_out  => mosi_inter,
				 sclk_out  => sclk_inter,
				 ssel_out  => ssel_inter
				); 

risingEdge_detector_1: risingEdge_detector
	port map( 
				 clk       => clk,
				 reset     => reset,
				 sclk 	  => sclk_inter,
				 front  	  => sclk_inter_2
				); 

SPI_receiver_1: SPI_receiver
	port map( 
				 clk       => clk,
				 reset     => reset,
				 sclk 	  => sclk_inter_2,
				 ssel  	  => ssel_inter,
				 mosi		  => mosi_inter,
				 spi_packet=> spi_packet_inter
				); 			
				
spi_packet <= spi_packet_inter;	
				
end Behavioral;

