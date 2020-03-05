----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:48:23 03/05/2020 
-- Design Name: 
-- Module Name:    SPI_buffer - Behavioral 
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

entity SPI_buffer is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           mosi : in  STD_LOGIC;
           sclk : in  STD_LOGIC;
           ssel : in  STD_LOGIC;
           mosi_out : out  STD_LOGIC;
           sclk_out : out  STD_LOGIC;
           ssel_out : out  STD_LOGIC);
end SPI_buffer;

architecture Behavioral of SPI_buffer is
signal mosi_inter1: std_logic:='0';
signal mosi_inter2: std_logic:='0';
signal sclk_inter1: std_logic:='0';
signal sclk_inter2: std_logic:='0';
signal ssel_inter1: std_logic:='1';
signal ssel_inter2: std_logic:='1';

begin
	process(clk,reset)
	begin 
		if(reset = '0') then                                            			--asynchronous reset (actif bas)
			mosi_inter2 <= '0';
			sclk_inter2 <= '0';
			ssel_inter2 <= '1';	
		elsif(rising_edge(clk)) then     
			mosi_inter1 <= mosi;
			sclk_inter1 <= sclk;
			ssel_inter1 <= ssel;

			mosi_inter2 <= mosi_inter1;
			sclk_inter2 <= sclk_inter1;
			ssel_inter2 <= ssel_inter1;
		end if;
	end process;
	mosi_out <= mosi_inter2;
	sclk_out <= sclk_inter2;
	ssel_out <= ssel_inter2;

end Behavioral;

