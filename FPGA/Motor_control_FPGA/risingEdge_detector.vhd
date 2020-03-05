----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:06:12 03/05/2020 
-- Design Name: 
-- Module Name:    risingEdge_detector - Behavioral 
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

entity risingEdge_detector is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           sclk : in  STD_LOGIC;
           front : out  STD_LOGIC);
end risingEdge_detector;

architecture Behavioral of risingEdge_detector is

component flipflop1
 port(
		clk : in  STD_LOGIC;
		reset : in  STD_LOGIC;
		D : in  STD_LOGIC;
		Q : out  STD_LOGIC
	 );         
	 end component;

component flipflop2
 port(
		clk : in  STD_LOGIC;
		reset : in  STD_LOGIC;
		D1 : in  STD_LOGIC;
		D2 : in  STD_LOGIC;
		Q : out  STD_LOGIC
	 );         
	 end component;

signal invert: std_logic;
signal Q_inter: std_logic;
signal front_inter: std_logic;

begin

flipflop_sys: flipflop1
port map (
    
		clk => clk,
		reset => reset,
		D   => sclk,
		Q   => Q_inter
	 );
invert <= not Q_inter;

flipflop_ris: flipflop2	
port map(
		clk => clk,
		reset => reset,
		D1 => sclk,
		D2 => invert,
		Q => front_inter
);
front <= front_inter;

end Behavioral;

