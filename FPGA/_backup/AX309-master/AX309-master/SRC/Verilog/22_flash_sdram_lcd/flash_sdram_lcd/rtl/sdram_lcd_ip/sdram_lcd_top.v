/*-------------------------------------------------------------------------
Filename			:		sdram_lcd_top.v
===========================================================================
13/02/1
--------------------------------------------------------------------------*/
module sdram_lcd_top
(
	//global clock
	input			clk_lcd,		   //lcd clock
	input			clk_ref,		   //sdram ctrl clock
	input			clk_refout,		//sdram clock output
	input			rst_n,			//global reset
	input       key1,          //key1

	//sdram control
	output			sdram_clk,		//sdram clock
	output			sdram_cke,		//sdram clock enable
	output			sdram_cs_n,		//sdram chip select
	output			sdram_we_n,		//sdram write enable
	output			sdram_cas_n,	//sdram column address strobe
	output			sdram_ras_n,	//sdram row address strobe
	output			sdram_udqm,		//sdram data enable (H:8)
	output			sdram_ldqm,		//sdram data enable (L:8)
	output	[1:0]	sdram_ba,		//sdram bank address
	output	[11:0]	sdram_addr,		//sdram address
	inout	[15:0]	sdram_data,		//sdram data
		
	//lcd port
	output			lcd_dclk,		//lcd pixel clock			
	output			lcd_hsync,		//lcd horizontal sync 
	output			lcd_vsync,		//lcd vertical sync
	output			lcd_de,		   //lcd de(display enable)
	output	[7:0]	lcd_red,		   //lcd red data
	output	[7:0]	lcd_green,		//lcd green data
	output	[7:0]	lcd_blue,		//lcd blue data
	
	//user interface
	input			   sys_we,			  //fifo write enable
	input	[15:0]	sys_data_in, 	  //fifo data input
	output			sdram_init_done, //sdram init done
	output         frame_write_done

);


//----------------------------------------------
wire			sys_rd/* synthesis keep */;        		   //fifo read enable
wire	[15:0]	sys_data_out/* synthesis keep */;  		//fifo data output
wire			lcd_framesync;		                        //lcd frame sync
wire			frame_write_done;	                        //sdram write frame done
wire			frame_read_done;	                        //sdram read frame done
wire	[1:0]	wr_bank;			                           //sdram write bank
wire	[1:0]	rd_bank;			                           //sdram read bank
wire			wr_load;			                           //sdram write address reset
wire			rd_load;			                           //sdram read address reset

assign rd_load=sdr_addr_set;

sdram_2fifo_top	u_sdram_2fifo_top
(
	//global clock
	.clk_ref			(clk_ref),			   //sdram	reference clock
	.clk_refout			(clk_refout),		//sdram clk	input 
	.rst_n				(rst_n),			   //global reset
	
	//sdram interface
	.sdram_clk			(sdram_clk),		//sdram clock	
	.sdram_cke			(sdram_cke),		//sdram clock enable	
	.sdram_cs_n			(sdram_cs_n),		//sdram chip select	
	.sdram_we_n			(sdram_we_n),		//sdram write enable	
	.sdram_ras_n		(sdram_ras_n),		//sdram column address strobe	
	.sdram_cas_n		(sdram_cas_n),		//sdram row address strobe	
	.sdram_ba			(sdram_ba),			//sdram data enable (H:8)    
	.sdram_addr			(sdram_addr),		//sdram data enable (L:8)	
	.sdram_data			(sdram_data),		//sdram bank address	
	.sdram_udqm			(sdram_udqm),		//sdram address	
	.sdram_ldqm			(sdram_ldqm),		//sdram data
	
	//user interface
	//burst and addr
	.wr_length			(9'd256),			//sdram write burst length
	.rd_length			(9'd256),			//sdram read burst length
	.wr_addr		  	   (22'd0),			   //sdram start write address
	.wr_max_addr		(22'd195840),		//sdram max write address 480 * 272 * 3 /2
	.wr_load			   (1'b0),			   //sdram write address reset
	.rd_addr			   (22'd0),			   //sdram start read address
	.rd_max_addr		(22'd195840),		//sdram max read address 480 * 272 * 3 /2
	.rd_load			   (rd_load),			//sdram read address reset
	
	//  interface
	.sdram_init_done	(sdram_init_done),	//sdram init done
	.frame_write_done	(frame_write_done),	//sdram write one frame
	.frame_read_done	(frame_read_done),	//sdram read one frame
	.sys_we				(sys_we),			   //fifo write enable
	.sys_data_in		(sys_data_in),		   //fifo data input
	.sys_rd				(sys_rd),			   //fifo read enable
	.sys_data_out		(sys_data_out),		//fifo data output
	.data_valid			(lcd_framesync)		//system data output enable
);

//-----------------------------
//16bit combine to 128bit


//---------------------------------
//display on lcd
wire	[15:0]	lcd_data_16;
wire 	[95:0]	lcd_data_96;
wire lcd_rden;
assign lcd_data_16 = sys_data_out;

data_combine	u_data_combine
(
	.clk			      (clk_ref),	
	.rst_n				(rst_n),
	
	.sys_rd				(sys_rd),			   //fifo read enable
	.lcd_data_16		(lcd_data_16),		   //fifo data output
	
	.lcd_rden	      (lcd_rden),	
	.lcd_data_96	   (lcd_data_96)      
	
);


//-----------------------------
//lcd driver top module
lcd_top	u_lcd_top
(
	//global clock
	.clk_lcd			(clk_lcd),	
	.lcd_rst			(~rst_n),	
	.key1          (key1),

	//lcd interface
	.lcd_dclk		(lcd_dclk),	
	.lcd_de		   (lcd_de),
	.lcd_hsync		(lcd_hsync),		
	.lcd_vsync		(lcd_vsync),	
	.lcd_r			(lcd_red),	
	.lcd_g			(lcd_green),	
	.lcd_b			(lcd_blue),	

	//user interface
	.lcd_rden	   (lcd_rden),
	.lcd_framesync	(lcd_framesync),
	.sdr_addr_set	(sdr_addr_set),
	.lcd_data	   (lcd_data_96)

);

wire [35:0]   CONTROL0;
wire [255:0]  TRIG0;
chipscope_icon icon_debug (
    .CONTROL0(CONTROL0) // INOUT BUS [35:0]
);

chipscope_ila ila_filter_debug (
    .CONTROL(CONTROL0), // INOUT BUS [35:0]
    .CLK(clk_ref),      // IN
    .TRIG0(TRIG0)      // IN BUS [255:0]
    //.TRIG_OUT(TRIG_OUT0)
);                                                  
                                                       

assign  TRIG0[7:0]=lcd_red;                                               
assign  TRIG0[15:8]=lcd_green;           
assign  TRIG0[23:16]=lcd_blue;           
assign  TRIG0[24]=lcd_hsync;
assign  TRIG0[25]=lcd_vsync;
assign  TRIG0[26]=lcd_de;

assign  TRIG0[27]=sys_rd;
assign  TRIG0[43:28]=sys_data_out;
assign  TRIG0[44]=lcd_rden;
assign  TRIG0[45]=sys_we;
assign  TRIG0[61:46]=sys_data_in;
assign  TRIG0[62]=frame_write_done;

assign  TRIG0[158:63]=lcd_data_96;

endmodule
