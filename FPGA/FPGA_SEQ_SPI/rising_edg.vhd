library IEEE;
use IEEE.std_logic_1164.all;

entity rising_edg is
	port ( 
	       clk       : in  std_logic;
			 sclk      : in std_logic;
			 front     : out std_logic
			); 
		 end rising_edg;
		 

		 
architecture Behavioral of rising_edg
is

component flipflop
 port(
     
    Clk :in std_logic;   
    D :in  std_logic;  
	 Q : out std_logic  
	 );         
	 end component;

component rising
 port(
    clk: in std_logic;
	 input1       : in  std_logic;
	 input2       : in  std_logic;
	 output       : out std_logic  
	 );         
	 end component;
	 
signal invert: std_logic;
signal Q: std_logic;
signal sclk2: std_logic;

begin

flipflop_sys: flipflop
port map (
    
    clk => clk,  
    D   => sclk,
	 Q   => Q
	 );
	invert<=not Q;
--	sclk2<=sclk;
flipflop_ris: rising	
port map(
	Clk => clk,
	 input1 => sclk,
	 input2 => invert,
	 output => front
);

end Behavioral;