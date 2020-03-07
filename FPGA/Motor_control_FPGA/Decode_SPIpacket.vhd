----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:52:53 03/06/2020 
-- Design Name: 
-- Module Name:    Decode_SPIpacket - Behavioral 
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

entity Decode_SPIpacket is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           SPI_packet : in  STD_LOGIC_VECTOR (15 downto 0);
           sel : out  STD_LOGIC_VECTOR (2 downto 0);
			  duty : out  STD_LOGIC_VECTOR (10 downto 0)
          );
end Decode_SPIpacket;

architecture Behavioral of Decode_SPIpacket is

signal SFD        : STD_LOGIC_VECTOR(3 downto 0):="0000";
signal Control_SFD: STD_LOGIC:='0';   
signal CMD        : STD_LOGIC_VECTOR(3 downto 0):="0000";
signal Control_CMD: STD_LOGIC:='0';                      		-- CMD="1" commande valide, CMD="0" commande réservée    
signal VALUE      : STD_LOGIC_VECTOR(6 downto 0):="0000000";
signal FCS        : STD_LOGIC := '0';
signal Control_FCS: STD_LOGIC:='0';     								-- FCS="1" parité valide, FCS="0" parité non valide, erreur de transmission 
signal result_control     : STD_LOGIC_vector(2 downto 0):="000";

signal sel_inter : STD_LOGIC_VECTOR (2 downto 0) := "000";
signal duty_inter : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";

begin
	process(clk,reset,SPI_packet)
		begin 
		if(reset = '0') then                                            			--asynchronous reset (actif bas)
			sel_inter <= "111";
			duty_inter <= "00000000000";
		elsif(rising_edge(clk)) then     
			SFD(3) <= SPI_packet(15);
			SFD(2) <= SPI_packet(14);
			SFD(1) <= SPI_packet(13);
			SFD(0) <= SPI_packet(12);
			
			CMD(3) <= SPI_packet(11);
			CMD(2) <= SPI_packet(10);
			CMD(1) <= SPI_packet(9);
			CMD(0) <= SPI_packet(8);

			VALUE(6) <= SPI_packet(7);
			VALUE(5) <= SPI_packet(6);
			VALUE(4) <= SPI_packet(5);
			VALUE(3) <= SPI_packet(4);
			VALUE(2) <= SPI_packet(3);
			VALUE(1) <= SPI_packet(2);
			VALUE(0) <= SPI_packet(1);

			FCS <= SPI_packet(0);
			
			case SFD is
				when "1111" => Control_SFD <= '0' ;-------heder ok---------
				when others => Control_SFD <= '1' ;----packet corrompu-----
			end case;	
			
			case CMD is
				when "0000" => Control_CMD <= '1';--------interdit---------
				when "0001" => Control_CMD <= '0';------Marche/Arrêt1------
				when "0010" => Control_CMD <= '0';-------ConfigDuty1-------
				when "0011" => Control_CMD <= '1';--------interdit---------
				when "0100" => Control_CMD <= '1';--------interdit---------
				when "0101" => Control_CMD <= '0';------Marche/Arrêt2------
				when "0110" => Control_CMD <= '0';-------ConfigDuty2-------
				when "0111" => Control_CMD <= '1';--------interdit---------
				when "1000" => Control_CMD <= '1';--------interdit---------
				when "1001" => Control_CMD <= '0';------Marche/Arrêt3------
				when "1010" => Control_CMD <= '0';-------ConfigDuty3-------
				when "1011" => Control_CMD <= '1';--------interdit---------
				when "1100" => Control_CMD <= '1';--------interdit---------
				when "1101" => Control_CMD <= '0';------Marche/Arrêt4------
				when "1110" => Control_CMD <= '0';-------ConfigDuty4-------
				when "1111" => Control_CMD <= '1';--------interdit---------	
				when others => Control_CMD <= '1';--------interdit---------	
			end case;	
			
			
			if((CMD(3) xor CMD(2) xor CMD(1) xor CMD(0)xor VALUE(6) xor VALUE(5) xor VALUE(4) xor VALUE(3) xor VALUE(2) xor VALUE(1) xor VALUE(0) xor FCS)='0') then
				Control_FCS <= '0';	--------parité ok---------		
			else 
				Control_FCS <= '1';  -----packet corrompu------
			end if;
			
			result_control(2) <= Control_SFD;
			result_control(1) <= Control_CMD;
			result_control(0) <= Control_FCS;
			
			if(result_control = "000") then
				case CMD is
					when "0000" => sel_inter <= "111";--------interdit---------
					when "0001" => sel_inter <= "001";------Marche/Arrêt1------
					when "0010" => sel_inter <= "001";-------ConfigDuty1-------
					when "0011" => sel_inter <= "111";--------interdit---------
					when "0100" => sel_inter <= "111";--------interdit---------
					when "0101" => sel_inter <= "010";------Marche/Arrêt2------
					when "0110" => sel_inter <= "010";-------ConfigDuty2-------
					when "0111" => sel_inter <= "111";--------interdit---------
					when "1000" => sel_inter <= "111";--------interdit---------
					when "1001" => sel_inter <= "011";------Marche/Arrêt3------
					when "1010" => sel_inter <= "011";-------ConfigDuty3-------
					when "1011" => sel_inter <= "111";--------interdit---------
					when "1100" => sel_inter <= "111";--------interdit---------
					when "1101" => sel_inter <= "100";------Marche/Arrêt4------
					when "1110" => sel_inter <= "100";-------ConfigDuty4-------
					when "1111" => sel_inter <= "111";--------interdit---------	
					when others => sel_inter <= "111";--------interdit---------	
				end case;	
				duty_inter(VALUE'range) <= VALUE;
			else
				sel_inter <= "111";
				duty_inter <= "00000000000";
			end if;
		end if;
	end process;

duty <= duty_inter;
sel <= sel_inter;

end Behavioral;

