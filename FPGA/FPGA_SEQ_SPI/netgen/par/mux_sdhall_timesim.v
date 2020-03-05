////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: mux_sdhall_timesim.v
// /___/   /\     Timestamp: Mon Jan 20 12:38:51 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 4 -pcf mux_sdhall.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim mux_sdhall.ncd mux_sdhall_timesim.v 
// Device	: 3s200ft256-4 (PRODUCTION 1.39 2013-10-13)
// Input file	: mux_sdhall.ncd
// Output file	: C:\ise\ise_last\netgen\par\mux_sdhall_timesim.v
// # of Modules	: 1
// Design Name	: mux_sdhall
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module mux_sdhall (
  pwm, Qh1, Qh2, Qh3, reset_mux, Ql1, Ql2, Ql3, SDHALL
);
  input pwm;
  output Qh1;
  output Qh2;
  output Qh3;
  input reset_mux;
  output Ql1;
  output Ql2;
  output Ql3;
  input [4 : 0] SDHALL;
  wire reset_mux_IBUF1;
  wire reset_mux_IBUF_112;
  wire SDHALL_0_IBUF_115;
  wire SDHALL_1_IBUF_117;
  wire SDHALL_2_IBUF_118;
  wire SDHALL_3_IBUF_119;
  wire SDHALL_4_IBUF_122;
  wire pwm_IBUF_124;
  wire N13;
  wire N8;
  wire N16;
  wire N18_0;
  wire N14;
  wire N19;
  wire \reset_mux/INBUF ;
  wire \Qh1/O ;
  wire \Qh2/O ;
  wire \SDHALL<0>/INBUF ;
  wire \Qh3/O ;
  wire \Qh3/OUTPUT/OFF/O1INV_187 ;
  wire \Qh3/OUTPUT/OTCLK1INV_184 ;
  wire \SDHALL<1>/INBUF ;
  wire \SDHALL<2>/INBUF ;
  wire \SDHALL<3>/INBUF ;
  wire \Ql1/O ;
  wire \Ql2/O ;
  wire \Ql2/OUTPUT/OFF/O1INV_237 ;
  wire \Ql2/OUTPUT/OTCLK1INV_234 ;
  wire \SDHALL<4>/INBUF ;
  wire \Ql3/O ;
  wire \pwm/INBUF ;
  wire \reset_mux_IBUF_BUFG/S_INVNOT ;
  wire \reset_mux_IBUF_BUFG/I0_INV ;
  wire \Switchs[2] ;
  wire \Switchs[0] ;
  wire result_1_mux0001_320;
  wire N16_pack_1;
  wire N18;
  wire N8_pack_3;
  wire result_3_mux0001_368;
  wire N14_pack_1;
  wire \Switchs[4] ;
  wire N13_pack_1;
  wire result_5_mux0001_416;
  wire N19_pack_1;
  wire \Qh1/OUTPUT/OFF/O1INV_149 ;
  wire \Qh1/OUTPUT/OTCLK1INV_146 ;
  wire \Qh2/OUTPUT/OFF/O1INV_165 ;
  wire \Qh2/OUTPUT/OTCLK1INV_162 ;
  wire \Ql1/OUTPUT/OFF/O1INV_221 ;
  wire \Ql1/OUTPUT/OTCLK1INV_218 ;
  wire \Ql3/OUTPUT/OFF/O1INV_259 ;
  wire \Ql3/OUTPUT/OTCLK1INV_256 ;
  wire VCC;
  wire \NlwInverterSignal_result_0/CLK ;
  wire GND;
  wire \NlwInverterSignal_result_3/CLK ;
  wire \NlwInverterSignal_result_4/CLK ;
  wire \NlwInverterSignal_result_2/CLK ;
  wire \NlwInverterSignal_result_5/CLK ;
  wire \NlwInverterSignal_result_1/CLK ;
  wire [5 : 0] result;
  initial $sdf_annotate("netgen/par/mux_sdhall_timesim.sdf");
  X_IPAD #(
    .LOC ( "PAD123" ))
  \reset_mux/PAD  (
    .PAD(reset_mux)
  );
  X_BUF #(
    .LOC ( "PAD123" ))
  reset_mux_IBUF (
    .I(reset_mux),
    .O(\reset_mux/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD23" ))
  \Qh1/PAD  (
    .PAD(Qh1)
  );
  X_OBUF #(
    .LOC ( "PAD23" ))
  Qh1_OBUF (
    .I(\Qh1/O ),
    .O(Qh1)
  );
  X_OPAD #(
    .LOC ( "PAD19" ))
  \Qh2/PAD  (
    .PAD(Qh2)
  );
  X_OBUF #(
    .LOC ( "PAD19" ))
  Qh2_OBUF (
    .I(\Qh2/O ),
    .O(Qh2)
  );
  X_IPAD #(
    .LOC ( "PAD25" ))
  \SDHALL<0>/PAD  (
    .PAD(SDHALL[0])
  );
  X_BUF #(
    .LOC ( "PAD25" ))
  SDHALL_0_IBUF (
    .I(SDHALL[0]),
    .O(\SDHALL<0>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD20" ))
  \Qh3/PAD  (
    .PAD(Qh3)
  );
  X_OBUF #(
    .LOC ( "PAD20" ))
  Qh3_OBUF (
    .I(\Qh3/O ),
    .O(Qh3)
  );
  X_BUF #(
    .LOC ( "PAD20" ))
  \Qh3/OUTPUT/OFF/O1INV  (
    .I(\Switchs[0] ),
    .O(\Qh3/OUTPUT/OFF/O1INV_187 )
  );
  X_BUF #(
    .LOC ( "PAD20" ))
  \Qh3/OUTPUT/OFF/OMUX  (
    .I(result[0]),
    .O(\Qh3/O )
  );
  X_LATCHE #(
    .LOC ( "PAD20" ),
    .INIT ( 1'b0 ))
  result_0 (
    .I(\Qh3/OUTPUT/OFF/O1INV_187 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_result_0/CLK ),
    .SET(GND),
    .RST(GND),
    .O(result[0])
  );
  X_BUF #(
    .LOC ( "PAD20" ))
  \Qh3/OUTPUT/OTCLK1INV  (
    .I(reset_mux_IBUF_112),
    .O(\Qh3/OUTPUT/OTCLK1INV_184 )
  );
  X_IPAD #(
    .LOC ( "PAD24" ))
  \SDHALL<1>/PAD  (
    .PAD(SDHALL[1])
  );
  X_BUF #(
    .LOC ( "PAD24" ))
  SDHALL_1_IBUF (
    .I(SDHALL[1]),
    .O(\SDHALL<1>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD17" ))
  \SDHALL<2>/PAD  (
    .PAD(SDHALL[2])
  );
  X_BUF #(
    .LOC ( "PAD17" ))
  SDHALL_2_IBUF (
    .I(SDHALL[2]),
    .O(\SDHALL<2>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD22" ))
  \SDHALL<3>/PAD  (
    .PAD(SDHALL[3])
  );
  X_BUF #(
    .LOC ( "PAD22" ))
  SDHALL_3_IBUF (
    .I(SDHALL[3]),
    .O(\SDHALL<3>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD13" ))
  \Ql1/PAD  (
    .PAD(Ql1)
  );
  X_OBUF #(
    .LOC ( "PAD13" ))
  Ql1_OBUF (
    .I(\Ql1/O ),
    .O(Ql1)
  );
  X_OPAD #(
    .LOC ( "PAD18" ))
  \Ql2/PAD  (
    .PAD(Ql2)
  );
  X_OBUF #(
    .LOC ( "PAD18" ))
  Ql2_OBUF (
    .I(\Ql2/O ),
    .O(Ql2)
  );
  X_BUF #(
    .LOC ( "PAD18" ))
  \Ql2/OUTPUT/OFF/O1INV  (
    .I(result_3_mux0001_368),
    .O(\Ql2/OUTPUT/OFF/O1INV_237 )
  );
  X_BUF #(
    .LOC ( "PAD18" ))
  \Ql2/OUTPUT/OFF/OMUX  (
    .I(result[3]),
    .O(\Ql2/O )
  );
  X_LATCHE #(
    .LOC ( "PAD18" ),
    .INIT ( 1'b1 ))
  result_3 (
    .I(\Ql2/OUTPUT/OFF/O1INV_237 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_result_3/CLK ),
    .SET(GND),
    .RST(GND),
    .O(result[3])
  );
  X_BUF #(
    .LOC ( "PAD18" ))
  \Ql2/OUTPUT/OTCLK1INV  (
    .I(reset_mux_IBUF_112),
    .O(\Ql2/OUTPUT/OTCLK1INV_234 )
  );
  X_IPAD #(
    .LOC ( "PAD21" ))
  \SDHALL<4>/PAD  (
    .PAD(SDHALL[4])
  );
  X_BUF #(
    .LOC ( "PAD21" ))
  SDHALL_4_IBUF (
    .I(SDHALL[4]),
    .O(\SDHALL<4>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD14" ))
  \Ql3/PAD  (
    .PAD(Ql3)
  );
  X_OBUF #(
    .LOC ( "PAD14" ))
  Ql3_OBUF (
    .I(\Ql3/O ),
    .O(Ql3)
  );
  X_IPAD #(
    .LOC ( "PAD15" ))
  \pwm/PAD  (
    .PAD(pwm)
  );
  X_BUF #(
    .LOC ( "PAD15" ))
  pwm_IBUF (
    .I(pwm),
    .O(\pwm/INBUF )
  );
  X_BUFGMUX #(
    .LOC ( "BUFGMUX0" ))
  reset_mux_IBUF_BUFG (
    .I0(\reset_mux_IBUF_BUFG/I0_INV ),
    .I1(GND),
    .S(\reset_mux_IBUF_BUFG/S_INVNOT ),
    .O(reset_mux_IBUF_112)
  );
  X_INV #(
    .LOC ( "BUFGMUX0" ))
  \reset_mux_IBUF_BUFG/SINV  (
    .I(1'b1),
    .O(\reset_mux_IBUF_BUFG/S_INVNOT )
  );
  X_BUF #(
    .LOC ( "BUFGMUX0" ))
  \reset_mux_IBUF_BUFG/I0_USED  (
    .I(reset_mux_IBUF1),
    .O(\reset_mux_IBUF_BUFG/I0_INV )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y44" ))
  \result_1_mux0001/YUSED  (
    .I(N16_pack_1),
    .O(N16)
  );
  X_LUT4 #(
    .INIT ( 16'hF2F4 ),
    .LOC ( "SLICE_X14Y45" ))
  result_5_mux0001_SW0 (
    .ADR0(SDHALL_1_IBUF_117),
    .ADR1(SDHALL_0_IBUF_115),
    .ADR2(N8),
    .ADR3(SDHALL_3_IBUF_119),
    .O(N18)
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y45" ))
  \N18/XUSED  (
    .I(N18),
    .O(N18_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y45" ))
  \N18/YUSED  (
    .I(N8_pack_3),
    .O(N8)
  );
  X_LUT4 #(
    .INIT ( 16'h8F1F ),
    .LOC ( "SLICE_X14Y45" ))
  result_1_mux0001211 (
    .ADR0(SDHALL_1_IBUF_117),
    .ADR1(SDHALL_2_IBUF_118),
    .ADR2(SDHALL_4_IBUF_122),
    .ADR3(SDHALL_0_IBUF_115),
    .O(N8_pack_3)
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y44" ))
  \result_3_mux0001/YUSED  (
    .I(N14_pack_1),
    .O(N14)
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y46" ))
  \Switchs<4>/YUSED  (
    .I(N13_pack_1),
    .O(N13)
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y45" ))
  \result_5_mux0001/YUSED  (
    .I(N19_pack_1),
    .O(N19)
  );
  X_BUF #(
    .LOC ( "PAD24" ))
  \SDHALL<1>/IFF/IMUX  (
    .I(\SDHALL<1>/INBUF ),
    .O(SDHALL_1_IBUF_117)
  );
  X_BUF #(
    .LOC ( "PAD123" ))
  \reset_mux/IFF/IMUX  (
    .I(\reset_mux/INBUF ),
    .O(reset_mux_IBUF1)
  );
  X_BUF #(
    .LOC ( "PAD23" ))
  \Qh1/OUTPUT/OFF/O1INV  (
    .I(\Switchs[4] ),
    .O(\Qh1/OUTPUT/OFF/O1INV_149 )
  );
  X_BUF #(
    .LOC ( "PAD23" ))
  \Qh1/OUTPUT/OFF/OMUX  (
    .I(result[4]),
    .O(\Qh1/O )
  );
  X_LATCHE #(
    .LOC ( "PAD23" ),
    .INIT ( 1'b0 ))
  result_4 (
    .I(\Qh1/OUTPUT/OFF/O1INV_149 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_result_4/CLK ),
    .SET(GND),
    .RST(GND),
    .O(result[4])
  );
  X_BUF #(
    .LOC ( "PAD23" ))
  \Qh1/OUTPUT/OTCLK1INV  (
    .I(reset_mux_IBUF_112),
    .O(\Qh1/OUTPUT/OTCLK1INV_146 )
  );
  X_BUF #(
    .LOC ( "PAD19" ))
  \Qh2/OUTPUT/OFF/O1INV  (
    .I(\Switchs[2] ),
    .O(\Qh2/OUTPUT/OFF/O1INV_165 )
  );
  X_BUF #(
    .LOC ( "PAD19" ))
  \Qh2/OUTPUT/OFF/OMUX  (
    .I(result[2]),
    .O(\Qh2/O )
  );
  X_LATCHE #(
    .LOC ( "PAD19" ),
    .INIT ( 1'b0 ))
  result_2 (
    .I(\Qh2/OUTPUT/OFF/O1INV_165 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_result_2/CLK ),
    .SET(GND),
    .RST(GND),
    .O(result[2])
  );
  X_BUF #(
    .LOC ( "PAD19" ))
  \Qh2/OUTPUT/OTCLK1INV  (
    .I(reset_mux_IBUF_112),
    .O(\Qh2/OUTPUT/OTCLK1INV_162 )
  );
  X_BUF #(
    .LOC ( "PAD25" ))
  \SDHALL<0>/IFF/IMUX  (
    .I(\SDHALL<0>/INBUF ),
    .O(SDHALL_0_IBUF_115)
  );
  X_BUF #(
    .LOC ( "PAD17" ))
  \SDHALL<2>/IFF/IMUX  (
    .I(\SDHALL<2>/INBUF ),
    .O(SDHALL_2_IBUF_118)
  );
  X_BUF #(
    .LOC ( "PAD22" ))
  \SDHALL<3>/IFF/IMUX  (
    .I(\SDHALL<3>/INBUF ),
    .O(SDHALL_3_IBUF_119)
  );
  X_BUF #(
    .LOC ( "PAD13" ))
  \Ql1/OUTPUT/OFF/O1INV  (
    .I(result_5_mux0001_416),
    .O(\Ql1/OUTPUT/OFF/O1INV_221 )
  );
  X_BUF #(
    .LOC ( "PAD13" ))
  \Ql1/OUTPUT/OFF/OMUX  (
    .I(result[5]),
    .O(\Ql1/O )
  );
  X_LATCHE #(
    .LOC ( "PAD13" ),
    .INIT ( 1'b1 ))
  result_5 (
    .I(\Ql1/OUTPUT/OFF/O1INV_221 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_result_5/CLK ),
    .SET(GND),
    .RST(GND),
    .O(result[5])
  );
  X_BUF #(
    .LOC ( "PAD13" ))
  \Ql1/OUTPUT/OTCLK1INV  (
    .I(reset_mux_IBUF_112),
    .O(\Ql1/OUTPUT/OTCLK1INV_218 )
  );
  X_BUF #(
    .LOC ( "PAD21" ))
  \SDHALL<4>/IFF/IMUX  (
    .I(\SDHALL<4>/INBUF ),
    .O(SDHALL_4_IBUF_122)
  );
  X_BUF #(
    .LOC ( "PAD14" ))
  \Ql3/OUTPUT/OFF/O1INV  (
    .I(result_1_mux0001_320),
    .O(\Ql3/OUTPUT/OFF/O1INV_259 )
  );
  X_BUF #(
    .LOC ( "PAD14" ))
  \Ql3/OUTPUT/OFF/OMUX  (
    .I(result[1]),
    .O(\Ql3/O )
  );
  X_BUF #(
    .LOC ( "PAD14" ))
  \Ql3/OUTPUT/OTCLK1INV  (
    .I(reset_mux_IBUF_112),
    .O(\Ql3/OUTPUT/OTCLK1INV_256 )
  );
  X_LATCHE #(
    .LOC ( "PAD14" ),
    .INIT ( 1'b1 ))
  result_1 (
    .I(\Ql3/OUTPUT/OFF/O1INV_259 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_result_1/CLK ),
    .SET(GND),
    .RST(GND),
    .O(result[1])
  );
  X_BUF #(
    .LOC ( "PAD15" ))
  \pwm/IFF/IMUX  (
    .I(\pwm/INBUF ),
    .O(pwm_IBUF_124)
  );
  X_LUT4 #(
    .INIT ( 16'h0280 ),
    .LOC ( "SLICE_X15Y46" ))
  \Switchs<0>1  (
    .ADR0(N13),
    .ADR1(SDHALL_3_IBUF_119),
    .ADR2(SDHALL_0_IBUF_115),
    .ADR3(SDHALL_2_IBUF_118),
    .O(\Switchs[0] )
  );
  X_LUT4 #(
    .INIT ( 16'h0820 ),
    .LOC ( "SLICE_X15Y46" ))
  \Switchs<2>1  (
    .ADR0(N13),
    .ADR1(SDHALL_3_IBUF_119),
    .ADR2(SDHALL_1_IBUF_117),
    .ADR3(SDHALL_2_IBUF_118),
    .O(\Switchs[2] )
  );
  X_LUT4 #(
    .INIT ( 16'hC7D3 ),
    .LOC ( "SLICE_X14Y44" ))
  result_1_mux0001_SW0 (
    .ADR0(pwm_IBUF_124),
    .ADR1(SDHALL_2_IBUF_118),
    .ADR2(SDHALL_0_IBUF_115),
    .ADR3(SDHALL_3_IBUF_119),
    .O(N16_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h0C0F ),
    .LOC ( "SLICE_X14Y44" ))
  result_1_mux0001 (
    .ADR0(VCC),
    .ADR1(N8),
    .ADR2(reset_mux_IBUF1),
    .ADR3(N16),
    .O(result_1_mux0001_320)
  );
  X_LUT4 #(
    .INIT ( 16'hC3DB ),
    .LOC ( "SLICE_X15Y44" ))
  result_3_mux0001_SW0 (
    .ADR0(SDHALL_3_IBUF_119),
    .ADR1(SDHALL_1_IBUF_117),
    .ADR2(SDHALL_2_IBUF_118),
    .ADR3(pwm_IBUF_124),
    .O(N14_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h2323 ),
    .LOC ( "SLICE_X15Y44" ))
  result_3_mux0001 (
    .ADR0(N8),
    .ADR1(reset_mux_IBUF1),
    .ADR2(N14),
    .ADR3(VCC),
    .O(result_3_mux0001_368)
  );
  X_LUT4 #(
    .INIT ( 16'h0A0A ),
    .LOC ( "SLICE_X14Y46" ))
  \Switchs<0>21  (
    .ADR0(SDHALL_4_IBUF_122),
    .ADR1(VCC),
    .ADR2(reset_mux_IBUF1),
    .ADR3(VCC),
    .O(N13_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h2400 ),
    .LOC ( "SLICE_X14Y46" ))
  \Switchs<4>1  (
    .ADR0(SDHALL_1_IBUF_117),
    .ADR1(SDHALL_0_IBUF_115),
    .ADR2(SDHALL_3_IBUF_119),
    .ADR3(N13),
    .O(\Switchs[4] )
  );
  X_LUT4 #(
    .INIT ( 16'hF7BF ),
    .LOC ( "SLICE_X15Y45" ))
  result_5_mux0001_SW1 (
    .ADR0(SDHALL_0_IBUF_115),
    .ADR1(SDHALL_4_IBUF_122),
    .ADR2(SDHALL_2_IBUF_118),
    .ADR3(SDHALL_1_IBUF_117),
    .O(N19_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h3210 ),
    .LOC ( "SLICE_X15Y45" ))
  result_5_mux0001 (
    .ADR0(pwm_IBUF_124),
    .ADR1(reset_mux_IBUF1),
    .ADR2(N18_0),
    .ADR3(N19),
    .O(result_5_mux0001_416)
  );
  X_ONE   NlwBlock_mux_sdhall_VCC (
    .O(VCC)
  );
  X_INV   \NlwInverterBlock_result_0/CLK  (
    .I(\Qh3/OUTPUT/OTCLK1INV_184 ),
    .O(\NlwInverterSignal_result_0/CLK )
  );
  X_ZERO   NlwBlock_mux_sdhall_GND (
    .O(GND)
  );
  X_INV   \NlwInverterBlock_result_3/CLK  (
    .I(\Ql2/OUTPUT/OTCLK1INV_234 ),
    .O(\NlwInverterSignal_result_3/CLK )
  );
  X_INV   \NlwInverterBlock_result_4/CLK  (
    .I(\Qh1/OUTPUT/OTCLK1INV_146 ),
    .O(\NlwInverterSignal_result_4/CLK )
  );
  X_INV   \NlwInverterBlock_result_2/CLK  (
    .I(\Qh2/OUTPUT/OTCLK1INV_162 ),
    .O(\NlwInverterSignal_result_2/CLK )
  );
  X_INV   \NlwInverterBlock_result_5/CLK  (
    .I(\Ql1/OUTPUT/OTCLK1INV_218 ),
    .O(\NlwInverterSignal_result_5/CLK )
  );
  X_INV   \NlwInverterBlock_result_1/CLK  (
    .I(\Ql3/OUTPUT/OTCLK1INV_256 ),
    .O(\NlwInverterSignal_result_1/CLK )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

