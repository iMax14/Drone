LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY CMDE_moteurs_tb IS
END CMDE_moteurs_tb;
 
ARCHITECTURE behavior OF CMDE_moteurs_tb IS 

    COMPONENT CMDE_moteurs
    PORT(
      sclk         : in std_logic;
		simo         : in std_logic;
		ssel         : in std_logic;
		clk,reset    : IN  std_logic;
		H3H2H1_L     : IN  std_logic_vector(2 downto 0);
		H3H2H1_R     : IN  std_logic_vector(2 downto 0);
		th1_L        : OUT std_logic;
		th2_L        : OUT std_logic;
		th3_L        : OUT std_logic;
		tl1_L        : OUT std_logic;
		tl2_L        : OUT std_logic;
		tl3_L        : OUT std_logic;
		th1_R        : OUT std_logic;
		th2_R        : OUT std_logic;
		th3_R        : OUT std_logic;
		tl1_R        : OUT std_logic;
		tl2_R        : OUT std_logic;   
		tl3_R        : OUT std_logic;
		test_data  : out STD_LOGIC_VECTOR (15 downto 0);
	
		Test_PWM_L   : OUT std_logic;--uniquement pour le test fct PWM
		Test_PWM_R   : OUT std_logic--uniquement pour le test fct PWM
		
        );
    END COMPONENT;
    

   --Inputs
	
   signal clk     : std_logic := '0';
   signal reset   : std_logic := '0';
   signal sclk    : std_logic := '0';
   signal simo    : std_logic := '0';
	signal ssel    : std_logic;
   signal H3H2H1_L: std_logic_vector(2 downto 0) := (others => '0');
   signal H3H2H1_R: std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal th1_L        : std_logic;
   signal th2_L        : std_logic;
   signal th3_L        : std_logic;
   signal tl1_L        : std_logic;
   signal tl2_L        : std_logic;
   signal tl3_L        : std_logic;
   signal th1_R        : std_logic;
   signal th2_R        : std_logic;
   signal th3_R        : std_logic;
   signal tl1_R        : std_logic;
   signal tl2_R        : std_logic;
   signal tl3_R        : std_logic;
   signal test_data    : STD_LOGIC_VECTOR (15 downto 0);
	
   signal Test_PWM_R   : std_logic;
   signal Test_PWM_L   : std_logic;
   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
      

	-- Instantiate the Unit Under Test (UUT)
   uut: CMDE_moteurs PORT MAP (
          clk          => clk,
          reset        => reset,
          sclk         => sclk,
			 test_data => test_data,
          simo         => simo,
			 ssel         => ssel,
          H3H2H1_L     => H3H2H1_L,
          H3H2H1_R     => H3H2H1_R,
          th1_L        => th1_L,
          th2_L        => th2_L,
          th3_L        => th3_L,
          tl1_L        => tl1_L,
          tl2_L        => tl2_L,
          tl3_L        => tl3_L,
          th1_R        => th1_R,
          th2_R        => th2_R,
          th3_R        => th3_R,
          tl1_R        => tl1_R,
          tl2_R        => tl2_R,
          tl3_R        => tl3_R,
			 Test_PWM_L   => Test_PWM_L, 
		    Test_PWM_R   => Test_PWM_R 
        );

   -- Clock process definitions
   clk_process :process
   begin  
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
  

	
   -- Stimulus process
   stim_proc: process
   begin		
	
	
--   reset    <= '1' after 50ns, '0' after 200us ;
--   start    <= '1' after 50ns, '0' after 80us, '1' after 115us;
--   dir_L    <= '1' after 100ns, '0' after 6000us;
--   dir_R    <= '0' after 100ns, '1' after 6000us;
--	freq_recue   <= "00" after 10ns, "01" after 2000us, "10" after 4000us,"11" after 6000us;
--   pwm_dc_L <= "1100011" after 10ns, "1001011" after 1200us, "0110010" after 3200us, "0011001" after 7000us ;--99 75 50 25 
--   pwm_dc_R <= "0010010" after 10ns, "0100001" after 1500us, "0101110" after 3200us, "1010010" after 7000us ;--18 32 46 82
--   H3H2H1_L <= "101" after 200ns, "001" after 1000us, "011" after 2000us, "010" after 3000us, "110" after 4000us ,"100" after 5000us,"111" after 6000us, "110" after 7000us, "010" after 8000us, "011" after 9000us, "001" after 10000us ,"101" after 11000us ; 
--   H3H2H1_R <= "100" after 200ns, "110" after 1000us, "010" after 2000us, "011" after 3000us, "001" after 4000us ,"101" after 5000us,"000" after 6000us, "001" after 7000us, "011" after 8000us, "010" after 9000us, "110" after 10000us ,"100" after 11000us ; 
	
   ------capteur_hall--------	
	H3H2H1_L <= "101" after 200ns, "001" after 10000us, "011" after 20000us, "010" after 30000us, "110" after 40000us ,"100" after 50000us,"111" after 60000us, "110" after 70000us, "010" after 80000us, "011" after 90000us, "001" after 100000us ,"101" after 110000us ; 
   H3H2H1_R <= "100" after 200ns, "110" after 10000us, "010" after 20000us, "011" after 30000us, "001" after 40000us ,"101" after 50000us,"000" after 60000us, "001" after 70000us, "011" after 80000us, "010" after 90000us, "110" after 100000us ,"100" after 110000us ; 
	------------reset-----------
	reset    <= '0' ; 
	
	------------start_R---------
	simo<='0', '1' after 100us, '1' after 110us, '1' after 120us, '1' after 130us, --sfd
   '0' after 140us, '0' after 150us, '0' after 160us, '1' after 170us,--CMD
	'0' after 180us, '0' after 190us, '0' after 200us, '0' after 210us,'0' after 220us,'0' after 230us,'1' after 240us,'0' after 250us,--value+parity
	--------dutycycle_R---------
	'1' after 290us, '1' after 300us, '1' after 310us, '1' after 320us, --sfd
	'0' after 330us, '1' after 340us, '1' after 350us, '1' after 360us,--CMD
	'0' after 370us, '0' after 380us, '0' after 390us, '0' after 400us,'1' after 410us,'1' after 420us,'0' after 430us,'0' after 440us,--value+parity
	------------start_L---------
   '1' after 1100us, '1' after 1110us, '1' after 1120us, '1' after 1130us, --sfd
   '1' after 1140us, '0' after 1150us, '0' after 1160us, '1' after 1170us,--CMD
	'0' after 1180us, '0' after 1190us, '0' after 1200us, '0' after 1210us,'0' after 1220us,'0' after 1230us,'1' after 1240us,'0' after 1250us,--value+parity
	--------dutycycle_L---------
	'1' after 1290us, '1' after 1300us, '1' after 1310us, '1' after 1320us, --sfd
	'1' after 1330us, '1' after 1340us, '1' after 1350us, '1' after 1360us,--CMD
	'1' after 1370us, '0' after 1380us, '1' after 1390us, '0' after 1400us,'1' after 1410us,'1' after 1420us,'0' after 1430us,'0' after 1440us,--value+parity
	------dutycycle_R---------
	'1' after 40450us, '1' after 40460us, '1' after 40470us, '1' after 40480us, --sfd
	'0' after 40490us, '1' after 40500us, '1' after 40510us, '1' after 40520us,--CMD
	'1' after 40530us, '0' after 40540us, '1' after 40550us, '1' after 40560us,'1' after 40570us,'1' after 40580us,'1' after 40590us,'0' after 40600us,--value+parity
	--------dutycycle_L---------
	'1' after 140450us, '1' after 140460us, '1' after 140470us, '1' after 140480us, --sfd
	'1' after 140490us, '1' after 140500us, '0' after 140510us, '0' after 140520us,--CMD
	'0' after 140530us, '0' after 140540us, '0' after 140550us, '0' after 140560us,'0' after 140570us,'1' after 140580us,'1' after 140590us,'0' after 140600us;--value+parity
   --------slave select--------
   ssel<= '1','0' after 90us,'1' after 260us,'0' after 285us,'1' after 450us,'0' after 1080us,'1' after 1265us,'0' after 1280us, '1' after 1450us, '0' after 40450us, '1' after 40610us, '0' after 140450us, '1' after 140610us;
	-----------sclk-------------
	sclk<= '0','1' after 100us, '0' after 105us, '1' after 110us, '0' after 115us, '1' after 120us, '0' after 125us, '1' after 130us, '0' after 135us, '1' after 140us, '0' after 145us, '1' after 150us, '0' after 155us, '1' after 160us,'0' after 165us, '1' after 170us, '0' after 175us, '1' after 180us, '0' after 185us, '1' after 190us, '0' after 195us, '1' after 200us, '0' after 205us, '1' after 210us, '0' after 215us, '1' after 220us, '0' after 225us, '1' after 230us,'0' after 235us, '1' after 240us, '0' after 245us, '1' after 250us, '0' after 255us, 
   '1' after 290us,'0' after 295us, '1' after 300us, '0' after 305us, '1' after 310us, '0' after 315us, '1' after 320us, '0' after 325us, '1' after 330us, '0' after 335us, '1' after 340us, '0' after 345us, '1' after 350us,'0' after 355us, '1' after 360us, '0' after 365us, '1' after 370us, '0' after 375us, '1' after 380us, '0' after 385us, '1' after 390us, '0' after 395us, '1' after 400us, '0' after 405us, '1' after 410us, '0' after 415us, '1' after 420us,'0' after 425us, '1' after 430us, '0' after 435us, '1' after 440us, '0' after 445us, 
	'1' after 1100us,'0' after 1105us, '1' after 1110us, '0' after 1115us, '1' after 1120us, '0' after 1125us, '1' after 1130us, '0' after 1135us, '1' after 1140us, '0' after 1145us, '1' after 1150us, '0' after 1155us, '1' after 1160us,'0' after 1165us, '1' after 1170us, '0' after 1175us, '1' after 1180us, '0' after 1185us, '1' after 1190us, '0' after 1195us, '1' after 1200us, '0' after 1205us, '1' after 1210us, '0' after 1215us, '1' after 1220us, '0' after 1225us, '1' after 1230us,'0' after 1235us, '1' after 1240us, '0' after 1245us, '1' after 1250us, '0' after 1255us, 
	'1' after 1290us,'0' after 1295us, '1' after 1300us, '0' after 1305us, '1' after 1310us, '0' after 1315us, '1' after 1320us, '0' after 1325us, '1' after 1330us, '0' after 1335us, '1' after 1340us, '0' after 1345us, '1' after 1350us,'0' after 1355us, '1' after 1360us, '0' after 1365us, '1' after 1370us, '0' after 1375us, '1' after 1380us, '0' after 1385us, '1' after 1390us, '0' after 1395us, '1' after 1400us, '0' after 1405us, '1' after 1410us, '0' after 1415us, '1' after 1420us,'0' after 1425us, '1' after 1430us, '0' after 1435us, '1' after 1440us, '0' after 1445us, 
	'1' after 40450us,'0' after 40455us, '1' after 40460us, '0' after 40465us, '1' after 40470us, '0' after 40475us, '1' after 40480us, '0' after 40485us, '1' after 40490us, '0' after 40495us, '1' after 40500us, '0' after 40505us, '1' after 40510us,'0' after 40515us, '1' after 40520us, '0' after 40525us, '1' after 40530us, '0' after 40535us, '1' after 40540us, '0' after 40545us, '1' after 40550us, '0' after 40555us, '1' after 40560us, '0' after 40565us, '1' after 40570us, '0' after 40575us, '1' after 40580us,'0' after 40585us, '1' after 40590us, '0' after 40595us, '1' after 40600us, '0' after 40605us,
	'1' after 140450us,'0' after 140455us, '1' after 140460us, '0' after 140465us, '1' after 140470us, '0' after 140475us, '1' after 140480us, '0' after 140485us, '1' after 140490us, '0' after 140495us, '1' after 140500us, '0' after 140505us, '1' after 140510us,'0' after 140515us, '1' after 140520us, '0' after 140525us, '1' after 140530us, '0' after 140535us, '1' after 140540us, '0' after 140545us, '1' after 140550us, '0' after 140555us, '1' after 140560us, '0' after 140565us, '1' after 140570us, '0' after 140575us, '1' after 140580us,'0' after 140585us, '1' after 140590us, '0' after 140595us, '1' after 140600us, '0' after 140605us;
	  
  
   
----	  
----
------	  
----	  simo<= '1' after 100ns, '1' after 110ns, '1' after 120ns, '1' after 130ns, --sfd
----     '0' after 140ns, '0' after 150ns, '0' after 160ns, '1' after 170ns,--CMD
----	  '0' after 180ns, '0' after 190ns, '0' after 200ns, '0' after 210ns,'0' after 220ns,'0' after 230ns,'1' after 240ns,'1' after 250ns,--value+parity
----     
----	  '1' after 290ns, '1' after 300ns, '1' after 310ns, '1' after 320ns, --sfd
----	  '0' after 330ns, '0' after 340ns, '0' after 350ns, '1' after 360ns,--CMD
----	  '1' after 370ns, '1' after 380ns, '0' after 390ns, '0' after 400ns,'1' after 410ns,'1' after 420ns,'1' after 430ns,'1' after 440ns;--value+parity
------	  
------	  
------	  
-- 
----   H3H2H1_L <= "101" after 200ns, "001" after 1000us, "011" after 2000us, "010" after 3000us, "110" after 4000us ,"100" after 5000us,"111" after 6000us, "110" after 7000us, "010" after 8000us, "011" after 9000us, "001" after 10000us ,"101" after 11000us ; 
----   H3H2H1_R <= "100" after 200ns, "110" after 1000us, "010" after 2000us, "011" after 3000us, "001" after 4000us ,"101" after 5000us,"000" after 6000us, "001" after 7000us, "011" after 8000us, "010" after 9000us, "110" after 10000us ,"100" after 11000us ; 
--		
wait;
   end process;

END;
