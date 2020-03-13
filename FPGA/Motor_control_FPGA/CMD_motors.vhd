----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:26:33 03/03/2020 
-- Design Name: 
-- Module Name:    CMD_motors - Behavioral 
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

entity CMD_motors is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  mosi : in  STD_LOGIC;
           sclk : in  STD_LOGIC;
           ssel : in  STD_LOGIC;
           motor_av_g : out  STD_LOGIC;
			  motor_av_d : out  STD_LOGIC;
           motor_ar_g : out  STD_LOGIC;
           motor_ar_d : out  STD_LOGIC);
end CMD_motors;

architecture Behavioral of CMD_motors is


-------------------------------------COMPONENTS--------------------------------------
component SPI_transceiver is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           mosi : in  STD_LOGIC;
           sclk : in  STD_LOGIC;
           ssel : in  STD_LOGIC;
           spi_packet : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component Decode_SPIpacket is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           SPI_packet : in  STD_LOGIC_VECTOR (15 downto 0);
			  sel : out  STD_LOGIC_VECTOR (2 downto 0);
           duty : out  STD_LOGIC_VECTOR (10 downto 0)
          );
end component;

component Demux_motors is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           duty : in  STD_LOGIC_VECTOR (10 downto 0);
           sel : in  STD_LOGIC_VECTOR (2 downto 0);
           duty_M1 : out  STD_LOGIC_VECTOR (10 downto 0);
			  duty_M2 : out  STD_LOGIC_VECTOR (10 downto 0);
           duty_M3 : out  STD_LOGIC_VECTOR (10 downto 0);
           duty_M4 : out  STD_LOGIC_VECTOR (10 downto 0));
end component;

component pwm
  generic(
      sys_clk         : integer := 50_000_000;										--system clock frequency in Hz
      pwm_freq        : integer := 50;    											--PWM switching frequency in Hz
      bits_resolution : integer := 11);          									--bits of resolution setting the duty cycle (2^11 = 2048)
  port(
      clk       : in  STD_LOGIC;                                   			--system clock
      reset   	 : in  STD_LOGIC;                                    			--asynchronous reset
      duty      : in  STD_LOGIC_VECTOR(bits_resolution-1 downto 0); 			--duty cycle
      pwm_out   : out STD_LOGIC);									          		--pwm outputs
end component;

signal spi_packet_inter  : std_logic_vector(15 downto 0);
signal sel_inter  : std_logic_vector(2 downto 0);
signal duty_inter  : std_logic_vector(10 downto 0);
signal duty_M1_inter  : std_logic_vector(10 downto 0);
signal duty_M2_inter  : std_logic_vector(10 downto 0);
signal duty_M3_inter  : std_logic_vector(10 downto 0);
signal duty_M4_inter  : std_logic_vector(10 downto 0);
signal pwm_M1_inter  : std_logic;
signal pwm_M2_inter  : std_logic;
signal pwm_M3_inter  : std_logic;
signal pwm_M4_inter  : std_logic;

begin
SPI_transceiver_1: SPI_transceiver 
	port map( 
	       clk       => clk,
			 reset     => reset,
			 mosi		  => mosi,
			 sclk 	  => sclk,
			 ssel		  => ssel,
			 spi_packet=> spi_packet_inter
			);
			
Decode_SPIpacket_1: Decode_SPIpacket 
	port map( 
	       clk       => clk,
			 reset     => reset,
			 SPI_packet		  => SPI_packet_inter,
			 sel => sel_inter,
			 duty => duty_inter
			);
			
Demux_motors_1: Demux_motors 
	port map( 
	       clk       => clk,
			 reset     => reset,
			 duty		  => duty_inter,
			 sel		  => sel_inter,
			 duty_M1 => duty_M1_inter,
			 duty_M2 => duty_M2_inter,
			 duty_M3 => duty_M3_inter,
			 duty_M4 => duty_M4_inter
			);
			
PWM_1: pwm 
	port map( 
	       clk       => clk,
			 reset     => reset,
			 duty		  => duty_M1_inter,
			 pwm_out => pwm_M1_inter
			);
		
PWM_2: pwm 
	port map( 
	       clk       => clk,
			 reset     => reset,
			 duty		  => duty_M2_inter,
			 pwm_out => pwm_M2_inter
			);
PWM_3: pwm 
	port map( 
	       clk       => clk,
			 reset     => reset,
			 duty		  => duty_M3_inter,
			 pwm_out => pwm_M3_inter
			);
			
PWM_4: pwm 
	port map( 
	       clk       => clk,
			 reset     => reset,
			 duty		  => duty_M4_inter,
			 pwm_out => pwm_M4_inter
			);
			
motor_av_g <= pwm_M1_inter;
motor_av_d <= pwm_M2_inter;
motor_ar_g <= pwm_M3_inter;
motor_ar_d <= pwm_M4_inter;

end Behavioral;

