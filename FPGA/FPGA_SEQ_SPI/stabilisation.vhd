
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity stabilisation is
port(    clk          : in     STD_LOGIC;
    sclk         : in     STD_LOGIC;         --CLK stm32
    ssel         : in     STD_LOGIC;         
    simo         : in     STD_LOGIC;         --Slave In Master Out
	 simo_stab    : out    STD_LOGIC; 
    sclk_stab    : out    STD_LOGIC;
    ssel_stab    : out    STD_LOGIC
	 );         
end stabilisation;

architecture Behavioral of stabilisation is
signal simo1: std_logic:='0';
signal simo2: std_logic:='0';
signal sclk1: std_logic:='0';
signal sclk2: std_logic:='0';
signal ssel1: std_logic:='1';
signal ssel2: std_logic:='1';
begin
process(clk)
begin 

if rising_edge(clk) then
	simo1<=simo;
	sclk1<=sclk;
	ssel1<=ssel;
	simo2<=simo1;
	sclk2<=sclk1;
	ssel2<=ssel1;
end if;
 simo_stab<=simo2;
sclk_stab<=sclk2;
ssel_stab<=ssel2;
end process;


end Behavioral;

