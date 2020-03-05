----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:15:05 03/05/2020 
-- Design Name: 
-- Module Name:    SPI_receiver - Behavioral 
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

entity SPI_receiver is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           sclk : in  STD_LOGIC;
           ssel : in  STD_LOGIC;
           mosi : in  STD_LOGIC;
           spi_packet : out  STD_LOGIC_VECTOR (15 downto 0));
end SPI_receiver;

architecture Behavioral of SPI_receiver is

signal spi_packet_inter : STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";  
signal data       : STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";  
signal i          : integer :=16;
  
begin
	process(clk,reset, sclk,ssel, mosi)
	begin 
	if(reset = '0') then                                            			--asynchronous reset (actif bas)
		spi_packet_inter <= "0000000000000000";
	elsif(rising_edge(clk)) then    	 
		if( ssel='0') then 
			if (sclk='1' ) then
				if (i>0 ) then
					data(i-1) <= mosi;
					i <= i-1;
				 else
					i <= 16;
					spi_packet_inter <= data;
				end if;
			end if;
		end if;
		if (ssel='1' ) then 	--and compteur=16
			spi_packet_inter <= data;
			i <= 16;
		end if;
	end if;
	end process;
  
	spi_packet <= spi_packet_inter;

end Behavioral;

