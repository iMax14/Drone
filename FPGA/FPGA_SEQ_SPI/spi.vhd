LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

entity spi_slave is
  
 port(
    clk          : in     STD_LOGIC;
    sclk         : in     STD_LOGIC;         --CLK stm32
    ssel         : in     STD_LOGIC;         
    simo         : in     STD_LOGIC;         --Slave In Master Out
	 reset        : in     STD_LOGIC;
	 test_data    : out    STD_LOGIC_VECTOR (15 downto 0)

	 );         
	 end spi_slave;


architecture behavorial of spi_slave is
-- Nous faisons le choix d'utiliser cpol= '0';  (polarité de l'horloge à 0)
-- et cpha  = '0';  										(polarité de la phase de l'horloge à 0)            

  signal data_inter : STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";  
  signal Data       : STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";  
  signal i          : integer :=16;
  --signal sclkbar    : std_logic;
  signal compteur   : integer :=0;
  --signal etat       : integer :=1;
  --signal detect     : std_logic_vector(1 downto 0);
  signal etape: std_logic:='0';
  signal init2:  std_logic:='0';
  
  

begin
process(ssel,clk, sclk, simo, init2)
begin 
  
  
	--init2<=init xor sclk;
  
if (rising_edge(clk)) then 
 
 if( ssel='0') then 
 
	
		
	if (sclk='1' ) then
	
				if (i>0 ) then
					
					data(i-1) <= simo;
					
					i<=i-1;
			    else
				
					i<=16;
					data_inter<=data;
				end if;
				
     end if;
 end if;
 if (reset='1') then 
    test_data<="0000000000000000";
 end if;
 
if (ssel='1' ) then 	--and compteur=16
	data_inter<=data;
	i<=16;
end if;					 
--								if (i>0) then
--									data(i-1) <= simo;	
--								   i<=i-1;
--									data_inter<="1111111111111101";
--						      else
--								data_inter<="1111111111000001";
--								
--							   end if;
--				      end if; 
--				end if;
--				if (ssel='1' and compteur=16) then
--				data_inter<="1111111111111100";
--						if (compteur=16) then 	 
--							compteur<=0;
--							i<=16;
--							data_inter<="1111111111111011";
--							data_inter<=data;
--						else
--							compteur<=0;
--							
test_data<=data_inter;			 
			  end if;  
  


--  test_data<=data_inter;
--  if (rising_edge(clk)) then --clk'event and clk='1'
--		
--		if (etat =1) then    --init 
--					test_data<="0000000000000000";
--					etat <= 0;
--		else 
--		
--				if (ssel='0' ) then 
--							sclkbar<= not sclk;
--							data_inter<="1111111111111111";
--						if (((sclk xor sclkbar) and sclk )='1' ) then 	
--						data_inter<="1111111111111110";
--								compteur<= compteur + 1;
--								if (i>0) then
--									data(i-1) <= simo;	
--								   i<=i-1;
--									data_inter<="1111111111111101";
--						      else
--								data_inter<="1111111111000001";
--								i<=16;
--							   end if;
--				      end if; 
--				end if;
--				if (ssel='1' and compteur=16) then
--				data_inter<="1111111111111100";
--						if (compteur=16) then 	 
--							compteur<=0;
--							i<=16;
--							data_inter<="1111111111111011";
--							data_inter<=data;
--						else
--							compteur<=0;
--							
--						end if;   	 
--			  end if; 
      --end if;


--	sclkbar<= not sclk;
--						if (((sclk xor sclkbar) and sclk )='1' ) then 
--								compteur<= compteur + 1;
--						
--								data(i-1) <= simo;
--								i<=i-1; 
--data_inter<="1111111111111111";								
--								if i=0 then
--								
--								i<=16;
--								end if;
--								end if;
--						if ssel='1' then		
--								i<=16;
--								end if;
--  
--  end if;
 
  
--  
--  if (clk'event and clk='1') then 
--    if (ssel='0') then 
--			sclkbar<= not sclk;
--			
--				if ((((sclk xor sclkbar) and sclk)='1') and cpt='0'  ) then 
--						Data(i-1) <= simo;  						
--						i<=i-1;
--				end if;
--				
--				if ((((sclk xor sclkbar) and sclk)='1') and cpt='1'  ) then 
--						mosi<= mosi_inter(i-1); 						
--						i<=i-1;
--				end if;
--				
--				if (i=0 and cpt='0') then 
--							i<=16;
--							data_inter<=Data;
--							cpt<='1';
--				else if (i=0 and cpt='1') then
--					      i<=16;
--							cpt<='0';
--							SFD(3)<=data_inter(15);	
--            				SFD(2)<=data_inter(14);	
--            				SFD(1)<=data_inter(13);	
--               			SFD(0)<=data_inter(12);	
--               			CMD(3)<=data_inter(11);
--               			CMD(2)<=data_inter(10);
--               			CMD(1)<=data_inter(9);
--               			CMD(0)<=data_inter(8);
--								case SFD is
--										when "1111" => Control_SFD <= '1' ;
--										when others => Control_CMD <= '0' ;
--								end case;				
--						
--								case CMD is
--										when "0000" => Control_CMD <= '0';-----------------------------
--										when "0011" => Control_CMD <= '0';
--										when "0101" => Control_CMD <= '0';
--										when "0110" => Control_CMD <= '0';--------interdit---------
--										when "1000" => Control_CMD <= '0';
--										when "1011" => Control_CMD <= '0';
--										when "1101" => Control_CMD <= '0';
--										when "1110" => Control_CMD <= '0';-----------------------------	
--										when "0001" => Control_CMD <= '1';-----------------------------
--										when "0010" => Control_CMD <= '1';
--										when "0100" => Control_CMD <= '1';
--										when "0111" => Control_CMD <= '1';------commande ok------
--										when "1001" => Control_CMD <= '1';
--										when "1010" => Control_CMD <= '1';
--										when "1100" => Control_CMD <= '1';
--										when "1111" => Control_CMD <= '1';------------------------------	  
--										when others  => Control_CMD <= '0';-----autres cas possibles-----
--								end case;		
--											
--										if((data_inter(11) xor data_inter(10) xor data_inter(9) xor data_inter(8)xor data_inter(7) xor data_inter(6) xor data_inter(5) xor data_inter(4) xor data_inter(3) xor data_inter(2) xor data_inter(1) xor data_inter(0))='0') then
--										Control_FCS<='1';			
--								else 
--										Control_FCS<='0';
--										end if;
--							
--
--							  mosi_inter(15) <= 	control_SFD;
--							  mosi_inter(14) <= 	control_CMD;
--							  mosi_inter(13) <= 	control_FCS;
                       			
--							if (cpt='0') then 		
--								cpt <='1';			
--							   mosi_inter<="0000000000000000";
--								
--							else
--								data_inter<=Data;
--						      SFD(3)<=data_inter(15);	
--            				SFD(2)<=data_inter(14);	
--            				SFD(1)<=data_inter(13);	
--               			SFD(0)<=data_inter(12);	
--               			CMD(3)<=data_inter(11);
--               			CMD(2)<=data_inter(10);
--               			CMD(1)<=data_inter(9);
--               			CMD(0)<=data_inter(8);
--								case SFD is
--										when "1111" => Control_SFD <= '1' ;
--										when others => Control_CMD <= '0' ;
--								end case;				
--						
--								case CMD is
--										when "0000" => Control_CMD <= '0';-----------------------------
--										when "0011" => Control_CMD <= '0';
--										when "0101" => Control_CMD <= '0';
--										when "0110" => Control_CMD <= '0';--------interdit---------
--										when "1000" => Control_CMD <= '0';
--										when "1011" => Control_CMD <= '0';
--										when "1101" => Control_CMD <= '0';
--										when "1110" => Control_CMD <= '0';-----------------------------	
--										when "0001" => Control_CMD <= '1';-----------------------------
--										when "0010" => Control_CMD <= '1';
--										when "0100" => Control_CMD <= '1';
--										when "0111" => Control_CMD <= '1';------commande ok------
--										when "1001" => Control_CMD <= '1';
--										when "1010" => Control_CMD <= '1';
--										when "1100" => Control_CMD <= '1';
--										when "1111" => Control_CMD <= '1';------------------------------	  
--										when others  => Control_CMD <= '0';-----autres cas possibles-----
--								end case;		
--											
--										if((data_inter(11) xor data_inter(10) xor data_inter(9) xor data_inter(8)xor data_inter(7) xor data_inter(6) xor data_inter(5) xor data_inter(4) xor data_inter(3) xor data_inter(2) xor data_inter(1) xor data_inter(0))='0') then
--										Control_FCS<='1';			
--								else 
--										Control_FCS<='0';
--										end if;
--							
--
--							  mosi_inter(15) <= 	control_SFD;
--							  mosi_inter(14) <= 	control_CMD;
--							  mosi_inter(13) <= 	control_FCS;
--                       mosi<= mosi_inter(15);							  
--							  cpt<='0';
--							end if;
--   	               
--					      end if;
--							
--			end if; 
--		               
--	test_data<=data_inter;
--			end if;
--	
  		
--

--  
--  end if;
  
--  if ((ssel ='1')) then ----initialisation----
--        mosi<='0';
--        Datas <= "0000000000000000";
--			if	(etape="00") then 
--				test_data<="0000000000000000";
--				test_result<="000";
--				etape <="01";
--			end if; 
--			test_data<= data;
--			result(2)<= resultint(1);	
--         result(1)<= resultint(0);				
--			result(0)<= Control_FCS;
--         test_result<= result;			
--  end if;
--  
-- if (rising_edge(sclk))then
-- 
--		if  (etape="01")and (ssel='0') then 
--				Data(i-1) <= simo;
--				i<=i-1;
--				mosi<='0';
--				Datas <= Data;	
--		end if;
--		
--		if (etape="01")and (i=1) and (ssel='0') then 
--			   i<=16;
--					
--				
--				
				
--			   
--			
--						resultint(1) <='1'; --Control_SFD;
--						resultint(0) <='1'; --Control_CMD; --CMD
--						
----						test_result<=result;
----						resultint(1)<=result(2);
----						resultint(0)<=result(1);
--						etape<="10";
--			end if;	
--				
--				if ((i2>0) and (etape="10") and ssel='0') then
--			
--			mosi<=result(i2-1);
--				i<=i-1;
--			i2<=i2-1;
--		end if;
--		
--		if ((i2=1))  then
--			       i2<=3; 
--					 
--		end if;
--		if (etape="10")and (i=1) and (ssel='0') then 
--			   i<=16;
--				 etape<="01";
--		end if;	
--				
--				
--				end if;
--		
--		
--	
--		if (resultint="11") then
--			
--						end if;	
--	
--		   
 			

  end process;
end behavorial;