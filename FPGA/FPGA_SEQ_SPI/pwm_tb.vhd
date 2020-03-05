
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY pwm_tb IS
END pwm_tb;
 
ARCHITECTURE behavior OF pwm_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT pwm_generator
    PORT(
         freq_pwm : IN  std_logic_vector(3 downto 0);
         clk_pwm : IN  std_logic;
         reset_pwm : IN  std_logic;
         pwm_dc : IN  std_logic_vector(6 downto 0);
         pwm : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal freq_pwm : std_logic_vector(3 downto 0) := (others => '0');
   signal clk_pwm : std_logic := '0';
   signal reset_pwm : std_logic := '0';
   signal pwm_dc : std_logic_vector(6 downto 0) := (others => '0');

 	--Outputs
   signal pwm : std_logic;

   -- Clock period definitions
   constant clk_pwm_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: pwm_generator PORT MAP (
          freq_pwm => freq_pwm,
          clk_pwm => clk_pwm,
          reset_pwm => reset_pwm,
          pwm_dc => pwm_dc,
          pwm => pwm
        );

   -- Clock process definitions
   clk_pwm_process :process
   begin
		clk_pwm <= '0';
		wait for clk_pwm_period/2;
		clk_pwm <= '1';
		wait for clk_pwm_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
 freq_pwm <="00","01" after 50us;
         reset_pwm <='0';
         pwm_dc<="01100000";
      -- insert stimulus here 

      wait;
   end process;

END;
