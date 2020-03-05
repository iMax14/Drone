----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:50:05 03/02/2020 
-- Design Name: 
-- Module Name:    Toggle_LEDs - Behavioral 
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

 entity led is
    Port ( 
           clk_50M : in  std_logic;
			  Rst : in  std_logic;
           led : out std_logic
    );
 end led;
 
 architecture RTL of led is
    constant max_count : natural := 48000000;
    --signal Rst : std_logic;
 begin
 
    -- 0 to max_count counter
    compteur : process(clk_50M, Rst)
        variable count : natural range 0 to max_count;
    begin
        if Rst = '0' then --Actif bas
            count := 0;
            led <= '0';
        elsif rising_edge(clk_50M) then
            if count < max_count/2 then
                count := count + 1;
                led <= '1';
            elsif count < max_count then
                led <= '0';
                count := count + 1;
            else
                led <= '1';
                count := 0;
            end if;
        end if;
    end process compteur; 
 end RTL;

