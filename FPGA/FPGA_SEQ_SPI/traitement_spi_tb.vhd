
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY traitement_spi_tb IS
END traitement_spi_tb;
 
ARCHITECTURE behavior OF traitement_spi_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT trait_spi
    PORT(
         clk : IN  std_logic;
         test_data : IN  std_logic_vector(15 downto 0);
         start_R : OUT  std_logic;
         start_L : OUT  std_logic;
         pwm_dc_L : OUT  std_logic_vector(6 downto 0);
         pwm_dc_R : OUT  std_logic_vector(6 downto 0);
         dir_R : OUT  std_logic;
         dir_L : OUT  std_logic;
         freq_recue : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic ;
   signal test_data : std_logic_vector(15 downto 0) := (others => '0');


 	--Outputs
   signal start_R : std_logic;
   signal start_L : std_logic;
   signal pwm_dc_L : std_logic_vector(6 downto 0);
   signal pwm_dc_R : std_logic_vector(6 downto 0);
   signal dir_R : std_logic;
   signal dir_L : std_logic;
   signal freq_recue : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: trait_spi PORT MAP (
          clk => clk,
          test_data => test_data,
          start_R => start_R,
          start_L => start_L,
          pwm_dc_L => pwm_dc_L,
          pwm_dc_R => pwm_dc_R,
          dir_R => dir_R,
          dir_L => dir_L,
          freq_recue => freq_recue
        );

   -- Clock process definitions
   sclk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
    
       test_data <= "1111000100000010" after 100ns, "1111001000000001" after 200ns, "1111011110101011" after 350 ns, "1111010000000001" after 500ns; 
   wait;  
   end process;

END;
