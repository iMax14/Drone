LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY spi_slave_tb IS
END spi_slave_tb;
 
ARCHITECTURE behavior OF spi_slave_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT spi_slave
    PORT(
         clk : IN  std_logic;
			sclk: IN std_logic;
         ssel : IN  std_logic;
         simo : IN  std_logic;
			test_data   : out  STD_LOGIC_VECTOR(15 downto 0)
         
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic;
	signal sclk: std_logic:='0';
   signal ssel : std_logic := '0';
   signal simo : std_logic := '0';

 	--Outputs
	signal test_data : STD_LOGIC_VECTOR (15 downto 0);

   -- Clock period definitious
    constant sclk_period : time := 10 ns;
   constant clk_period : time := 10 ns;
 
BEGIN 
 
	-- Iustantiate the Unit Under Test (UUT)
   uut: spi_slave PORT MAP (
          clk => clk,
			 sclk => sclk,
		
		
          ssel => ssel,
          simo => simo,
			 test_data => test_data		 
          
        );

   -- Clock process definitious
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
      -- hold reset state for 100 us.
   
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
   ssel<= '1','0' after 90us,'1' after 285us,'0' after 1080us,'1' after 1265us,'0' after 1280us, '1' after 1450us, '0' after 40450us, '1' after 40610us, '0' after 140450us, '1' after 140610us;
	-----------sclk-------------
	sclk<= '0','1' after 100us, '0' after 105us, '1' after 110us, '0' after 115us, '1' after 120us, '0' after 125us, '1' after 130us, '0' after 135us, '1' after 140us, '0' after 145us, '1' after 150us, '0' after 155us, '1' after 160us,'0' after 165us, '1' after 170us, '0' after 175us, '1' after 180us, '0' after 185us, '1' after 190us, '0' after 195us, '1' after 200us, '0' after 205us, '1' after 210us, '0' after 215us, '1' after 220us, '0' after 225us, '1' after 230us,'0' after 235us, '1' after 240us, '0' after 245us, '1' after 250us, '0' after 255us, 
   '1' after 290us,'0' after 295us, '1' after 300us, '0' after 305us, '1' after 310us, '0' after 315us, '1' after 320us, '0' after 325us, '1' after 330us, '0' after 335us, '1' after 340us, '0' after 345us, '1' after 350us,'0' after 355us, '1' after 360us, '0' after 365us, '1' after 370us, '0' after 375us, '1' after 380us, '0' after 385us, '1' after 390us, '0' after 395us, '1' after 400us, '0' after 405us, '1' after 410us, '0' after 415us, '1' after 420us,'0' after 425us, '1' after 430us, '0' after 435us, '1' after 440us, '0' after 445us, 
	'1' after 1100us,'0' after 1105us, '1' after 1110us, '0' after 1115us, '1' after 1120us, '0' after 1125us, '1' after 1130us, '0' after 1135us, '1' after 1140us, '0' after 1145us, '1' after 1150us, '0' after 1155us, '1' after 1160us,'0' after 1165us, '1' after 1170us, '0' after 1175us, '1' after 1180us, '0' after 1185us, '1' after 1190us, '0' after 1195us, '1' after 1200us, '0' after 1205us, '1' after 1210us, '0' after 1215us, '1' after 1220us, '0' after 1225us, '1' after 1230us,'0' after 1235us, '1' after 1240us, '0' after 1245us, '1' after 1250us, '0' after 1255us, 
	'1' after 1290us,'0' after 1295us, '1' after 1300us, '0' after 1305us, '1' after 1310us, '0' after 1315us, '1' after 1320us, '0' after 1325us, '1' after 1330us, '0' after 1335us, '1' after 1340us, '0' after 1345us, '1' after 1350us,'0' after 1355us, '1' after 1360us, '0' after 1365us, '1' after 1370us, '0' after 1375us, '1' after 1380us, '0' after 1385us, '1' after 1390us, '0' after 1395us, '1' after 1400us, '0' after 1405us, '1' after 1410us, '0' after 1415us, '1' after 1420us,'0' after 1425us, '1' after 1430us, '0' after 1435us, '1' after 1440us, '0' after 1445us, 
	'1' after 40450us,'0' after 40455us, '1' after 40460us, '0' after 40465us, '1' after 40470us, '0' after 40475us, '1' after 40480us, '0' after 40485us, '1' after 40490us, '0' after 40495us, '1' after 40500us, '0' after 40505us, '1' after 40510us,'0' after 40515us, '1' after 40520us, '0' after 40525us, '1' after 40530us, '0' after 40535us, '1' after 40540us, '0' after 40545us, '1' after 40550us, '0' after 40555us, '1' after 40560us, '0' after 40565us, '1' after 40570us, '0' after 40575us, '1' after 40580us,'0' after 40585us, '1' after 40590us, '0' after 40595us, '1' after 40600us, '0' after 40605us,
	'1' after 140450us,'0' after 140455us, '1' after 140460us, '0' after 140465us, '1' after 140470us, '0' after 140475us, '1' after 140480us, '0' after 140485us, '1' after 140490us, '0' after 140495us, '1' after 140500us, '0' after 140505us, '1' after 140510us,'0' after 140515us, '1' after 140520us, '0' after 140525us, '1' after 140530us, '0' after 140535us, '1' after 140540us, '0' after 140545us, '1' after 140550us, '0' after 140555us, '1' after 140560us, '0' after 140565us, '1' after 140570us, '0' after 140575us, '1' after 140580us,'0' after 140585us, '1' after 140590us, '0' after 140595us, '1' after 140600us, '0' after 140605us;
	  
   wait;  
   end process;
   
END;