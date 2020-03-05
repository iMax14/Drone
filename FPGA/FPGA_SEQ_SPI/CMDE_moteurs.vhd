
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;


entity CMDE_moteurs is
	port(
	----------------------------SPI-------------------------
      sclk         : in std_logic;
		simo         : in std_logic;
		simo_out     : out std_logic;
		ssel         : in std_logic;
		test_data    : out    STD_LOGIC_VECTOR (15 downto 0);
	--------------------------------------------------------	
		
		clk,reset  : IN  std_logic;
		H3H2H1_L   : IN  std_logic_vector(2 downto 0);
		H3H2H1_R   : IN  std_logic_vector(2 downto 0);
		th1_L      : OUT std_logic;
		th2_L      : OUT std_logic;
		th3_L      : OUT std_logic;
		tl1_L      : OUT std_logic;
		tl2_L      : OUT std_logic;
		tl3_L      : OUT std_logic;
		th1_R      : OUT std_logic;
		th2_R      : OUT std_logic;
		th3_R      : OUT std_logic;
		tl1_R      : OUT std_logic;
		tl2_R      : OUT std_logic;   
		tl3_R      : OUT std_logic;
		
     
		Test_PWM_L : OUT std_logic;--uniquement pour le test fct PWM
		Test_PWM_R : OUT std_logic--uniquement pour le test fct PWM
		);
				

end CMDE_moteurs;



architecture Behavioral of CMDE_moteurs is


-------------------------------------COMPONENTS--------------------------------------

component rising_edg 
	port ( 
	       clk       : in  std_logic;
			 sclk      : in std_logic;
			 front     : out std_logic
			); 
		 end component;
	
component stabilisation 
   port(
			clk          : in     STD_LOGIC;
			sclk         : in     STD_LOGIC;         --CLK stm32
			ssel         : in     STD_LOGIC;         
			simo         : in     STD_LOGIC;         --Slave In Master Out
			simo_stab    : out    STD_LOGIC; 
			sclk_stab    : out    STD_LOGIC;
			ssel_stab    : out    STD_LOGIC
			);     
        end component;	
		  
 component spi_slave 
 port(
    clk          : in     STD_LOGIC;         --!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-
	 sclk         : in     STD_LOGIC;         --CLK stm32
    ssel         : in     STD_LOGIC;         --reception ou non sur FPGA
    simo         : in     STD_LOGIC;
	 reset        : in     STD_LOGIC;
	 test_data    : out    STD_LOGIC_VECTOR (15 downto 0)
	
	 );         
	 end component;
	 
	 
	 component trait_spi 
port( 
      clk        : in     STD_LOGIC;         --!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-
	   test_data  : In  STD_LOGIC_VECTOR (15 downto 0);
	   start_R    : out std_logic;
		start_L    : out std_logic;
		pwm_dc_L   : out std_logic_vector(6 downto 0);
		pwm_dc_R   : out std_logic_vector(6 downto 0);
		dir_R      : out std_logic;
		dir_L      : out std_logic;
		freq_recue : out std_logic_vector(1 downto 0)
			 
		); 
		end component;
	 


component mux_sdhall 
	port(
	   
		pwm         : IN std_logic;
	   reset_mux   : IN std_logic;
	   SDHALL      : IN  std_logic_vector(4 downto 0);--Start Direction h3 h2 h1
		Qh1         : OUT std_logic;
		Qh2         : OUT std_logic;
		Qh3         : OUT std_logic;
		Ql1         : OUT std_logic;
	   Ql2         : OUT std_logic;
		Ql3         : OUT std_logic
		
		);
end component;



component pwm_generator
	port (
	    freq_pwm   : IN std_logic_vector(5 downto 0);
		 clk_pwm    : IN  std_logic;
		 reset_pwm  : IN  std_logic;
		 pwm_dc     : IN  std_logic_vector(6 downto 0);--duty cycle
		 pwm        : OUT std_logic
		 );
end component;	


component mux_freq
	port (
	    clk          : in     STD_LOGIC; 
	    reset_freq   : IN std_logic;
	    FREQ         : IN  std_logic_vector(1 downto 0);--frequence reçue de la STM32
		 end_freq     : OUT std_logic_vector(5 downto 0)
			);
		 
end component;


---------------------------------------SIGNALS----------------------------------------

  

signal Q1LQ2LQ3L_L  : std_logic_vector(2 downto 0);
signal Q1HQ2HQ3H_L  : std_logic_vector(2 downto 0);
signal Q1LQ2LQ3L_R  : std_logic_vector(2 downto 0);
signal Q1HQ2HQ3H_R  : std_logic_vector(2 downto 0);
signal pwm_L        : std_logic;
signal pwm_R        : std_logic;
signal thigh_L      : std_logic_vector(2 downto 0);
signal thigh_R      : std_logic_vector(2 downto 0);
signal freqinter    : std_logic_vector(5 downto 0);
signal test_data2   : STD_LOGIC_VECTOR (15 downto 0);
signal start_R      : std_logic;
signal start_L      : std_logic;
signal simo_stab    : std_logic;
signal sclk_stab    : std_logic;
signal ssel_stab    : std_logic;
signal pwm_dc_L     : std_logic_vector(6 downto 0);
signal pwm_dc_R     : std_logic_vector(6 downto 0);
signal dir_R        : std_logic;
signal dir_L        : std_logic;
signal freq_recue   : std_logic_vector(1 downto 0);
signal Datas2       : std_logic_vector(15 downto 0);
signal test_result2 : std_logic_vector(2 downto 0);
signal sim          : std_logic;
signal front_m      : std_logic;

---------------------------------------------------------------------------------------


begin
stab:stabilisation
  port map(
			clk          =>clk,
			sclk         =>sclk,         
			ssel         =>ssel,        
			simo         =>simo,        
			simo_stab    =>simo_stab,
			sclk_stab    =>sclk_stab,
			ssel_stab    =>ssel_stab
			);     
			
rising_edg2: rising_edg 
	port map( 
	       clk       => clk,
			 sclk      => sclk_stab,
			 front     =>front_m
			); 
			
    


blocspi_slave: spi_slave
 port map(
    clk          => clk,
    sclk         => front_m,
    ssel         => ssel_stab,
	 reset        => reset,
    simo         => simo_stab,
	 test_data    => test_data2

	 );         
	 test_data<=test_data2;
	 sim<=simo;
	 simo_out<=sim;
	 
traitement_spi: trait_spi
port map( 
	   clk          => clk,
	   test_data  => test_data2,
	   start_R    => start_R,
		start_L    => start_L,
		pwm_dc_L   => pwm_dc_L,
		pwm_dc_R   => pwm_dc_R,
		dir_R      => dir_R,
		dir_L      => dir_L,
		freq_recue => freq_recue
			 
		); 
		


mux_sdhall_L: mux_sdhall 
	port map( 
	          SDHALL(4)    =>  start_L,  
				 SDHALL(3)    =>  dir_L,
				 SDHALL(2)    =>  H3H2H1_L(2),
				 SDHALL(1)    =>  H3H2H1_L(1), 
				 SDHALL(0)    =>  H3H2H1_L(0),
				 reset_mux    =>  reset,
				 pwm          =>  pwm_L,
				 Qh1          =>  th1_L,
				 Qh2          =>  th2_L,
			  	 Qh3          =>  th3_L,
				 Ql1          =>  tl1_L,
				 Ql2          =>  tl2_L,
				 Ql3          =>  tl3_L
				 );

mux_sdhall_R: mux_sdhall 
	port map( 
	          SDHALL(4)    =>  start_R,  
				 SDHALL(3)    =>  dir_R,
				 SDHALL(2)    =>  H3H2H1_R(2),
				 SDHALL(1)    =>  H3H2H1_R(1), 
				 SDHALL(0)    =>  H3H2H1_R(0),
				 reset_mux    =>  reset,
				 pwm          =>  pwm_R,
				 Qh1          =>  th1_R,
				 Qh2          =>  th2_R,
			  	 Qh3          =>  th3_R,
				 Ql1          =>  tl1_R,
				 Ql2          =>  tl2_R,
				 Ql3          =>  tl3_R
				 );

mux_freq_0: mux_freq
	port map(clk          => clk,
	         reset_freq   => reset,
	         FREQ         => freq_recue,
		      end_freq     => freqinter
			);

pwm_gene_L  : pwm_generator
	port map( freq_pwm     =>  freqinter,
	          clk_pwm      =>  clk,  
				 reset_pwm    =>  reset,
				 pwm_dc       =>  pwm_dc_L,
				 pwm          =>  pwm_L
				 );

test_pwm_L <= pwm_L;

pwm_gene_R  : pwm_generator
	port map( freq_pwm     =>  freqinter,
	          clk_pwm      =>  clk,  
				 reset_pwm    =>  reset,
				 pwm_dc       =>  pwm_dc_R,
				 pwm          =>  pwm_R
				 );

test_pwm_R <= pwm_R;





				 
end Behavioral;

