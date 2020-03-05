`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    ram_rw_control 
//////////////////////////////////////////////////////////////////////////////////
module ram_rw_control(
   input clk_50M,
	input SD_clk,
	input init,
	
	input data_come,
	
	
	output [31:0]read_sec,
	
	output read_SD,
	
	input [7:0]mydata,
	input myvalid,
	
	
	input wav_rden,
	output [15:0] wav_data
    );



parameter SADDR=32'd32784;               //�����ļ���SD����Sec��ַ
parameter OADDR=32'd15269887;

assign read_SD=read_req||next_read;

(*keep="true"*)wire [12:0] raddr_o;
assign raddr_o=ram_raddr;

reg [31:0]read_sec;
reg read_req;
reg next_read;
reg [15:0] wav_data;
reg next_read_reg;
reg next_read_reg_r1,next_read_reg_r2;
reg myen=1'b0;
reg read_req_a,read_req_b;

reg [7:0] myram[8191:0];
reg [12:0] ram_addr,ram_raddr;

/*SD����д���Ʋ���*/
reg [9:0] counter;
always @(posedge SD_clk)
begin
	if(!init)begin counter<=10'd0;end
	else
		begin
			if(counter<10'd1023)begin counter<=counter+1'b1;end
		end
end

//������һ��SD���������ź�:��ȡ4096���ֽ�
always @(posedge SD_clk)
begin
	if(counter==10'd1022)  
	    read_req<=1'b1;
	else if(myvalid&&ram_addr==4095)      //����4096��type , ������ֹͣ
	    read_req<=1'b0;	
end

//��һ��SD����������������
always @(posedge clk_50M)
begin
	if(wav_rden&&ram_raddr==2)
	     next_read_reg<=1'b1;               //������һ�ζ�SD������:4096byte	
	else if(wav_rden&&ram_raddr==4096)
	     next_read_reg<=1'b1;               //������һ�ζ�SD������:4096byte
	else if(myvalid&&ram_addr==8191)        
   	  next_read_reg<=1'b0;
	else if(myvalid&&ram_addr==4095) 
	     next_read_reg<=1'b0;
end	

//SD_clk����next_read_reg�ź�
always @(posedge SD_clk)
begin 
	next_read_reg_r1<=next_read_reg;
	next_read_reg_r2<=next_read_reg_r1;
	next_read<=next_read_reg_r2;
end

                        
//SD����sec��ַ��������
always @(posedge SD_clk)
begin
	if(counter==10'd1022)  
	   read_sec<=SADDR;
	else if(data_come) begin
		if(read_sec<OADDR)
		   read_sec<=read_sec+1'b1;       //SD��sec��ַ��1
		else 
		   read_sec<=SADDR;
	end
end
/*****************************************************************************/
//RAMд��ַ����,����SD����������д��Ram

always @(posedge SD_clk)
begin
	if(counter==10'd1022) begin
		ram_addr<=12'd0;
	end
	else begin
		if(myvalid) begin 
		    myram[ram_addr]<=mydata;
			 ram_addr<=ram_addr+1'b1;                
		end
	end
end


always @(posedge clk_50M)
begin
     read_req_a<=read_req;
	  read_req_b<=read_req_a;
end

//ram ����ַ����
always @(posedge clk_50M)
begin
	if(!init) begin 
	   myen<=1'b0;
		ram_raddr<=0;
	end
	else if(!read_req_a&&read_req_b) begin 
	   ram_raddr<=0;
		myen<=1'b1;
	end                         //myen<=1'b1: ram ����������
	else if(myen&&wav_rden) 
	   ram_raddr<=ram_raddr+2;
	
end

//���rden��Ч��16bit�������
always @(posedge clk_50M)
begin
	if(wav_rden)
	   wav_data<={myram[ram_raddr+1],myram[ram_raddr]};	
	else 
	   wav_data<=wav_data;		
end		



endmodule