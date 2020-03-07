--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: CMD_motors_timesim.vhd
-- /___/   /\     Timestamp: Fri Mar 06 13:13:57 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 2 -pcf CMD_motors.pcf -rpw 100 -tpw 0 -ar Structure -tm CMD_motors -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim CMD_motors.ncd CMD_motors_timesim.vhd 
-- Device	: 6slx9ftg256-2 (PRODUCTION 1.23 2013-10-13)
-- Input file	: CMD_motors.ncd
-- Output file	: C:\Users\Maxime\Documents\Drone\FPGA\Motor_control_FPGA\netgen\par\CMD_motors_timesim.vhd
-- # of Entities	: 1
-- Design Name	: CMD_motors
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity CMD_motors is
  port (
    clk : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    mosi : in STD_LOGIC := 'X'; 
    sclk : in STD_LOGIC := 'X'; 
    ssel : in STD_LOGIC := 'X'; 
    motor_1 : out STD_LOGIC 
  );
end CMD_motors;

architecture Structure of CMD_motors is
  signal clk_BUFGP : STD_LOGIC; 
  signal Decode_SPIpacket_1_result_control_0_0 : STD_LOGIC; 
  signal Decode_SPIpacket_1_duty_inter_2_0 : STD_LOGIC; 
  signal Decode_SPIpacket_1_reset_inv : STD_LOGIC; 
  signal Decode_SPIpacket_1_duty_inter_4_0 : STD_LOGIC; 
  signal Decode_SPIpacket_1_duty_inter_6_0 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_n0042_2_0 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_n0042_1_0 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_0 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_i_2_0 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_n0042_4_0 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_n0042_3_0 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_i_4_0 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_n0070_inv : STD_LOGIC; 
  signal reset_IBUF_0 : STD_LOGIC; 
  signal SPI_transceiver_1_risingEdge_detector_1_flipflop_ris_Q_inter_1390 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_buffer_1_ssel_inter2_1391 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_n0078_inv_0 : STD_LOGIC; 
  signal PWM_1_Result_0_0 : STD_LOGIC; 
  signal PWM_1_Result_1_0 : STD_LOGIC; 
  signal PWM_1_Result_2_0 : STD_LOGIC; 
  signal PWM_1_Mcount_count_cy_3_Q_1399 : STD_LOGIC; 
  signal PWM_1_Result_3_0 : STD_LOGIC; 
  signal PWM_1_Result_4_0 : STD_LOGIC; 
  signal PWM_1_Result_5_0 : STD_LOGIC; 
  signal PWM_1_Result_6_0 : STD_LOGIC; 
  signal PWM_1_Mcount_count_cy_7_Q_1408 : STD_LOGIC; 
  signal PWM_1_Result_7_0 : STD_LOGIC; 
  signal PWM_1_Result_8_0 : STD_LOGIC; 
  signal PWM_1_Result_9_0 : STD_LOGIC; 
  signal PWM_1_Result_10_0 : STD_LOGIC; 
  signal PWM_1_Mcount_count_cy_11_Q_1417 : STD_LOGIC; 
  signal PWM_1_Result_11_0 : STD_LOGIC; 
  signal PWM_1_Result_12_0 : STD_LOGIC; 
  signal PWM_1_Result_13_0 : STD_LOGIC; 
  signal PWM_1_Result_14_0 : STD_LOGIC; 
  signal PWM_1_Mcount_count_cy_15_Q_1426 : STD_LOGIC; 
  signal PWM_1_Result_15_0 : STD_LOGIC; 
  signal PWM_1_Result_16_0 : STD_LOGIC; 
  signal PWM_1_Result_17_0 : STD_LOGIC; 
  signal PWM_1_Result_18_0 : STD_LOGIC; 
  signal PWM_1_Result_19_0 : STD_LOGIC; 
  signal PWM_1_GND_14_o_GND_14_o_sub_7_OUT_0_0 : STD_LOGIC; 
  signal PWM_1_GND_14_o_GND_14_o_sub_7_OUT_1_0 : STD_LOGIC; 
  signal PWM_1_GND_14_o_GND_14_o_sub_7_OUT_2_0 : STD_LOGIC; 
  signal PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_3_Q_1443 : STD_LOGIC; 
  signal PWM_1_GND_14_o_GND_14_o_sub_7_OUT_3_0 : STD_LOGIC; 
  signal PWM_1_half_duty_4_0 : STD_LOGIC; 
  signal PWM_1_GND_14_o_GND_14_o_sub_7_OUT_4_0 : STD_LOGIC; 
  signal PWM_1_GND_14_o_GND_14_o_sub_7_OUT_5_0 : STD_LOGIC; 
  signal PWM_1_GND_14_o_GND_14_o_sub_7_OUT_6_0 : STD_LOGIC; 
  signal PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_7_Q_1452 : STD_LOGIC; 
  signal PWM_1_GND_14_o_GND_14_o_sub_7_OUT_7_0 : STD_LOGIC; 
  signal PWM_1_GND_14_o_GND_14_o_sub_7_OUT_8_0 : STD_LOGIC; 
  signal PWM_1_GND_14_o_GND_14_o_sub_7_OUT_9_0 : STD_LOGIC; 
  signal PWM_1_GND_14_o_GND_14_o_sub_7_OUT_10_0 : STD_LOGIC; 
  signal PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_11_Q_1461 : STD_LOGIC; 
  signal PWM_1_GND_14_o_GND_14_o_sub_7_OUT_11_0 : STD_LOGIC; 
  signal PWM_1_GND_14_o_GND_14_o_sub_7_OUT_12_0 : STD_LOGIC; 
  signal PWM_1_GND_14_o_GND_14_o_sub_7_OUT_13_0 : STD_LOGIC; 
  signal PWM_1_GND_14_o_GND_14_o_sub_7_OUT_14_0 : STD_LOGIC; 
  signal PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_15_Q_1470 : STD_LOGIC; 
  signal PWM_1_GND_14_o_GND_14_o_sub_7_OUT_15_0 : STD_LOGIC; 
  signal PWM_1_GND_14_o_GND_14_o_sub_7_OUT_16_0 : STD_LOGIC; 
  signal PWM_1_GND_14_o_GND_14_o_sub_7_OUT_17_0 : STD_LOGIC; 
  signal PWM_1_GND_14_o_GND_14_o_sub_7_OUT_18_0 : STD_LOGIC; 
  signal PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_18_0 : STD_LOGIC; 
  signal PWM_1_n0032_0 : STD_LOGIC; 
  signal PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_3_Q_1483 : STD_LOGIC; 
  signal PWM_1_GND_14_o_count_19_equal_6_o_0 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_n0042_0_0 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_3_Q_1488 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal sclk_IBUF_0 : STD_LOGIC; 
  signal PWM_1_pwm_out_1491 : STD_LOGIC; 
  signal mosi_IBUF_0 : STD_LOGIC; 
  signal ssel_IBUF_0 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P47_to_Mmult_n00191 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P46_to_Mmult_n00191 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P45_to_Mmult_n00191 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P44_to_Mmult_n00191 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P43_to_Mmult_n00191 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P42_to_Mmult_n00191 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P41_to_Mmult_n00191 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P40_to_Mmult_n00191 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P39_to_Mmult_n00191 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P38_to_Mmult_n00191 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P37_to_Mmult_n00191 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P36_to_Mmult_n00191 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P35_to_Mmult_n00191 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P34_to_Mmult_n00191 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P33_to_Mmult_n00191 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P32_to_Mmult_n00191 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P31_to_Mmult_n00191 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P30_to_Mmult_n00191 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P29_to_Mmult_n00191 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P28_to_Mmult_n00191 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P27_to_Mmult_n00191 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P26_to_Mmult_n00191 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P25_to_Mmult_n00191 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P24_to_Mmult_n00191 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P23_to_Mmult_n00191 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P22_to_Mmult_n00191 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P21_to_Mmult_n00191 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P20_to_Mmult_n00191 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P19_to_Mmult_n00191 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P18_to_Mmult_n00191 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P17_to_Mmult_n00191 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_17 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_16 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_15 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_14 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_13 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_12 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_11 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_10 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_9 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_8 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_7 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_6 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_5 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_4 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_3 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_2 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_1 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_0 : STD_LOGIC; 
  signal PWM_1_duty_10_GND_14_o_add_0_OUT_7_Q : STD_LOGIC; 
  signal PWM_1_duty_10_GND_14_o_add_0_OUT_6_Q : STD_LOGIC; 
  signal PWM_1_duty_10_GND_14_o_add_0_OUT_5_Q : STD_LOGIC; 
  signal PWM_1_duty_10_GND_14_o_add_0_OUT_4_Q : STD_LOGIC; 
  signal PWM_1_duty_10_GND_14_o_add_0_OUT_3_Q : STD_LOGIC; 
  signal PWM_1_duty_10_GND_14_o_add_0_OUT_2_Q : STD_LOGIC; 
  signal PWM_1_duty_10_GND_14_o_add_0_OUT_1_Q : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_buffer_1_mosi_inter2_1558 : STD_LOGIC; 
  signal PWM_1_PWR_15_o_count_19_equal_3_o_19_Q : STD_LOGIC; 
  signal PWM_1_PWR_15_o_count_19_equal_3_o_19_1_1570 : STD_LOGIC; 
  signal PWM_1_PWR_15_o_count_19_equal_3_o_19_2_1571 : STD_LOGIC; 
  signal Decode_SPIpacket_1_Control_SFD_Control_CMD_Control_FCS_sliced_0_1581 : STD_LOGIC; 
  signal Decode_SPIpacket_1_CMD_0_0 : STD_LOGIC; 
  signal Decode_SPIpacket_1_CMD_1_0 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_buffer_1_sclk_inter2_1584 : STD_LOGIC; 
  signal SPI_transceiver_1_risingEdge_detector_1_flipflop_sys_Q_inter_1585 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_buffer_1_ssel_inter1_1586 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_10_0 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_11_0 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_8_0 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_9_0 : STD_LOGIC; 
  signal Decode_SPIpacket_1_CMD_2_0 : STD_LOGIC; 
  signal Decode_SPIpacket_1_Mxor_CMD_3_FCS_XOR_47_o_xo_0_Q : STD_LOGIC; 
  signal Decode_SPIpacket_1_CMD_3_0 : STD_LOGIC; 
  signal Decode_SPIpacket_1_Control_SFD_Control_CMD_Control_FCS_sliced_1_1599 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_buffer_1_sclk_inter1_1600 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_buffer_1_mosi_inter1_1605 : STD_LOGIC; 
  signal Decode_SPIpacket_1_FCS_1609 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_n0078_inv1 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_n0062 : STD_LOGIC; 
  signal Decode_SPIpacket_1_Control_CMD_1612 : STD_LOGIC; 
  signal Decode_SPIpacket_1_Mxor_CMD_3_FCS_XOR_47_o_xo_0_1_1613 : STD_LOGIC; 
  signal PWM_1_count_1_rt_15 : STD_LOGIC; 
  signal PWM_1_count_3_rt_10 : STD_LOGIC; 
  signal ProtoComp5_CYINITGND_0 : STD_LOGIC; 
  signal PWM_1_count_2_rt_7 : STD_LOGIC; 
  signal PWM_1_count_4_rt_36 : STD_LOGIC; 
  signal PWM_1_count_5_rt_32 : STD_LOGIC; 
  signal PWM_1_count_7_rt_30 : STD_LOGIC; 
  signal PWM_1_count_6_rt_29 : STD_LOGIC; 
  signal PWM_1_count_8_rt_58 : STD_LOGIC; 
  signal PWM_1_count_9_rt_54 : STD_LOGIC; 
  signal PWM_1_count_11_rt_52 : STD_LOGIC; 
  signal PWM_1_count_10_rt_51 : STD_LOGIC; 
  signal PWM_1_count_18_rt_99 : STD_LOGIC; 
  signal PWM_1_count_17_rt_94 : STD_LOGIC; 
  signal PWM_1_count_19_rt_93 : STD_LOGIC; 
  signal PWM_1_count_16_rt_92 : STD_LOGIC; 
  signal PWM_1_count_12_rt_80 : STD_LOGIC; 
  signal PWM_1_count_13_rt_76 : STD_LOGIC; 
  signal PWM_1_count_15_rt_74 : STD_LOGIC; 
  signal PWM_1_count_14_rt_73 : STD_LOGIC; 
  signal PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_1_Q : STD_LOGIC; 
  signal PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_0_Q : STD_LOGIC; 
  signal PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_2_Q : STD_LOGIC; 
  signal ProtoComp8_CYINITVCC_1 : STD_LOGIC; 
  signal PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_3_Q : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_GND_10_o_i_31_mux_5_OUT_2_Q : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_GND_10_o_i_31_mux_5_OUT_0_Q : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_GND_10_o_i_31_mux_5_OUT_3_Q : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_GND_10_o_i_31_mux_5_OUT_1_Q : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_n0062_pack_3 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_GND_10_o_i_31_mux_5_OUT_4_Q : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_10_rt_891 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_9_rt_890 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_8_rt_888 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_11_rt_877 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_data_10_rt_920 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_data_9_rt_914 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_data_11_rt_912 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_data_8_rt_911 : STD_LOGIC; 
  signal SPI_transceiver_1_risingEdge_detector_1_flipflop_ris_D1_D2_AND_4_o : STD_LOGIC; 
  signal PWM_1_GND_14_o_count_19_equal_6_o : STD_LOGIC; 
  signal PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_lut_5_Q_864 : STD_LOGIC; 
  signal PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_lut_6_Q_859 : STD_LOGIC; 
  signal PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_lut_4_Q_857 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_data_10_mosi_MUX_41_o : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_data_8_mosi_MUX_43_o : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_data_9_mosi_MUX_42_o : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_data_11_mosi_MUX_40_o : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_n0078_inv : STD_LOGIC; 
  signal Decode_SPIpacket_1_PWR_12_o_INV_57_o : STD_LOGIC; 
  signal Decode_SPIpacket_1_CMD_3_FCS_XOR_47_o : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_data_6_mosi_MUX_45_o : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_data_4_mosi_MUX_47_o : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_data_5_mosi_MUX_46_o : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_data_7_mosi_MUX_44_o : STD_LOGIC; 
  signal Decode_SPIpacket_1_GND_11_o_duty_inter_10_mux_3_OUT_1_Q : STD_LOGIC; 
  signal Decode_SPIpacket_1_GND_11_o_duty_inter_10_mux_3_OUT_0_Q : STD_LOGIC; 
  signal Decode_SPIpacket_1_GND_11_o_duty_inter_10_mux_3_OUT_2_Q : STD_LOGIC; 
  signal Decode_SPIpacket_1_GND_11_o_duty_inter_10_mux_3_OUT_4_Q : STD_LOGIC; 
  signal Decode_SPIpacket_1_GND_11_o_duty_inter_10_mux_3_OUT_6_Q : STD_LOGIC; 
  signal Decode_SPIpacket_1_GND_11_o_duty_inter_10_mux_3_OUT_5_Q : STD_LOGIC; 
  signal Decode_SPIpacket_1_GND_11_o_duty_inter_10_mux_3_OUT_3_Q : STD_LOGIC; 
  signal Decode_SPIpacket_1_Control_SFD_Control_CMD_Control_FCS_sliced_1_rt_979 : STD_LOGIC; 
  signal Decode_SPIpacket_1_Mram_CMD_1_PWR_12_o_Mux_1_o : STD_LOGIC; 
  signal PWM_1_half_duty_9_rt_167 : STD_LOGIC; 
  signal PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_10_Q : STD_LOGIC; 
  signal PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_8_Q : STD_LOGIC; 
  signal PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_11_Q : STD_LOGIC; 
  signal PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_5_Q : STD_LOGIC; 
  signal PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_4_Q : STD_LOGIC; 
  signal PWM_1_half_duty_6_rt_138 : STD_LOGIC; 
  signal PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_7_Q : STD_LOGIC; 
  signal PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_13_Q : STD_LOGIC; 
  signal PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_12_Q : STD_LOGIC; 
  signal PWM_1_half_duty_14_rt_182 : STD_LOGIC; 
  signal PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_15_Q : STD_LOGIC; 
  signal PWM_1_half_duty_16_rt_205 : STD_LOGIC; 
  signal PWM_1_half_duty_18_rt_204 : STD_LOGIC; 
  signal PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_18_Q_201 : STD_LOGIC; 
  signal PWM_1_half_duty_17_rt_198 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_i_0_rt_317 : STD_LOGIC; 
  signal ProtoComp16_CYINITVCC_1 : STD_LOGIC; 
  signal PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_lut_1_Q_291 : STD_LOGIC; 
  signal PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_lut_2_Q_288 : STD_LOGIC; 
  signal ProtoComp14_CYINITVCC_1 : STD_LOGIC; 
  signal PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_lut_3_Q_285 : STD_LOGIC; 
  signal PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_lut_0_Q_284 : STD_LOGIC; 
  signal ProtoComp12_CYINITGND_0 : STD_LOGIC; 
  signal PWM_1_n0032 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_0_Q_343 : STD_LOGIC; 
  signal ProtoComp18_CYINITVCC_1 : STD_LOGIC; 
  signal ssel_IBUF_361 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_data_12_mosi_MUX_39_o : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_data_13_mosi_MUX_38_o : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_data_15_mosi_MUX_36_o : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_data_14_mosi_MUX_37_o : STD_LOGIC; 
  signal mosi_IBUF_358 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M0 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M1 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M2 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M3 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M4 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M5 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M6 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M7 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M8 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M9 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M10 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M11 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M12 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M13 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M14 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M15 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M16 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M17 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M18 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M19 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M20 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M21 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M22 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M23 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M24 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M25 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M26 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M27 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M28 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M29 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M30 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M31 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M32 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M33 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M34 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_M35 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT0 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT1 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT2 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT3 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT4 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT5 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT6 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT7 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT8 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT9 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT10 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT11 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT12 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT13 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT14 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT15 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT16 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT17 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT18 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT19 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT20 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT21 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT22 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT23 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT24 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT25 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT26 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT27 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT28 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT29 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT30 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT31 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT32 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT33 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT34 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT35 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT36 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT37 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT38 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT39 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT40 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT41 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT42 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT43 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT44 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT45 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT46 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCOUT47 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P0 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P1 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P2 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P3 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P4 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P5 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P6 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P7 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P8 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P9 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P10 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_P11 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_CARRYOUT : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_CARRYOUTF : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCIN0 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCIN1 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCIN2 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCIN3 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCIN4 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCIN5 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCIN6 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCIN7 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCIN8 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCIN9 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCIN10 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCIN11 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCIN12 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCIN13 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCIN14 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCIN15 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCIN16 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_BCIN17 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN0 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN1 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN2 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN3 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN4 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN5 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN6 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN7 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN8 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN9 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN10 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN11 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN12 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN13 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN14 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN15 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN16 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN17 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN18 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN19 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN20 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN21 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN22 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN23 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN24 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN25 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN26 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN27 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN28 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN29 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN30 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN31 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN32 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN33 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN34 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN35 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN36 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN37 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN38 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN39 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN40 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN41 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN42 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN43 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN44 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN45 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN46 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_PCIN47 : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_RSTP_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_RSTA_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_CEA_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_CEP_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_CEB_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_CEM_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_RSTB_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_CLK_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_RSTM_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_RSTOPMODE_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_CEC_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_CEOPMODE_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_RSTD_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_CED_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_RSTCARRYIN_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_RSTC_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n0019_CECARRYIN_INT : STD_LOGIC; 
  signal reset_IBUF_364 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M0 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M1 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M2 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M3 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M4 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M5 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M6 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M7 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M8 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M9 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M10 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M11 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M12 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M13 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M14 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M15 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M16 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M17 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M18 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M19 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M20 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M21 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M22 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M23 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M24 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M25 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M26 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M27 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M28 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M29 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M30 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M31 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M32 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M33 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M34 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_M35 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT0 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT1 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT2 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT3 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT4 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT5 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT6 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT7 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT8 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT9 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT10 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT11 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT12 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT13 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT14 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT15 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT16 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT17 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT18 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT19 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT20 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT21 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT22 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT23 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT24 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT25 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT26 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT27 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT28 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT29 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT30 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT31 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT32 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT33 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT34 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT35 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT36 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT37 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT38 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT39 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT40 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT41 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT42 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT43 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT44 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT45 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT46 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCOUT47 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P14 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P15 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P16 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P17 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P18 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P19 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P20 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P21 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P22 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P23 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P24 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P25 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P26 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P27 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P28 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P29 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P30 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P31 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P32 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P33 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P34 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P35 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P36 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P37 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P38 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P39 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P40 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P41 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P42 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P43 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P44 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P45 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P46 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_P47 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_BCOUT0 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_BCOUT1 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_BCOUT2 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_BCOUT3 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_BCOUT4 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_BCOUT5 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_BCOUT6 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_BCOUT7 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_BCOUT8 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_BCOUT9 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_BCOUT10 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_BCOUT11 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_BCOUT12 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_BCOUT13 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_BCOUT14 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_BCOUT15 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_BCOUT16 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_BCOUT17 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_CARRYOUT : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_CARRYOUTF : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN0 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN1 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN2 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN3 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN4 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN5 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN6 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN7 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN8 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN9 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN10 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN11 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN12 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN13 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN14 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN15 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN16 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN17 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN18 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN19 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN20 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN21 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN22 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN23 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN24 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN25 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN26 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN27 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN28 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN29 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN30 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN31 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN32 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN33 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN34 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN35 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN36 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN37 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN38 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN39 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN40 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN41 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN42 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN43 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN44 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN45 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN46 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_PCIN47 : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_RSTP_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_RSTA_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_CEA_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_CEP_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_CEB_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_CEM_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_RSTB_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_CLK_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_RSTM_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_RSTOPMODE_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_CEC_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_CEOPMODE_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_RSTD_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_CED_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_RSTCARRYIN_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_RSTC_INT : STD_LOGIC; 
  signal PWM_1_Mmult_n00191_CECARRYIN_INT : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_350 : STD_LOGIC; 
  signal sclk_IBUF_353 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_Q_346 : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_data_0_mosi_MUX_51_o : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_data_2_mosi_MUX_49_o : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_data_3_mosi_MUX_48_o : STD_LOGIC; 
  signal SPI_transceiver_1_SPI_receiver_1_data_1_mosi_MUX_50_o : STD_LOGIC; 
  signal PWM_1_Mcount_count_eqn_8 : STD_LOGIC; 
  signal PWM_1_Mcount_count_eqn_7 : STD_LOGIC; 
  signal PWM_1_Mcount_count_eqn_10 : STD_LOGIC; 
  signal PWM_1_Mcount_count_eqn_9 : STD_LOGIC; 
  signal PWM_1_Mcount_count_eqn_4 : STD_LOGIC; 
  signal PWM_1_Mcount_count_eqn_3 : STD_LOGIC; 
  signal PWM_1_Mcount_count_eqn_6 : STD_LOGIC; 
  signal PWM_1_Mcount_count_eqn_5 : STD_LOGIC; 
  signal PWM_1_Mcount_count_eqn_12 : STD_LOGIC; 
  signal PWM_1_Mcount_count_eqn_11_1299 : STD_LOGIC; 
  signal PWM_1_Mcount_count_eqn_14 : STD_LOGIC; 
  signal PWM_1_Mcount_count_eqn_13 : STD_LOGIC; 
  signal PWM_1_Mcount_count_eqn_19 : STD_LOGIC; 
  signal PWM_1_Mcount_count_eqn_15 : STD_LOGIC; 
  signal PWM_1_Mcount_count_eqn_16 : STD_LOGIC; 
  signal PWM_1_Mcount_count_eqn_17 : STD_LOGIC; 
  signal PWM_1_Mcount_count_eqn_18 : STD_LOGIC; 
  signal PWM_1_pwm_out_rstpot_1181 : STD_LOGIC; 
  signal PWM_1_n0019_16_rt_1154 : STD_LOGIC; 
  signal PWM_1_Mcount_count_eqn_0 : STD_LOGIC; 
  signal PWM_1_Mcount_count_eqn_2 : STD_LOGIC; 
  signal PWM_1_Mcount_count_eqn_1 : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_i_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_i_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_i_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_i_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_i_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_SFD_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_SFD_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_CMD_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_SFD_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_SFD_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_CMD_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_SFD_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_SFD_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_CMD_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_SFD_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_SFD_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_CMD_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_risingEdge_detector_1_flipflop_ris_Q_inter_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_risingEdge_detector_1_flipflop_sys_Q_inter_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_risingEdge_detector_1_flipflop_sys_Q_inter_IN : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_Control_SFD_Control_CMD_Control_FCS_sliced_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_Control_SFD_Control_CMD_Control_FCS_sliced_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_ssel_inter2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_ssel_inter2_IN : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_ssel_inter1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_ssel_inter1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_duty_inter_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_duty_inter_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_duty_inter_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_duty_inter_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_duty_inter_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_duty_inter_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_duty_inter_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_VALUE_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_VALUE_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_VALUE_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_VALUE_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_VALUE_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_VALUE_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_VALUE_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_VALUE_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_VALUE_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_VALUE_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_VALUE_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_VALUE_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_VALUE_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_VALUE_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_result_control_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_result_control_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_result_control_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_result_control_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_Control_CMD_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_result_control_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_mosi_inter1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_mosi_inter1_IN : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_sclk_inter1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_sclk_inter1_IN : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_sclk_inter2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_sclk_inter2_IN : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_motor_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_mosi_inter2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_mosi_inter2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_FCS_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Decode_SPIpacket_1_FCS_IN : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_1_count_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_1_count_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_1_count_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_1_count_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_1_count_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_1_count_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_1_count_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_1_count_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_1_count_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_1_count_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_1_count_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_1_count_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_1_count_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_1_count_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_1_count_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_1_count_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_1_count_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_1_pwm_out_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_1_half_duty_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_1_half_duty_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_PWM_1_half_duty_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_1_half_duty_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_PWM_1_half_duty_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_1_half_duty_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_PWM_1_half_duty_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_1_half_duty_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_PWM_1_half_duty_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_1_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_1_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_1_count_0_CLK : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_19_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcount_count_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcount_count_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcount_count_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_20_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_21_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_20_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_15_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcount_count_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcount_count_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcount_count_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_16_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_17_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_18_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_11_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcount_count_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcount_count_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcount_count_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_12_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_13_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_14_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcount_count_xor_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcount_count_xor_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcount_count_xor_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcount_count_xor_19_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcount_count_xor_19_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_4_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_5_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_6_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_7_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcount_count_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcount_count_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcount_count_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_8_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_9_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_10_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_33_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_34_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_35_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_36_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_6_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_6_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_6_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_6_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_6_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_6_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_6_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_6_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_6_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_37_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_27_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_28_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_25_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_29_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_30_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_26_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_31_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_32_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_24_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_24_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_25_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_26_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_PhysOnlyGnd_D6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_18_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_18_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_18_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_18_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_18_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_21_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_22_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_23_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_2_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_3_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_n0032_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_n0032_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_n0032_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_n0032_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_n0032_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_n0032_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_n0032_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_n0032_cy_6_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_n0032_cy_6_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_n0032_cy_6_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_n0032_cy_6_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_n0032_cy_6_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_n0032_cy_6_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_n0032_cy_6_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_n0032_cy_6_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_PWM_1_Mcompar_n0032_cy_6_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_13_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_9_D6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_3_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_3_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_3_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_10_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_11_B6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_i_10_2_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_xor_4_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_xor_4_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_xor_4_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_xor_4_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_xor_4_DI_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_xor_4_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_xor_4_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_xor_4_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_xor_4_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_xor_4_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_xor_4_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_xor_4_S_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_xor_4_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_xor_4_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_DI_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_6_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_7_B6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_8_A6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal Decode_SPIpacket_1_VALUE : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal Decode_SPIpacket_1_result_control : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Decode_SPIpacket_1_duty_inter : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal SPI_transceiver_1_SPI_receiver_1_i : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal PWM_1_count : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal PWM_1_half_duty : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal PWM_1_Mcompar_n0032_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal PWM_1_n0019 : STD_LOGIC_VECTOR ( 16 downto 12 ); 
  signal SPI_transceiver_1_SPI_receiver_1_data : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Decode_SPIpacket_1_SFD : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal SPI_transceiver_1_SPI_receiver_1_spi_packet_inter : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal PWM_1_Result : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal PWM_1_Mcount_count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal PWM_1_GND_14_o_GND_14_o_sub_7_OUT : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal Decode_SPIpacket_1_CMD : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal SPI_transceiver_1_SPI_receiver_1_n0042 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_lut : STD_LOGIC_VECTOR ( 4 downto 1 ); 
  signal PWM_1_Mcompar_n0032_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
begin
  PWM_1_Mcount_count_cy_3_PWM_1_Mcount_count_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_Result(3),
      O => PWM_1_Result_3_0
    );
  PWM_1_Mcount_count_cy_3_PWM_1_Mcount_count_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_Result(2),
      O => PWM_1_Result_2_0
    );
  PWM_1_Mcount_count_cy_3_PWM_1_Mcount_count_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_Result(1),
      O => PWM_1_Result_1_0
    );
  PWM_1_Mcount_count_cy_3_PWM_1_Mcount_count_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_Result(0),
      O => PWM_1_Result_0_0
    );
  PWM_1_count_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y41",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PWM_1_count(3),
      ADR5 => '1',
      O => PWM_1_count_3_rt_10
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_19_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y41",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_19_D5LUT_O_UNCONNECTED
    );
  ProtoComp5_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X12Y41"
    )
    port map (
      O => ProtoComp5_CYINITGND_0
    );
  PWM_1_Mcount_count_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y41"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp5_CYINITGND_0,
      CO(3) => PWM_1_Mcount_count_cy_3_Q_1399,
      CO(2) => NLW_PWM_1_Mcount_count_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_PWM_1_Mcount_count_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_PWM_1_Mcount_count_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => PWM_1_Result(3),
      O(2) => PWM_1_Result(2),
      O(1) => PWM_1_Result(1),
      O(0) => PWM_1_Result(0),
      S(3) => PWM_1_count_3_rt_10,
      S(2) => PWM_1_count_2_rt_7,
      S(1) => PWM_1_count_1_rt_15,
      S(0) => PWM_1_Mcount_count_lut(0)
    );
  PWM_1_count_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y41",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PWM_1_count(2),
      ADR5 => '1',
      O => PWM_1_count_2_rt_7
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_20_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y41",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_20_C5LUT_O_UNCONNECTED
    );
  PWM_1_count_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y41",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => PWM_1_count(1),
      ADR5 => '1',
      O => PWM_1_count_1_rt_15
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_21_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y41",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_21_B5LUT_O_UNCONNECTED
    );
  PWM_1_Mcount_count_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y41",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => PWM_1_count(0),
      ADR5 => '1',
      O => PWM_1_Mcount_count_lut(0)
    );
  SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_20_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y41",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_20_A5LUT_O_UNCONNECTED
    );
  PWM_1_Mcount_count_cy_7_PWM_1_Mcount_count_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_Result(7),
      O => PWM_1_Result_7_0
    );
  PWM_1_Mcount_count_cy_7_PWM_1_Mcount_count_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_Result(6),
      O => PWM_1_Result_6_0
    );
  PWM_1_Mcount_count_cy_7_PWM_1_Mcount_count_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_Result(5),
      O => PWM_1_Result_5_0
    );
  PWM_1_Mcount_count_cy_7_PWM_1_Mcount_count_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_Result(4),
      O => PWM_1_Result_4_0
    );
  PWM_1_count_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y42",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => PWM_1_count(7),
      ADR5 => '1',
      O => PWM_1_count_7_rt_30
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_15_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y42",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_15_D5LUT_O_UNCONNECTED
    );
  PWM_1_Mcount_count_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y42"
    )
    port map (
      CI => PWM_1_Mcount_count_cy_3_Q_1399,
      CYINIT => '0',
      CO(3) => PWM_1_Mcount_count_cy_7_Q_1408,
      CO(2) => NLW_PWM_1_Mcount_count_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_PWM_1_Mcount_count_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_PWM_1_Mcount_count_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => PWM_1_Result(7),
      O(2) => PWM_1_Result(6),
      O(1) => PWM_1_Result(5),
      O(0) => PWM_1_Result(4),
      S(3) => PWM_1_count_7_rt_30,
      S(2) => PWM_1_count_6_rt_29,
      S(1) => PWM_1_count_5_rt_32,
      S(0) => PWM_1_count_4_rt_36
    );
  PWM_1_count_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y42",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PWM_1_count(6),
      ADR5 => '1',
      O => PWM_1_count_6_rt_29
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_16_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y42",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_16_C5LUT_O_UNCONNECTED
    );
  PWM_1_count_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y42",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => PWM_1_count(5),
      ADR5 => '1',
      O => PWM_1_count_5_rt_32
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_17_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y42",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_17_B5LUT_O_UNCONNECTED
    );
  PWM_1_count_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y42",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PWM_1_count(4),
      ADR5 => '1',
      O => PWM_1_count_4_rt_36
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_18_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y42",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_18_A5LUT_O_UNCONNECTED
    );
  PWM_1_Mcount_count_cy_11_PWM_1_Mcount_count_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_Result(11),
      O => PWM_1_Result_11_0
    );
  PWM_1_Mcount_count_cy_11_PWM_1_Mcount_count_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_Result(10),
      O => PWM_1_Result_10_0
    );
  PWM_1_Mcount_count_cy_11_PWM_1_Mcount_count_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_Result(9),
      O => PWM_1_Result_9_0
    );
  PWM_1_Mcount_count_cy_11_PWM_1_Mcount_count_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_Result(8),
      O => PWM_1_Result_8_0
    );
  PWM_1_count_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y43",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PWM_1_count(11),
      ADR5 => '1',
      O => PWM_1_count_11_rt_52
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_11_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y43",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_11_D5LUT_O_UNCONNECTED
    );
  PWM_1_Mcount_count_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y43"
    )
    port map (
      CI => PWM_1_Mcount_count_cy_7_Q_1408,
      CYINIT => '0',
      CO(3) => PWM_1_Mcount_count_cy_11_Q_1417,
      CO(2) => NLW_PWM_1_Mcount_count_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_PWM_1_Mcount_count_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_PWM_1_Mcount_count_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => PWM_1_Result(11),
      O(2) => PWM_1_Result(10),
      O(1) => PWM_1_Result(9),
      O(0) => PWM_1_Result(8),
      S(3) => PWM_1_count_11_rt_52,
      S(2) => PWM_1_count_10_rt_51,
      S(1) => PWM_1_count_9_rt_54,
      S(0) => PWM_1_count_8_rt_58
    );
  PWM_1_count_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y43",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PWM_1_count(10),
      ADR5 => '1',
      O => PWM_1_count_10_rt_51
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_12_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y43",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_12_C5LUT_O_UNCONNECTED
    );
  PWM_1_count_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y43",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => PWM_1_count(9),
      ADR5 => '1',
      O => PWM_1_count_9_rt_54
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_13_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y43",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_13_B5LUT_O_UNCONNECTED
    );
  PWM_1_count_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y43",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PWM_1_count(8),
      ADR5 => '1',
      O => PWM_1_count_8_rt_58
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_14_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y43",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_14_A5LUT_O_UNCONNECTED
    );
  PWM_1_Result_19_PWM_1_Result_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_Result(19),
      O => PWM_1_Result_19_0
    );
  PWM_1_Result_19_PWM_1_Result_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_Result(18),
      O => PWM_1_Result_18_0
    );
  PWM_1_Result_19_PWM_1_Result_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_Result(17),
      O => PWM_1_Result_17_0
    );
  PWM_1_Result_19_PWM_1_Result_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_Result(16),
      O => PWM_1_Result_16_0
    );
  PWM_1_count_19_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y45",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => PWM_1_count(19),
      O => PWM_1_count_19_rt_93
    );
  PWM_1_Mcount_count_xor_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y45"
    )
    port map (
      CI => PWM_1_Mcount_count_cy_15_Q_1426,
      CYINIT => '0',
      CO(3) => NLW_PWM_1_Mcount_count_xor_19_CO_3_UNCONNECTED,
      CO(2) => NLW_PWM_1_Mcount_count_xor_19_CO_2_UNCONNECTED,
      CO(1) => NLW_PWM_1_Mcount_count_xor_19_CO_1_UNCONNECTED,
      CO(0) => NLW_PWM_1_Mcount_count_xor_19_CO_0_UNCONNECTED,
      DI(3) => NLW_PWM_1_Mcount_count_xor_19_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => PWM_1_Result(19),
      O(2) => PWM_1_Result(18),
      O(1) => PWM_1_Result(17),
      O(0) => PWM_1_Result(16),
      S(3) => PWM_1_count_19_rt_93,
      S(2) => PWM_1_count_18_rt_99,
      S(1) => PWM_1_count_17_rt_94,
      S(0) => PWM_1_count_16_rt_92
    );
  PWM_1_count_18_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y45",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PWM_1_count(18),
      ADR5 => '1',
      O => PWM_1_count_18_rt_99
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_4_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y45",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_4_C5LUT_O_UNCONNECTED
    );
  PWM_1_count_17_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y45",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => PWM_1_count(17),
      ADR5 => '1',
      O => PWM_1_count_17_rt_94
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_5_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y45",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_5_B5LUT_O_UNCONNECTED
    );
  PWM_1_count_16_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y45",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PWM_1_count(16),
      ADR5 => '1',
      O => PWM_1_count_16_rt_92
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_6_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y45",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_6_A5LUT_O_UNCONNECTED
    );
  PWM_1_Mcount_count_cy_15_PWM_1_Mcount_count_cy_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_Result(15),
      O => PWM_1_Result_15_0
    );
  PWM_1_Mcount_count_cy_15_PWM_1_Mcount_count_cy_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_Result(14),
      O => PWM_1_Result_14_0
    );
  PWM_1_Mcount_count_cy_15_PWM_1_Mcount_count_cy_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_Result(13),
      O => PWM_1_Result_13_0
    );
  PWM_1_Mcount_count_cy_15_PWM_1_Mcount_count_cy_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_Result(12),
      O => PWM_1_Result_12_0
    );
  PWM_1_count_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y44",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PWM_1_count(15),
      ADR5 => '1',
      O => PWM_1_count_15_rt_74
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_7_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y44",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_7_D5LUT_O_UNCONNECTED
    );
  PWM_1_Mcount_count_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y44"
    )
    port map (
      CI => PWM_1_Mcount_count_cy_11_Q_1417,
      CYINIT => '0',
      CO(3) => PWM_1_Mcount_count_cy_15_Q_1426,
      CO(2) => NLW_PWM_1_Mcount_count_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_PWM_1_Mcount_count_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_PWM_1_Mcount_count_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => PWM_1_Result(15),
      O(2) => PWM_1_Result(14),
      O(1) => PWM_1_Result(13),
      O(0) => PWM_1_Result(12),
      S(3) => PWM_1_count_15_rt_74,
      S(2) => PWM_1_count_14_rt_73,
      S(1) => PWM_1_count_13_rt_76,
      S(0) => PWM_1_count_12_rt_80
    );
  PWM_1_count_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y44",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PWM_1_count(14),
      ADR5 => '1',
      O => PWM_1_count_14_rt_73
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_8_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y44",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_8_C5LUT_O_UNCONNECTED
    );
  PWM_1_count_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y44",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => PWM_1_count(13),
      ADR5 => '1',
      O => PWM_1_count_13_rt_76
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_9_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y44",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_9_B5LUT_O_UNCONNECTED
    );
  PWM_1_count_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y44",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PWM_1_count(12),
      ADR5 => '1',
      O => PWM_1_count_12_rt_80
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_10_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y44",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_10_A5LUT_O_UNCONNECTED
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_3_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(3),
      O => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_3_0
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_3_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(2),
      O => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_2_0
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_3_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(1),
      O => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_1_0
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_3_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(0),
      O => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_0_0
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_3_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y39",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PWM_1_half_duty(3),
      ADR5 => '1',
      O => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_3_Q
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_33_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y39",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_33_D5LUT_O_UNCONNECTED
    );
  ProtoComp8_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X8Y39"
    )
    port map (
      O => ProtoComp8_CYINITVCC_1
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X8Y39"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp8_CYINITVCC_1,
      CO(3) => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_3_Q_1443,
      CO(2) => NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(3),
      O(2) => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(2),
      O(1) => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(1),
      O(0) => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(0),
      S(3) => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_3_Q,
      S(2) => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_2_Q,
      S(1) => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_1_Q,
      S(0) => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_0_Q
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_2_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y39",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PWM_1_half_duty(2),
      ADR5 => '1',
      O => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_2_Q
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_34_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y39",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_34_C5LUT_O_UNCONNECTED
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y39",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PWM_1_half_duty(1),
      ADR5 => '1',
      O => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_1_Q
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_35_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y39",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_35_B5LUT_O_UNCONNECTED
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y39",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => PWM_1_half_duty(0),
      ADR5 => '1',
      O => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_0_Q
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_36_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y39",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_36_A5LUT_O_UNCONNECTED
    );
  SPI_transceiver_1_SPI_receiver_1_i_3_SPI_transceiver_1_SPI_receiver_1_i_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_n0062_pack_3,
      O => SPI_transceiver_1_SPI_receiver_1_n0062
    );
  SPI_transceiver_1_SPI_receiver_1_i_3_SPI_transceiver_1_SPI_receiver_1_i_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_i(4),
      O => SPI_transceiver_1_SPI_receiver_1_i_4_0
    );
  SPI_transceiver_1_SPI_receiver_1_i_3_SPI_transceiver_1_SPI_receiver_1_i_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_i(2),
      O => SPI_transceiver_1_SPI_receiver_1_i_2_0
    );
  SPI_transceiver_1_SPI_receiver_1_n0078_inv11 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y34",
      INIT => X"0000AA000000AA00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => SPI_transceiver_1_SPI_buffer_1_ssel_inter2_1391,
      ADR0 => reset_IBUF_0,
      ADR3 => SPI_transceiver_1_risingEdge_detector_1_flipflop_ris_Q_inter_1390,
      ADR5 => '1',
      O => SPI_transceiver_1_SPI_receiver_1_n0078_inv1
    );
  SPI_transceiver_1_SPI_receiver_1_n00621 : X_LUT5
    generic map(
      LOC => "SLICE_X7Y34",
      INIT => X"AAAA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => SPI_transceiver_1_SPI_buffer_1_ssel_inter2_1391,
      ADR0 => reset_IBUF_0,
      ADR2 => '1',
      O => SPI_transceiver_1_SPI_receiver_1_n0062_pack_3
    );
  SPI_transceiver_1_SPI_receiver_1_i_3 : X_SFF
    generic map(
      LOC => "SLICE_X7Y34",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0078_inv1,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_i_3_CLK,
      I => SPI_transceiver_1_SPI_receiver_1_GND_10_o_i_31_mux_5_OUT_3_Q,
      O => SPI_transceiver_1_SPI_receiver_1_i(3),
      SRST => SPI_transceiver_1_SPI_receiver_1_n0062,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_Mmux_GND_10_o_i_31_mux_5_OUT261 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y34",
      INIT => X"0F000F000F000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => SPI_transceiver_1_SPI_receiver_1_n0042_3_0,
      ADR2 => SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_0,
      ADR5 => '1',
      O => SPI_transceiver_1_SPI_receiver_1_GND_10_o_i_31_mux_5_OUT_3_Q
    );
  SPI_transceiver_1_SPI_receiver_1_Mmux_GND_10_o_i_31_mux_5_OUT271 : X_LUT5
    generic map(
      LOC => "SLICE_X7Y34",
      INIT => X"FAFAFAFA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => SPI_transceiver_1_SPI_receiver_1_n0042_4_0,
      ADR3 => '1',
      ADR2 => SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_0,
      O => SPI_transceiver_1_SPI_receiver_1_GND_10_o_i_31_mux_5_OUT_4_Q
    );
  SPI_transceiver_1_SPI_receiver_1_i_4 : X_SFF
    generic map(
      LOC => "SLICE_X7Y34",
      INIT => '1'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0078_inv1,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_i_4_CLK,
      I => SPI_transceiver_1_SPI_receiver_1_GND_10_o_i_31_mux_5_OUT_4_Q,
      O => SPI_transceiver_1_SPI_receiver_1_i(4),
      SSET => SPI_transceiver_1_SPI_receiver_1_n0062,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  SPI_transceiver_1_SPI_receiver_1_i_1 : X_SFF
    generic map(
      LOC => "SLICE_X7Y34",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0078_inv1,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_i_1_CLK,
      I => SPI_transceiver_1_SPI_receiver_1_GND_10_o_i_31_mux_5_OUT_1_Q,
      O => SPI_transceiver_1_SPI_receiver_1_i(1),
      SRST => SPI_transceiver_1_SPI_receiver_1_n0062,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_Mmux_GND_10_o_i_31_mux_5_OUT121 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y34",
      INIT => X"5500550055005500"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => SPI_transceiver_1_SPI_receiver_1_n0042_1_0,
      ADR0 => SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_0,
      ADR5 => '1',
      O => SPI_transceiver_1_SPI_receiver_1_GND_10_o_i_31_mux_5_OUT_1_Q
    );
  SPI_transceiver_1_SPI_receiver_1_Mmux_GND_10_o_i_31_mux_5_OUT231 : X_LUT5
    generic map(
      LOC => "SLICE_X7Y34",
      INIT => X"55550000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => SPI_transceiver_1_SPI_receiver_1_n0042_2_0,
      ADR3 => '1',
      ADR0 => SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_0,
      O => SPI_transceiver_1_SPI_receiver_1_GND_10_o_i_31_mux_5_OUT_2_Q
    );
  SPI_transceiver_1_SPI_receiver_1_i_2 : X_SFF
    generic map(
      LOC => "SLICE_X7Y34",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0078_inv1,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_i_2_CLK,
      I => SPI_transceiver_1_SPI_receiver_1_GND_10_o_i_31_mux_5_OUT_2_Q,
      O => SPI_transceiver_1_SPI_receiver_1_i(2),
      SRST => SPI_transceiver_1_SPI_receiver_1_n0062,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_i_0 : X_SFF
    generic map(
      LOC => "SLICE_X7Y34",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0078_inv1,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_i_0_CLK,
      I => SPI_transceiver_1_SPI_receiver_1_GND_10_o_i_31_mux_5_OUT_0_Q,
      O => SPI_transceiver_1_SPI_receiver_1_i(0),
      SRST => SPI_transceiver_1_SPI_receiver_1_n0062,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_Mmux_GND_10_o_i_31_mux_5_OUT11 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y34",
      INIT => X"00000000FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => SPI_transceiver_1_SPI_receiver_1_n0042_0_0,
      ADR5 => SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_0,
      O => SPI_transceiver_1_SPI_receiver_1_GND_10_o_i_31_mux_5_OUT_0_Q
    );
  Decode_SPIpacket_1_SFD_3_Decode_SPIpacket_1_SFD_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Decode_SPIpacket_1_CMD(3),
      O => Decode_SPIpacket_1_CMD_3_0
    );
  Decode_SPIpacket_1_SFD_3_Decode_SPIpacket_1_SFD_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Decode_SPIpacket_1_CMD(2),
      O => Decode_SPIpacket_1_CMD_2_0
    );
  Decode_SPIpacket_1_SFD_3_Decode_SPIpacket_1_SFD_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Decode_SPIpacket_1_CMD(1),
      O => Decode_SPIpacket_1_CMD_1_0
    );
  Decode_SPIpacket_1_SFD_3_Decode_SPIpacket_1_SFD_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Decode_SPIpacket_1_CMD(0),
      O => Decode_SPIpacket_1_CMD_0_0
    );
  Decode_SPIpacket_1_SFD_3 : X_FF
    generic map(
      LOC => "SLICE_X7Y29",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_0,
      CLK => NlwBufferSignal_Decode_SPIpacket_1_SFD_3_CLK,
      I => NlwBufferSignal_Decode_SPIpacket_1_SFD_3_IN,
      O => Decode_SPIpacket_1_SFD(3),
      RST => GND,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_11_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y29",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_11_0,
      O => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_11_rt_877
    );
  Decode_SPIpacket_1_CMD_3 : X_FF
    generic map(
      LOC => "SLICE_X7Y29",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_0,
      CLK => NlwBufferSignal_Decode_SPIpacket_1_CMD_3_CLK,
      I => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_11_rt_877,
      O => Decode_SPIpacket_1_CMD(3),
      RST => GND,
      SET => GND
    );
  Decode_SPIpacket_1_SFD_2 : X_FF
    generic map(
      LOC => "SLICE_X7Y29",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_0,
      CLK => NlwBufferSignal_Decode_SPIpacket_1_SFD_2_CLK,
      I => NlwBufferSignal_Decode_SPIpacket_1_SFD_2_IN,
      O => Decode_SPIpacket_1_SFD(2),
      RST => GND,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_10_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y29",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_10_0,
      O => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_10_rt_891
    );
  Decode_SPIpacket_1_CMD_2 : X_FF
    generic map(
      LOC => "SLICE_X7Y29",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_0,
      CLK => NlwBufferSignal_Decode_SPIpacket_1_CMD_2_CLK,
      I => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_10_rt_891,
      O => Decode_SPIpacket_1_CMD(2),
      RST => GND,
      SET => GND
    );
  Decode_SPIpacket_1_SFD_1 : X_FF
    generic map(
      LOC => "SLICE_X7Y29",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_0,
      CLK => NlwBufferSignal_Decode_SPIpacket_1_SFD_1_CLK,
      I => NlwBufferSignal_Decode_SPIpacket_1_SFD_1_IN,
      O => Decode_SPIpacket_1_SFD(1),
      RST => GND,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_9_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y29",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_9_0,
      O => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_9_rt_890
    );
  Decode_SPIpacket_1_CMD_1 : X_FF
    generic map(
      LOC => "SLICE_X7Y29",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_0,
      CLK => NlwBufferSignal_Decode_SPIpacket_1_CMD_1_CLK,
      I => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_9_rt_890,
      O => Decode_SPIpacket_1_CMD(1),
      RST => GND,
      SET => GND
    );
  Decode_SPIpacket_1_SFD_0 : X_FF
    generic map(
      LOC => "SLICE_X7Y29",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_0,
      CLK => NlwBufferSignal_Decode_SPIpacket_1_SFD_0_CLK,
      I => NlwBufferSignal_Decode_SPIpacket_1_SFD_0_IN,
      O => Decode_SPIpacket_1_SFD(0),
      RST => GND,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_8_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y29",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_8_0,
      O => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_8_rt_888
    );
  Decode_SPIpacket_1_CMD_0 : X_FF
    generic map(
      LOC => "SLICE_X7Y29",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_0,
      CLK => NlwBufferSignal_Decode_SPIpacket_1_CMD_0_CLK,
      I => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_8_rt_888,
      O => Decode_SPIpacket_1_CMD(0),
      RST => GND,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_15_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(11),
      O => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_11_0
    );
  SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_15_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(10),
      O => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_10_0
    );
  SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_15_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(9),
      O => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_9_0
    );
  SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_15_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(8),
      O => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_8_0
    );
  SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_15 : X_FF
    generic map(
      LOC => "SLICE_X7Y31",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0070_inv,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_15_CLK,
      I => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_15_IN,
      O => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(15),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_data_11_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y31",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => SPI_transceiver_1_SPI_receiver_1_data(11),
      O => SPI_transceiver_1_SPI_receiver_1_data_11_rt_912
    );
  SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_11 : X_FF
    generic map(
      LOC => "SLICE_X7Y31",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0070_inv,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_11_CLK,
      I => SPI_transceiver_1_SPI_receiver_1_data_11_rt_912,
      O => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(11),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_14 : X_FF
    generic map(
      LOC => "SLICE_X7Y31",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0070_inv,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_14_CLK,
      I => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_14_IN,
      O => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(14),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_data_10_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y31",
      INIT => X"CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => SPI_transceiver_1_SPI_receiver_1_data(10),
      O => SPI_transceiver_1_SPI_receiver_1_data_10_rt_920
    );
  SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_10 : X_FF
    generic map(
      LOC => "SLICE_X7Y31",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0070_inv,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_10_CLK,
      I => SPI_transceiver_1_SPI_receiver_1_data_10_rt_920,
      O => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(10),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_13 : X_FF
    generic map(
      LOC => "SLICE_X7Y31",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0070_inv,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_13_CLK,
      I => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_13_IN,
      O => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(13),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_data_9_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y31",
      INIT => X"CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => SPI_transceiver_1_SPI_receiver_1_data(9),
      O => SPI_transceiver_1_SPI_receiver_1_data_9_rt_914
    );
  SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_9 : X_FF
    generic map(
      LOC => "SLICE_X7Y31",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0070_inv,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_9_CLK,
      I => SPI_transceiver_1_SPI_receiver_1_data_9_rt_914,
      O => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(9),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_12 : X_FF
    generic map(
      LOC => "SLICE_X7Y31",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0070_inv,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_12_CLK,
      I => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_12_IN,
      O => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(12),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_data_8_rt : X_LUT5
    generic map(
      LOC => "SLICE_X7Y31",
      INIT => X"CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => SPI_transceiver_1_SPI_receiver_1_data(8),
      O => SPI_transceiver_1_SPI_receiver_1_data_8_rt_911
    );
  SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_8 : X_FF
    generic map(
      LOC => "SLICE_X7Y31",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0070_inv,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_8_CLK,
      I => SPI_transceiver_1_SPI_receiver_1_data_8_rt_911,
      O => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(8),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  SPI_transceiver_1_risingEdge_detector_1_flipflop_ris_Q_inter : X_FF
    generic map(
      LOC => "SLICE_X6Y39",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SPI_transceiver_1_risingEdge_detector_1_flipflop_ris_Q_inter_CLK,
      I => SPI_transceiver_1_risingEdge_detector_1_flipflop_ris_D1_D2_AND_4_o,
      O => SPI_transceiver_1_risingEdge_detector_1_flipflop_ris_Q_inter_1390,
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  SPI_transceiver_1_risingEdge_detector_1_flipflop_ris_D1_D2_AND_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y39",
      INIT => X"0A0A0A0A0A0A0A0A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR0 => SPI_transceiver_1_SPI_buffer_1_sclk_inter2_1584,
      ADR2 => SPI_transceiver_1_risingEdge_detector_1_flipflop_sys_Q_inter_1585,
      O => SPI_transceiver_1_risingEdge_detector_1_flipflop_ris_D1_D2_AND_4_o
    );
  SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_3 : X_FF
    generic map(
      LOC => "SLICE_X7Y30",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0070_inv,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_3_CLK,
      I => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_3_IN,
      O => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(3),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_2 : X_FF
    generic map(
      LOC => "SLICE_X7Y30",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0070_inv,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_2_CLK,
      I => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_2_IN,
      O => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(2),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_1 : X_FF
    generic map(
      LOC => "SLICE_X7Y30",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0070_inv,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_1_CLK,
      I => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_1_IN,
      O => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(1),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_0 : X_FF
    generic map(
      LOC => "SLICE_X7Y30",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0070_inv,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_0_CLK,
      I => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_0_IN,
      O => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(0),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  SPI_transceiver_1_risingEdge_detector_1_flipflop_sys_Q_inter_SPI_transceiver_1_risingEdge_detector_1_flipflop_sys_Q_inter_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_GND_14_o_count_19_equal_6_o,
      O => PWM_1_GND_14_o_count_19_equal_6_o_0
    );
  SPI_transceiver_1_risingEdge_detector_1_flipflop_sys_Q_inter : X_FF
    generic map(
      LOC => "SLICE_X6Y41",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SPI_transceiver_1_risingEdge_detector_1_flipflop_sys_Q_inter_CLK,
      I => NlwBufferSignal_SPI_transceiver_1_risingEdge_detector_1_flipflop_sys_Q_inter_IN,
      O => SPI_transceiver_1_risingEdge_detector_1_flipflop_sys_Q_inter_1585,
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_6_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X6Y41"
    )
    port map (
      CI => PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_3_Q_1483,
      CYINIT => '0',
      CO(3) => NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_6_CO_3_UNCONNECTED,
      CO(2) => PWM_1_GND_14_o_count_19_equal_6_o,
      CO(1) => NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_6_CO_1_UNCONNECTED,
      CO(0) => NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_6_CO_0_UNCONNECTED,
      DI(3) => NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_6_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_6_O_3_UNCONNECTED,
      O(2) => NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_6_O_2_UNCONNECTED,
      O(1) => NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_6_O_1_UNCONNECTED,
      O(0) => NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_6_O_0_UNCONNECTED,
      S(3) => NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_6_S_3_UNCONNECTED,
      S(2) => PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_lut_6_Q_859,
      S(1) => PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_lut_5_Q_864,
      S(0) => PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_lut_4_Q_857
    );
  PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y41",
      INIT => X"0000C3C30000C3C3"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => PWM_1_count(19),
      ADR2 => PWM_1_count(18),
      ADR1 => PWM_1_half_duty(18),
      ADR5 => '1',
      O => PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_lut_6_Q_859
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_37_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y41",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_37_C5LUT_O_UNCONNECTED
    );
  PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y41",
      INIT => X"9000090000900009"
    )
    port map (
      ADR3 => PWM_1_half_duty(15),
      ADR5 => PWM_1_count(15),
      ADR0 => PWM_1_half_duty(16),
      ADR1 => PWM_1_count(16),
      ADR4 => PWM_1_half_duty(17),
      ADR2 => PWM_1_count(17),
      O => PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_lut_5_Q_864
    );
  PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y41",
      INIT => X"9009000000009009"
    )
    port map (
      ADR4 => PWM_1_half_duty(12),
      ADR5 => PWM_1_count(12),
      ADR1 => PWM_1_half_duty(13),
      ADR0 => PWM_1_count(13),
      ADR3 => PWM_1_half_duty(14),
      ADR2 => PWM_1_count(14),
      O => PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_lut_4_Q_857
    );
  SPI_transceiver_1_SPI_receiver_1_data_11 : X_FF
    generic map(
      LOC => "SLICE_X6Y31",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0078_inv_0,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_11_CLK,
      I => SPI_transceiver_1_SPI_receiver_1_data_11_mosi_MUX_40_o,
      O => SPI_transceiver_1_SPI_receiver_1_data(11),
      RST => GND,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_Mmux_data_11_mosi_MUX_40_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y31",
      INIT => X"FFFFDFFF00008000"
    )
    port map (
      ADR4 => SPI_transceiver_1_SPI_receiver_1_n0042_2_0,
      ADR0 => SPI_transceiver_1_SPI_receiver_1_n0042_3_0,
      ADR3 => SPI_transceiver_1_SPI_receiver_1_n0042_1_0,
      ADR5 => SPI_transceiver_1_SPI_receiver_1_data(11),
      ADR2 => SPI_transceiver_1_SPI_receiver_1_n0042_0_0,
      ADR1 => SPI_transceiver_1_SPI_buffer_1_mosi_inter2_1558,
      O => SPI_transceiver_1_SPI_receiver_1_data_11_mosi_MUX_40_o
    );
  SPI_transceiver_1_SPI_receiver_1_data_10 : X_FF
    generic map(
      LOC => "SLICE_X6Y31",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0078_inv_0,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_10_CLK,
      I => SPI_transceiver_1_SPI_receiver_1_data_10_mosi_MUX_41_o,
      O => SPI_transceiver_1_SPI_receiver_1_data(10),
      RST => GND,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_Mmux_data_10_mosi_MUX_41_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y31",
      INIT => X"F0F0F0F8F0F0F070"
    )
    port map (
      ADR3 => SPI_transceiver_1_SPI_receiver_1_n0042_2_0,
      ADR4 => SPI_transceiver_1_SPI_receiver_1_n0042_0_0,
      ADR1 => SPI_transceiver_1_SPI_receiver_1_n0042_3_0,
      ADR2 => SPI_transceiver_1_SPI_receiver_1_data(10),
      ADR0 => SPI_transceiver_1_SPI_receiver_1_n0042_1_0,
      ADR5 => SPI_transceiver_1_SPI_buffer_1_mosi_inter2_1558,
      O => SPI_transceiver_1_SPI_receiver_1_data_10_mosi_MUX_41_o
    );
  SPI_transceiver_1_SPI_receiver_1_data_9 : X_FF
    generic map(
      LOC => "SLICE_X6Y31",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0078_inv_0,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_9_CLK,
      I => SPI_transceiver_1_SPI_receiver_1_data_9_mosi_MUX_42_o,
      O => SPI_transceiver_1_SPI_receiver_1_data(9),
      RST => GND,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_Mmux_data_9_mosi_MUX_42_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y31",
      INIT => X"F0F0F0F0F0F0B8F0"
    )
    port map (
      ADR4 => SPI_transceiver_1_SPI_receiver_1_n0042_2_0,
      ADR5 => SPI_transceiver_1_SPI_receiver_1_n0042_1_0,
      ADR1 => SPI_transceiver_1_SPI_receiver_1_n0042_3_0,
      ADR2 => SPI_transceiver_1_SPI_receiver_1_data(9),
      ADR3 => SPI_transceiver_1_SPI_receiver_1_n0042_0_0,
      ADR0 => SPI_transceiver_1_SPI_buffer_1_mosi_inter2_1558,
      O => SPI_transceiver_1_SPI_receiver_1_data_9_mosi_MUX_42_o
    );
  SPI_transceiver_1_SPI_receiver_1_data_8 : X_FF
    generic map(
      LOC => "SLICE_X6Y31",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0078_inv_0,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_8_CLK,
      I => SPI_transceiver_1_SPI_receiver_1_data_8_mosi_MUX_43_o,
      O => SPI_transceiver_1_SPI_receiver_1_data(8),
      RST => GND,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_Mmux_data_8_mosi_MUX_43_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y31",
      INIT => X"FFFEFFFF00100000"
    )
    port map (
      ADR3 => SPI_transceiver_1_SPI_receiver_1_n0042_0_0,
      ADR1 => SPI_transceiver_1_SPI_receiver_1_n0042_1_0,
      ADR0 => SPI_transceiver_1_SPI_receiver_1_n0042_2_0,
      ADR5 => SPI_transceiver_1_SPI_receiver_1_data(8),
      ADR4 => SPI_transceiver_1_SPI_receiver_1_n0042_3_0,
      ADR2 => SPI_transceiver_1_SPI_buffer_1_mosi_inter2_1558,
      O => SPI_transceiver_1_SPI_receiver_1_data_8_mosi_MUX_43_o
    );
  SPI_transceiver_1_SPI_receiver_1_n0070_inv_SPI_transceiver_1_SPI_receiver_1_n0070_inv_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_n0078_inv,
      O => SPI_transceiver_1_SPI_receiver_1_n0078_inv_0
    );
  SPI_transceiver_1_SPI_receiver_1_n0070_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y35",
      INIT => X"EEEEAAAAEEEEAAAA"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => SPI_transceiver_1_risingEdge_detector_1_flipflop_ris_Q_inter_1390,
      ADR4 => SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_0,
      ADR0 => SPI_transceiver_1_SPI_buffer_1_ssel_inter2_1391,
      ADR5 => '1',
      O => SPI_transceiver_1_SPI_receiver_1_n0070_inv
    );
  SPI_transceiver_1_SPI_receiver_1_n0078_inv2 : X_LUT5
    generic map(
      LOC => "SLICE_X7Y35",
      INIT => X"00004400"
    )
    port map (
      ADR2 => '1',
      ADR3 => reset_IBUF_0,
      ADR1 => SPI_transceiver_1_risingEdge_detector_1_flipflop_ris_Q_inter_1390,
      ADR4 => SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_0,
      ADR0 => SPI_transceiver_1_SPI_buffer_1_ssel_inter2_1391,
      O => SPI_transceiver_1_SPI_receiver_1_n0078_inv
    );
  PWM_1_Madd_duty_10_GND_14_o_add_0_OUT_xor_5_11 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y32",
      INIT => X"AA99555555555555"
    )
    port map (
      ADR2 => '1',
      ADR0 => Decode_SPIpacket_1_duty_inter(5),
      ADR4 => Decode_SPIpacket_1_duty_inter(3),
      ADR5 => Decode_SPIpacket_1_duty_inter_4_0,
      ADR1 => Decode_SPIpacket_1_duty_inter_2_0,
      ADR3 => Decode_SPIpacket_1_duty_inter(1),
      O => PWM_1_duty_10_GND_14_o_add_0_OUT_5_Q
    );
  PWM_1_Madd_duty_10_GND_14_o_add_0_OUT_xor_7_11 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y32",
      INIT => X"FFFFFAAAFFFFEAAA"
    )
    port map (
      ADR0 => Decode_SPIpacket_1_duty_inter_6_0,
      ADR4 => Decode_SPIpacket_1_duty_inter(5),
      ADR2 => Decode_SPIpacket_1_duty_inter_4_0,
      ADR3 => Decode_SPIpacket_1_duty_inter(3),
      ADR1 => Decode_SPIpacket_1_duty_inter_2_0,
      ADR5 => Decode_SPIpacket_1_duty_inter(1),
      O => PWM_1_duty_10_GND_14_o_add_0_OUT_7_Q
    );
  Decode_SPIpacket_1_Mxor_CMD_3_FCS_XOR_47_o_xo_0_2 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y29",
      INIT => X"6996966996696996"
    )
    port map (
      ADR2 => Decode_SPIpacket_1_VALUE(3),
      ADR3 => Decode_SPIpacket_1_VALUE(4),
      ADR5 => Decode_SPIpacket_1_VALUE(1),
      ADR0 => Decode_SPIpacket_1_VALUE(2),
      ADR4 => Decode_SPIpacket_1_VALUE(5),
      ADR1 => Decode_SPIpacket_1_VALUE(6),
      O => Decode_SPIpacket_1_Mxor_CMD_3_FCS_XOR_47_o_xo_0_1_1613
    );
  Decode_SPIpacket_1_Control_SFD_Control_CMD_Control_FCS_sliced_1 : X_FF
    generic map(
      LOC => "SLICE_X9Y29",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_0,
      CLK => NlwBufferSignal_Decode_SPIpacket_1_Control_SFD_Control_CMD_Control_FCS_sliced_1_CLK,
      I => Decode_SPIpacket_1_CMD_3_FCS_XOR_47_o,
      O => Decode_SPIpacket_1_Control_SFD_Control_CMD_Control_FCS_sliced_1_1599,
      RST => GND,
      SET => GND
    );
  Decode_SPIpacket_1_Mxor_CMD_3_FCS_XOR_47_o_xo_0_3 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y29",
      INIT => X"00FF00FFFF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => Decode_SPIpacket_1_Mxor_CMD_3_FCS_XOR_47_o_xo_0_Q,
      ADR3 => Decode_SPIpacket_1_Mxor_CMD_3_FCS_XOR_47_o_xo_0_1_1613,
      O => Decode_SPIpacket_1_CMD_3_FCS_XOR_47_o
    );
  Decode_SPIpacket_1_Control_SFD_Control_CMD_Control_FCS_sliced_0 : X_FF
    generic map(
      LOC => "SLICE_X9Y29",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_0,
      CLK => NlwBufferSignal_Decode_SPIpacket_1_Control_SFD_Control_CMD_Control_FCS_sliced_0_CLK,
      I => Decode_SPIpacket_1_PWR_12_o_INV_57_o,
      O => Decode_SPIpacket_1_Control_SFD_Control_CMD_Control_FCS_sliced_0_1581,
      RST => GND,
      SET => GND
    );
  Decode_SPIpacket_1_PWR_12_o_INV_57_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y29",
      INIT => X"55FFFFFFFFFFFFFF"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => Decode_SPIpacket_1_SFD(3),
      ADR5 => Decode_SPIpacket_1_SFD(2),
      ADR4 => Decode_SPIpacket_1_SFD(1),
      ADR3 => Decode_SPIpacket_1_SFD(0),
      O => Decode_SPIpacket_1_PWR_12_o_INV_57_o
    );
  SPI_transceiver_1_SPI_buffer_1_ssel_inter2 : X_FF
    generic map(
      LOC => "SLICE_X7Y41",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_ssel_inter2_CLK,
      I => NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_ssel_inter2_IN,
      O => SPI_transceiver_1_SPI_buffer_1_ssel_inter2_1391,
      SET => Decode_SPIpacket_1_reset_inv,
      RST => GND
    );
  SPI_transceiver_1_SPI_receiver_1_data_7 : X_FF
    generic map(
      LOC => "SLICE_X8Y33",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0078_inv_0,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_7_CLK,
      I => SPI_transceiver_1_SPI_receiver_1_data_7_mosi_MUX_44_o,
      O => SPI_transceiver_1_SPI_receiver_1_data(7),
      RST => GND,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_Mmux_data_7_mosi_MUX_44_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y33",
      INIT => X"EF40FF00FF00FF00"
    )
    port map (
      ADR0 => SPI_transceiver_1_SPI_receiver_1_n0042_3_0,
      ADR2 => SPI_transceiver_1_SPI_receiver_1_n0042_2_0,
      ADR5 => SPI_transceiver_1_SPI_receiver_1_n0042_1_0,
      ADR3 => SPI_transceiver_1_SPI_receiver_1_data(7),
      ADR4 => SPI_transceiver_1_SPI_receiver_1_n0042_0_0,
      ADR1 => SPI_transceiver_1_SPI_buffer_1_mosi_inter2_1558,
      O => SPI_transceiver_1_SPI_receiver_1_data_7_mosi_MUX_44_o
    );
  SPI_transceiver_1_SPI_receiver_1_data_6 : X_FF
    generic map(
      LOC => "SLICE_X8Y33",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0078_inv_0,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_6_CLK,
      I => SPI_transceiver_1_SPI_receiver_1_data_6_mosi_MUX_45_o,
      O => SPI_transceiver_1_SPI_receiver_1_data(6),
      RST => GND,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_Mmux_data_6_mosi_MUX_45_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y33",
      INIT => X"AAAAAACAAAAAAAAA"
    )
    port map (
      ADR3 => SPI_transceiver_1_SPI_receiver_1_n0042_3_0,
      ADR4 => SPI_transceiver_1_SPI_receiver_1_n0042_0_0,
      ADR2 => SPI_transceiver_1_SPI_receiver_1_n0042_2_0,
      ADR0 => SPI_transceiver_1_SPI_receiver_1_data(6),
      ADR5 => SPI_transceiver_1_SPI_receiver_1_n0042_1_0,
      ADR1 => SPI_transceiver_1_SPI_buffer_1_mosi_inter2_1558,
      O => SPI_transceiver_1_SPI_receiver_1_data_6_mosi_MUX_45_o
    );
  SPI_transceiver_1_SPI_receiver_1_data_5 : X_FF
    generic map(
      LOC => "SLICE_X8Y33",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0078_inv_0,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_5_CLK,
      I => SPI_transceiver_1_SPI_receiver_1_data_5_mosi_MUX_46_o,
      O => SPI_transceiver_1_SPI_receiver_1_data(5),
      RST => GND,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_Mmux_data_5_mosi_MUX_46_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y33",
      INIT => X"FEFF1000FFFF0000"
    )
    port map (
      ADR1 => SPI_transceiver_1_SPI_receiver_1_n0042_3_0,
      ADR0 => SPI_transceiver_1_SPI_receiver_1_n0042_1_0,
      ADR5 => SPI_transceiver_1_SPI_receiver_1_n0042_2_0,
      ADR4 => SPI_transceiver_1_SPI_receiver_1_data(5),
      ADR3 => SPI_transceiver_1_SPI_receiver_1_n0042_0_0,
      ADR2 => SPI_transceiver_1_SPI_buffer_1_mosi_inter2_1558,
      O => SPI_transceiver_1_SPI_receiver_1_data_5_mosi_MUX_46_o
    );
  SPI_transceiver_1_SPI_receiver_1_data_4 : X_FF
    generic map(
      LOC => "SLICE_X8Y33",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0078_inv_0,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_4_CLK,
      I => SPI_transceiver_1_SPI_receiver_1_data_4_mosi_MUX_47_o,
      O => SPI_transceiver_1_SPI_receiver_1_data(4),
      RST => GND,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_Mmux_data_4_mosi_MUX_47_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y33",
      INIT => X"FFFE0100FFFF0000"
    )
    port map (
      ADR1 => SPI_transceiver_1_SPI_receiver_1_n0042_3_0,
      ADR2 => SPI_transceiver_1_SPI_receiver_1_n0042_1_0,
      ADR0 => SPI_transceiver_1_SPI_receiver_1_n0042_0_0,
      ADR4 => SPI_transceiver_1_SPI_receiver_1_data(4),
      ADR5 => SPI_transceiver_1_SPI_receiver_1_n0042_2_0,
      ADR3 => SPI_transceiver_1_SPI_buffer_1_mosi_inter2_1558,
      O => SPI_transceiver_1_SPI_receiver_1_data_4_mosi_MUX_47_o
    );
  SPI_transceiver_1_SPI_buffer_1_ssel_inter1 : X_FF
    generic map(
      LOC => "SLICE_X7Y50",
      INIT => '1'
    )
    port map (
      CE => reset_IBUF_0,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_ssel_inter1_CLK,
      I => NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_ssel_inter1_IN,
      O => SPI_transceiver_1_SPI_buffer_1_ssel_inter1_1586,
      SET => GND,
      RST => GND
    );
  PWM_1_Madd_duty_10_GND_14_o_add_0_OUT_xor_1_11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y35",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => '1',
      ADR4 => Decode_SPIpacket_1_duty_inter(1),
      O => PWM_1_duty_10_GND_14_o_add_0_OUT_1_Q
    );
  Decode_SPIpacket_1_duty_inter_5_Decode_SPIpacket_1_duty_inter_5_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Decode_SPIpacket_1_duty_inter(6),
      O => Decode_SPIpacket_1_duty_inter_6_0
    );
  Decode_SPIpacket_1_duty_inter_5_Decode_SPIpacket_1_duty_inter_5_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Decode_SPIpacket_1_duty_inter(4),
      O => Decode_SPIpacket_1_duty_inter_4_0
    );
  Decode_SPIpacket_1_duty_inter_5_Decode_SPIpacket_1_duty_inter_5_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Decode_SPIpacket_1_duty_inter(2),
      O => Decode_SPIpacket_1_duty_inter_2_0
    );
  Decode_SPIpacket_1_duty_inter_5 : X_FF
    generic map(
      LOC => "SLICE_X9Y30",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Decode_SPIpacket_1_duty_inter_5_CLK,
      I => Decode_SPIpacket_1_GND_11_o_duty_inter_10_mux_3_OUT_5_Q,
      O => Decode_SPIpacket_1_duty_inter(5),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  Decode_SPIpacket_1_Mmux_GND_11_o_duty_inter_10_mux_3_OUT61 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y30",
      INIT => X"0101000001010000"
    )
    port map (
      ADR3 => '1',
      ADR4 => Decode_SPIpacket_1_VALUE(5),
      ADR0 => Decode_SPIpacket_1_result_control(2),
      ADR1 => Decode_SPIpacket_1_result_control(1),
      ADR2 => Decode_SPIpacket_1_result_control_0_0,
      ADR5 => '1',
      O => Decode_SPIpacket_1_GND_11_o_duty_inter_10_mux_3_OUT_5_Q
    );
  Decode_SPIpacket_1_Mmux_GND_11_o_duty_inter_10_mux_3_OUT71 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y30",
      INIT => X"01000100"
    )
    port map (
      ADR3 => Decode_SPIpacket_1_VALUE(6),
      ADR4 => '1',
      ADR0 => Decode_SPIpacket_1_result_control(2),
      ADR1 => Decode_SPIpacket_1_result_control(1),
      ADR2 => Decode_SPIpacket_1_result_control_0_0,
      O => Decode_SPIpacket_1_GND_11_o_duty_inter_10_mux_3_OUT_6_Q
    );
  Decode_SPIpacket_1_duty_inter_6 : X_FF
    generic map(
      LOC => "SLICE_X9Y30",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Decode_SPIpacket_1_duty_inter_6_CLK,
      I => Decode_SPIpacket_1_GND_11_o_duty_inter_10_mux_3_OUT_6_Q,
      O => Decode_SPIpacket_1_duty_inter(6),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  Decode_SPIpacket_1_duty_inter_3 : X_FF
    generic map(
      LOC => "SLICE_X9Y30",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Decode_SPIpacket_1_duty_inter_3_CLK,
      I => Decode_SPIpacket_1_GND_11_o_duty_inter_10_mux_3_OUT_3_Q,
      O => Decode_SPIpacket_1_duty_inter(3),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  Decode_SPIpacket_1_Mmux_GND_11_o_duty_inter_10_mux_3_OUT41 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y30",
      INIT => X"0000030000000300"
    )
    port map (
      ADR0 => '1',
      ADR3 => Decode_SPIpacket_1_VALUE(3),
      ADR4 => Decode_SPIpacket_1_result_control(2),
      ADR2 => Decode_SPIpacket_1_result_control(1),
      ADR1 => Decode_SPIpacket_1_result_control_0_0,
      ADR5 => '1',
      O => Decode_SPIpacket_1_GND_11_o_duty_inter_10_mux_3_OUT_3_Q
    );
  Decode_SPIpacket_1_Mmux_GND_11_o_duty_inter_10_mux_3_OUT51 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y30",
      INIT => X"00000202"
    )
    port map (
      ADR0 => Decode_SPIpacket_1_VALUE(4),
      ADR3 => '1',
      ADR4 => Decode_SPIpacket_1_result_control(2),
      ADR2 => Decode_SPIpacket_1_result_control(1),
      ADR1 => Decode_SPIpacket_1_result_control_0_0,
      O => Decode_SPIpacket_1_GND_11_o_duty_inter_10_mux_3_OUT_4_Q
    );
  Decode_SPIpacket_1_duty_inter_4 : X_FF
    generic map(
      LOC => "SLICE_X9Y30",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Decode_SPIpacket_1_duty_inter_4_CLK,
      I => Decode_SPIpacket_1_GND_11_o_duty_inter_10_mux_3_OUT_4_Q,
      O => Decode_SPIpacket_1_duty_inter(4),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  Decode_SPIpacket_1_duty_inter_1 : X_FF
    generic map(
      LOC => "SLICE_X9Y30",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Decode_SPIpacket_1_duty_inter_1_CLK,
      I => Decode_SPIpacket_1_GND_11_o_duty_inter_10_mux_3_OUT_1_Q,
      O => Decode_SPIpacket_1_duty_inter(1),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  Decode_SPIpacket_1_Mmux_GND_11_o_duty_inter_10_mux_3_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y30",
      INIT => X"0000003000000030"
    )
    port map (
      ADR0 => '1',
      ADR2 => Decode_SPIpacket_1_VALUE(1),
      ADR3 => Decode_SPIpacket_1_result_control(2),
      ADR4 => Decode_SPIpacket_1_result_control(1),
      ADR1 => Decode_SPIpacket_1_result_control_0_0,
      ADR5 => '1',
      O => Decode_SPIpacket_1_GND_11_o_duty_inter_10_mux_3_OUT_1_Q
    );
  Decode_SPIpacket_1_Mmux_GND_11_o_duty_inter_10_mux_3_OUT31 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y30",
      INIT => X"00000022"
    )
    port map (
      ADR0 => Decode_SPIpacket_1_VALUE(2),
      ADR2 => '1',
      ADR3 => Decode_SPIpacket_1_result_control(2),
      ADR4 => Decode_SPIpacket_1_result_control(1),
      ADR1 => Decode_SPIpacket_1_result_control_0_0,
      O => Decode_SPIpacket_1_GND_11_o_duty_inter_10_mux_3_OUT_2_Q
    );
  Decode_SPIpacket_1_duty_inter_2 : X_FF
    generic map(
      LOC => "SLICE_X9Y30",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Decode_SPIpacket_1_duty_inter_2_CLK,
      I => Decode_SPIpacket_1_GND_11_o_duty_inter_10_mux_3_OUT_2_Q,
      O => Decode_SPIpacket_1_duty_inter(2),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  Decode_SPIpacket_1_duty_inter_0 : X_FF
    generic map(
      LOC => "SLICE_X9Y30",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Decode_SPIpacket_1_duty_inter_0_CLK,
      I => Decode_SPIpacket_1_GND_11_o_duty_inter_10_mux_3_OUT_0_Q,
      O => Decode_SPIpacket_1_duty_inter(0),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  Decode_SPIpacket_1_Mmux_GND_11_o_duty_inter_10_mux_3_OUT11 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y30",
      INIT => X"0005000000050000"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => Decode_SPIpacket_1_VALUE(0),
      ADR3 => Decode_SPIpacket_1_result_control(2),
      ADR0 => Decode_SPIpacket_1_result_control(1),
      ADR2 => Decode_SPIpacket_1_result_control_0_0,
      O => Decode_SPIpacket_1_GND_11_o_duty_inter_10_mux_3_OUT_0_Q
    );
  Decode_SPIpacket_1_VALUE_6 : X_FF
    generic map(
      LOC => "SLICE_X9Y31",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_0,
      CLK => NlwBufferSignal_Decode_SPIpacket_1_VALUE_6_CLK,
      I => NlwBufferSignal_Decode_SPIpacket_1_VALUE_6_IN,
      O => Decode_SPIpacket_1_VALUE(6),
      RST => GND,
      SET => GND
    );
  Decode_SPIpacket_1_VALUE_5 : X_FF
    generic map(
      LOC => "SLICE_X9Y31",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_0,
      CLK => NlwBufferSignal_Decode_SPIpacket_1_VALUE_5_CLK,
      I => NlwBufferSignal_Decode_SPIpacket_1_VALUE_5_IN,
      O => Decode_SPIpacket_1_VALUE(5),
      RST => GND,
      SET => GND
    );
  Decode_SPIpacket_1_VALUE_4 : X_FF
    generic map(
      LOC => "SLICE_X9Y31",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_0,
      CLK => NlwBufferSignal_Decode_SPIpacket_1_VALUE_4_CLK,
      I => NlwBufferSignal_Decode_SPIpacket_1_VALUE_4_IN,
      O => Decode_SPIpacket_1_VALUE(4),
      RST => GND,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_7 : X_FF
    generic map(
      LOC => "SLICE_X8Y31",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0070_inv,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_7_CLK,
      I => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_7_IN,
      O => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(7),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_6 : X_FF
    generic map(
      LOC => "SLICE_X8Y31",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0070_inv,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_6_CLK,
      I => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_6_IN,
      O => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(6),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_5 : X_FF
    generic map(
      LOC => "SLICE_X8Y31",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0070_inv,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_5_CLK,
      I => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_5_IN,
      O => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(5),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_4 : X_FF
    generic map(
      LOC => "SLICE_X8Y31",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0070_inv,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_4_CLK,
      I => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_4_IN,
      O => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(4),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  Decode_SPIpacket_1_VALUE_3 : X_FF
    generic map(
      LOC => "SLICE_X8Y30",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_0,
      CLK => NlwBufferSignal_Decode_SPIpacket_1_VALUE_3_CLK,
      I => NlwBufferSignal_Decode_SPIpacket_1_VALUE_3_IN,
      O => Decode_SPIpacket_1_VALUE(3),
      RST => GND,
      SET => GND
    );
  Decode_SPIpacket_1_VALUE_2 : X_FF
    generic map(
      LOC => "SLICE_X8Y30",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_0,
      CLK => NlwBufferSignal_Decode_SPIpacket_1_VALUE_2_CLK,
      I => NlwBufferSignal_Decode_SPIpacket_1_VALUE_2_IN,
      O => Decode_SPIpacket_1_VALUE(2),
      RST => GND,
      SET => GND
    );
  Decode_SPIpacket_1_VALUE_1 : X_FF
    generic map(
      LOC => "SLICE_X8Y30",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_0,
      CLK => NlwBufferSignal_Decode_SPIpacket_1_VALUE_1_CLK,
      I => NlwBufferSignal_Decode_SPIpacket_1_VALUE_1_IN,
      O => Decode_SPIpacket_1_VALUE(1),
      RST => GND,
      SET => GND
    );
  Decode_SPIpacket_1_VALUE_0 : X_FF
    generic map(
      LOC => "SLICE_X8Y30",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_0,
      CLK => NlwBufferSignal_Decode_SPIpacket_1_VALUE_0_CLK,
      I => NlwBufferSignal_Decode_SPIpacket_1_VALUE_0_IN,
      O => Decode_SPIpacket_1_VALUE(0),
      RST => GND,
      SET => GND
    );
  Decode_SPIpacket_1_result_control_2_Decode_SPIpacket_1_result_control_2_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Decode_SPIpacket_1_result_control(0),
      O => Decode_SPIpacket_1_result_control_0_0
    );
  Decode_SPIpacket_1_result_control_2 : X_FF
    generic map(
      LOC => "SLICE_X8Y29",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_0,
      CLK => NlwBufferSignal_Decode_SPIpacket_1_result_control_2_CLK,
      I => NlwBufferSignal_Decode_SPIpacket_1_result_control_2_IN,
      O => Decode_SPIpacket_1_result_control(2),
      RST => GND,
      SET => GND
    );
  Decode_SPIpacket_1_result_control_1 : X_FF
    generic map(
      LOC => "SLICE_X8Y29",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_0,
      CLK => NlwBufferSignal_Decode_SPIpacket_1_result_control_1_CLK,
      I => NlwBufferSignal_Decode_SPIpacket_1_result_control_1_IN,
      O => Decode_SPIpacket_1_result_control(1),
      RST => GND,
      SET => GND
    );
  Decode_SPIpacket_1_Control_CMD : X_FF
    generic map(
      LOC => "SLICE_X8Y29",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_0,
      CLK => NlwBufferSignal_Decode_SPIpacket_1_Control_CMD_CLK,
      I => Decode_SPIpacket_1_Mram_CMD_1_PWR_12_o_Mux_1_o,
      O => Decode_SPIpacket_1_Control_CMD_1612,
      RST => GND,
      SET => GND
    );
  Decode_SPIpacket_1_Mram_CMD_1_PWR_12_o_Mux_1_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y29",
      INIT => X"F00FF00FF00FF00F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => Decode_SPIpacket_1_CMD_0_0,
      ADR2 => Decode_SPIpacket_1_CMD_1_0,
      ADR5 => '1',
      O => Decode_SPIpacket_1_Mram_CMD_1_PWR_12_o_Mux_1_o
    );
  Decode_SPIpacket_1_Control_SFD_Control_CMD_Control_FCS_sliced_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X8Y29",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => Decode_SPIpacket_1_Control_SFD_Control_CMD_Control_FCS_sliced_1_1599,
      ADR3 => '1',
      ADR2 => '1',
      O => Decode_SPIpacket_1_Control_SFD_Control_CMD_Control_FCS_sliced_1_rt_979
    );
  Decode_SPIpacket_1_result_control_0 : X_FF
    generic map(
      LOC => "SLICE_X8Y29",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_0,
      CLK => NlwBufferSignal_Decode_SPIpacket_1_result_control_0_CLK,
      I => Decode_SPIpacket_1_Control_SFD_Control_CMD_Control_FCS_sliced_1_rt_979,
      O => Decode_SPIpacket_1_result_control(0),
      RST => GND,
      SET => GND
    );
  PWM_1_Madd_duty_10_GND_14_o_add_0_OUT_xor_6_11 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y32",
      INIT => X"FAEAAAAA05155555"
    )
    port map (
      ADR5 => Decode_SPIpacket_1_duty_inter_6_0,
      ADR0 => Decode_SPIpacket_1_duty_inter(5),
      ADR2 => Decode_SPIpacket_1_duty_inter_4_0,
      ADR4 => Decode_SPIpacket_1_duty_inter(3),
      ADR3 => Decode_SPIpacket_1_duty_inter_2_0,
      ADR1 => Decode_SPIpacket_1_duty_inter(1),
      O => PWM_1_duty_10_GND_14_o_add_0_OUT_6_Q
    );
  PWM_1_Madd_duty_10_GND_14_o_add_0_OUT_xor_3_11 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y33",
      INIT => X"00FF33CC00FF33CC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => Decode_SPIpacket_1_duty_inter(3),
      ADR1 => Decode_SPIpacket_1_duty_inter(1),
      ADR4 => Decode_SPIpacket_1_duty_inter_2_0,
      O => PWM_1_duty_10_GND_14_o_add_0_OUT_3_Q
    );
  PWM_1_Madd_duty_10_GND_14_o_add_0_OUT_xor_4_11 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y33",
      INIT => X"3C3C3CF03C3C3CF0"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => Decode_SPIpacket_1_duty_inter_4_0,
      ADR1 => Decode_SPIpacket_1_duty_inter(3),
      ADR3 => Decode_SPIpacket_1_duty_inter_2_0,
      ADR4 => Decode_SPIpacket_1_duty_inter(1),
      O => PWM_1_duty_10_GND_14_o_add_0_OUT_4_Q
    );
  PWM_1_Madd_duty_10_GND_14_o_add_0_OUT_xor_2_11 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y34",
      INIT => X"FF0000FFFF0000FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR3 => Decode_SPIpacket_1_duty_inter_2_0,
      ADR4 => Decode_SPIpacket_1_duty_inter(1),
      O => PWM_1_duty_10_GND_14_o_add_0_OUT_2_Q
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_11_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(11),
      O => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_11_0
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_11_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(10),
      O => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_10_0
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_11_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(9),
      O => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_9_0
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_11_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(8),
      O => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_8_0
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y41",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => PWM_1_half_duty(11),
      ADR5 => '1',
      O => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_11_Q
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_27_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y41",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_27_D5LUT_O_UNCONNECTED
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X8Y41"
    )
    port map (
      CI => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_7_Q_1452,
      CYINIT => '0',
      CO(3) => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_11_Q_1461,
      CO(2) => NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '1',
      DI(0) => '0',
      O(3) => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(11),
      O(2) => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(10),
      O(1) => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(9),
      O(0) => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(8),
      S(3) => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_11_Q,
      S(2) => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_10_Q,
      S(1) => PWM_1_half_duty_9_rt_167,
      S(0) => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_8_Q
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_10_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y41",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PWM_1_half_duty(10),
      ADR5 => '1',
      O => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_10_Q
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_28_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y41",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_28_C5LUT_O_UNCONNECTED
    );
  PWM_1_half_duty_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X8Y41",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => PWM_1_half_duty(9),
      ADR5 => '1',
      O => PWM_1_half_duty_9_rt_167
    );
  SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_25_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y41",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_25_B5LUT_O_UNCONNECTED
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_8_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y41",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => PWM_1_half_duty(8),
      ADR5 => '1',
      O => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_8_Q
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_29_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y41",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_29_A5LUT_O_UNCONNECTED
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_7_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(7),
      O => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_7_0
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_7_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(6),
      O => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_6_0
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_7_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(5),
      O => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_5_0
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_7_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(4),
      O => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_4_0
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_7_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y40",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => PWM_1_half_duty(7),
      ADR5 => '1',
      O => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_7_Q
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_30_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y40",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_30_D5LUT_O_UNCONNECTED
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X8Y40"
    )
    port map (
      CI => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_3_Q_1443,
      CYINIT => '0',
      CO(3) => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_7_Q_1452,
      CO(2) => NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '1',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(7),
      O(2) => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(6),
      O(1) => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(5),
      O(0) => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(4),
      S(3) => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_7_Q,
      S(2) => PWM_1_half_duty_6_rt_138,
      S(1) => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_5_Q,
      S(0) => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_4_Q
    );
  PWM_1_half_duty_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X8Y40",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => PWM_1_half_duty(6),
      ADR5 => '1',
      O => PWM_1_half_duty_6_rt_138
    );
  SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_26_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y40",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_26_C5LUT_O_UNCONNECTED
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_5_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y40",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => PWM_1_half_duty(5),
      ADR5 => '1',
      O => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_5_Q
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_31_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y40",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_31_B5LUT_O_UNCONNECTED
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_4_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y40",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PWM_1_half_duty_4_0,
      ADR5 => '1',
      O => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_4_Q
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_32_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y40",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_32_A5LUT_O_UNCONNECTED
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_15_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(15),
      O => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_15_0
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_15_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(14),
      O => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_14_0
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_15_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(13),
      O => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_13_0
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_15_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(12),
      O => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_12_0
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_15_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y42",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => PWM_1_half_duty(15),
      ADR5 => '1',
      O => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_15_Q
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_24_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y42",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_24_D5LUT_O_UNCONNECTED
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X8Y42"
    )
    port map (
      CI => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_11_Q_1461,
      CYINIT => '0',
      CO(3) => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_15_Q_1470,
      CO(2) => NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '1',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(15),
      O(2) => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(14),
      O(1) => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(13),
      O(0) => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(12),
      S(3) => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_15_Q,
      S(2) => PWM_1_half_duty_14_rt_182,
      S(1) => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_13_Q,
      S(0) => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_12_Q
    );
  PWM_1_half_duty_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X8Y42",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PWM_1_half_duty(14),
      ADR5 => '1',
      O => PWM_1_half_duty_14_rt_182
    );
  SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_24_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y42",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_24_C5LUT_O_UNCONNECTED
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_13_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y42",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => PWM_1_half_duty(13),
      ADR5 => '1',
      O => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_13_Q
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_25_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y42",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_25_B5LUT_O_UNCONNECTED
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_12_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y42",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => PWM_1_half_duty(12),
      ADR5 => '1',
      O => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_lut_12_Q
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_26_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y42",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_26_A5LUT_O_UNCONNECTED
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_18_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_18_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_18_Q_201,
      O => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_18_0
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_18_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_18_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(18),
      O => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_18_0
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_18_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_18_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(17),
      O => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_17_0
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_18_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_18_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(16),
      O => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_16_0
    );
  PhysOnlyGnd_D6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X8Y43",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_PhysOnlyGnd_D6LUT_O_UNCONNECTED
    );
  PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_18_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X8Y43"
    )
    port map (
      CI => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_15_Q_1470,
      CYINIT => '0',
      CO(3) => NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_18_CO_3_UNCONNECTED,
      CO(2) => NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_18_CO_2_UNCONNECTED,
      CO(1) => NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_18_CO_1_UNCONNECTED,
      CO(0) => NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_18_CO_0_UNCONNECTED,
      DI(3) => NLW_PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_18_DI_3_UNCONNECTED,
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_18_Q_201,
      O(2) => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(18),
      O(1) => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(17),
      O(0) => PWM_1_GND_14_o_GND_14_o_sub_7_OUT(16),
      S(3) => '0',
      S(2) => PWM_1_half_duty_18_rt_204,
      S(1) => PWM_1_half_duty_17_rt_198,
      S(0) => PWM_1_half_duty_16_rt_205
    );
  PWM_1_half_duty_18_rt : X_LUT6
    generic map(
      LOC => "SLICE_X8Y43",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => PWM_1_half_duty(18),
      ADR5 => '1',
      O => PWM_1_half_duty_18_rt_204
    );
  SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_21_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y43",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_21_C5LUT_O_UNCONNECTED
    );
  PWM_1_half_duty_17_rt : X_LUT6
    generic map(
      LOC => "SLICE_X8Y43",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => PWM_1_half_duty(17),
      ADR5 => '1',
      O => PWM_1_half_duty_17_rt_198
    );
  SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_22_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y43",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_22_B5LUT_O_UNCONNECTED
    );
  PWM_1_half_duty_16_rt : X_LUT6
    generic map(
      LOC => "SLICE_X8Y43",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => PWM_1_half_duty(16),
      ADR5 => '1',
      O => PWM_1_half_duty_16_rt_205
    );
  SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_23_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y43",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_23_A5LUT_O_UNCONNECTED
    );
  SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_cy_3_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_n0042(3),
      O => SPI_transceiver_1_SPI_receiver_1_n0042_3_0
    );
  SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_cy_3_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_n0042(2),
      O => SPI_transceiver_1_SPI_receiver_1_n0042_2_0
    );
  SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_cy_3_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_n0042(1),
      O => SPI_transceiver_1_SPI_receiver_1_n0042_1_0
    );
  SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_cy_3_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_n0042(0),
      O => SPI_transceiver_1_SPI_receiver_1_n0042_0_0
    );
  SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_lut_3_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y33",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => SPI_transceiver_1_SPI_receiver_1_i(3),
      ADR5 => '1',
      O => SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_lut(3)
    );
  SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y33",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_D5LUT_O_UNCONNECTED
    );
  ProtoComp16_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X4Y33"
    )
    port map (
      O => ProtoComp16_CYINITVCC_1
    );
  SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X4Y33"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp16_CYINITVCC_1,
      CO(3) => SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_cy(3),
      CO(2) => NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_cy_3_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '0',
      O(3) => SPI_transceiver_1_SPI_receiver_1_n0042(3),
      O(2) => SPI_transceiver_1_SPI_receiver_1_n0042(2),
      O(1) => SPI_transceiver_1_SPI_receiver_1_n0042(1),
      O(0) => SPI_transceiver_1_SPI_receiver_1_n0042(0),
      S(3) => SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_lut(3),
      S(2) => SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_lut(2),
      S(1) => SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_lut(1),
      S(0) => SPI_transceiver_1_SPI_receiver_1_i_0_rt_317
    );
  SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_lut_2_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y33",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => SPI_transceiver_1_SPI_receiver_1_i_2_0,
      ADR5 => '1',
      O => SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_lut(2)
    );
  SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_2_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y33",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_2_C5LUT_O_UNCONNECTED
    );
  SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_lut_1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y33",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => SPI_transceiver_1_SPI_receiver_1_i(1),
      ADR5 => '1',
      O => SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_lut(1)
    );
  SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_3_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y33",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_3_B5LUT_O_UNCONNECTED
    );
  SPI_transceiver_1_SPI_receiver_1_i_0_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y33",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => SPI_transceiver_1_SPI_receiver_1_i(0),
      ADR5 => '1',
      O => SPI_transceiver_1_SPI_receiver_1_i_0_rt_317
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y33",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_A5LUT_O_UNCONNECTED
    );
  PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y40",
      INIT => X"8020401008020401"
    )
    port map (
      ADR4 => PWM_1_half_duty(9),
      ADR0 => PWM_1_count(9),
      ADR3 => PWM_1_half_duty(10),
      ADR1 => PWM_1_count(10),
      ADR5 => PWM_1_half_duty(11),
      ADR2 => PWM_1_count(11),
      O => PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_lut_3_Q_285
    );
  ProtoComp14_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X6Y40"
    )
    port map (
      O => ProtoComp14_CYINITVCC_1
    );
  PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X6Y40"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp14_CYINITVCC_1,
      CO(3) => PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_3_Q_1483,
      CO(2) => NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_cy_3_O_0_UNCONNECTED,
      S(3) => PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_lut_3_Q_285,
      S(2) => PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_lut_2_Q_288,
      S(1) => PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_lut_1_Q_291,
      S(0) => PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_lut_0_Q_284
    );
  PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y40",
      INIT => X"8020401008020401"
    )
    port map (
      ADR3 => PWM_1_half_duty(6),
      ADR1 => PWM_1_count(6),
      ADR5 => PWM_1_half_duty(7),
      ADR2 => PWM_1_count(7),
      ADR0 => PWM_1_half_duty(8),
      ADR4 => PWM_1_count(8),
      O => PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_lut_2_Q_288
    );
  PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y40",
      INIT => X"9009000000009009"
    )
    port map (
      ADR5 => PWM_1_half_duty(3),
      ADR4 => PWM_1_count(3),
      ADR0 => PWM_1_half_duty_4_0,
      ADR1 => PWM_1_count(4),
      ADR2 => PWM_1_half_duty(5),
      ADR3 => PWM_1_count(5),
      O => PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_lut_1_Q_291
    );
  PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y40",
      INIT => X"8421000000008421"
    )
    port map (
      ADR5 => PWM_1_half_duty(0),
      ADR4 => PWM_1_count(0),
      ADR1 => PWM_1_half_duty(1),
      ADR3 => PWM_1_count(1),
      ADR0 => PWM_1_half_duty(2),
      ADR2 => PWM_1_count(2),
      O => PWM_1_Mcompar_GND_14_o_count_19_equal_6_o_lut_0_Q_284
    );
  PWM_1_Mcompar_n0032_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y41",
      INIT => X"8040201008040201"
    )
    port map (
      ADR3 => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_9_0,
      ADR0 => PWM_1_count(9),
      ADR4 => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_10_0,
      ADR1 => PWM_1_count(10),
      ADR5 => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_11_0,
      ADR2 => PWM_1_count(11),
      O => PWM_1_Mcompar_n0032_lut(3)
    );
  ProtoComp12_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X10Y41"
    )
    port map (
      O => ProtoComp12_CYINITGND_0
    );
  PWM_1_Mcompar_n0032_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y41"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp12_CYINITGND_0,
      CO(3) => PWM_1_Mcompar_n0032_cy(3),
      CO(2) => NLW_PWM_1_Mcompar_n0032_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_PWM_1_Mcompar_n0032_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_PWM_1_Mcompar_n0032_cy_3_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => NLW_PWM_1_Mcompar_n0032_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_PWM_1_Mcompar_n0032_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_PWM_1_Mcompar_n0032_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_PWM_1_Mcompar_n0032_cy_3_O_0_UNCONNECTED,
      S(3) => PWM_1_Mcompar_n0032_lut(3),
      S(2) => PWM_1_Mcompar_n0032_lut(2),
      S(1) => PWM_1_Mcompar_n0032_lut(1),
      S(0) => PWM_1_Mcompar_n0032_lut(0)
    );
  PWM_1_Mcompar_n0032_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y41",
      INIT => X"8200410000820041"
    )
    port map (
      ADR2 => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_6_0,
      ADR1 => PWM_1_count(6),
      ADR4 => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_7_0,
      ADR0 => PWM_1_count(7),
      ADR5 => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_8_0,
      ADR3 => PWM_1_count(8),
      O => PWM_1_Mcompar_n0032_lut(2)
    );
  PWM_1_Mcompar_n0032_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y41",
      INIT => X"8400008421000021"
    )
    port map (
      ADR1 => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_3_0,
      ADR5 => PWM_1_count(3),
      ADR3 => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_4_0,
      ADR4 => PWM_1_count(4),
      ADR2 => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_5_0,
      ADR0 => PWM_1_count(5),
      O => PWM_1_Mcompar_n0032_lut(1)
    );
  PWM_1_Mcompar_n0032_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y41",
      INIT => X"8020401008020401"
    )
    port map (
      ADR5 => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_0_0,
      ADR2 => PWM_1_count(0),
      ADR4 => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_1_0,
      ADR0 => PWM_1_count(1),
      ADR3 => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_2_0,
      ADR1 => PWM_1_count(2),
      O => PWM_1_Mcompar_n0032_lut(0)
    );
  PWM_1_n0032_PWM_1_n0032_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_n0032,
      O => PWM_1_n0032_0
    );
  PWM_1_Mcompar_n0032_cy_6_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y42"
    )
    port map (
      CI => PWM_1_Mcompar_n0032_cy(3),
      CYINIT => '0',
      CO(3) => NLW_PWM_1_Mcompar_n0032_cy_6_CO_3_UNCONNECTED,
      CO(2) => PWM_1_n0032,
      CO(1) => NLW_PWM_1_Mcompar_n0032_cy_6_CO_1_UNCONNECTED,
      CO(0) => NLW_PWM_1_Mcompar_n0032_cy_6_CO_0_UNCONNECTED,
      DI(3) => NLW_PWM_1_Mcompar_n0032_cy_6_DI_3_UNCONNECTED,
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => NLW_PWM_1_Mcompar_n0032_cy_6_O_3_UNCONNECTED,
      O(2) => NLW_PWM_1_Mcompar_n0032_cy_6_O_2_UNCONNECTED,
      O(1) => NLW_PWM_1_Mcompar_n0032_cy_6_O_1_UNCONNECTED,
      O(0) => NLW_PWM_1_Mcompar_n0032_cy_6_O_0_UNCONNECTED,
      S(3) => NLW_PWM_1_Mcompar_n0032_cy_6_S_3_UNCONNECTED,
      S(2) => PWM_1_Mcompar_n0032_lut(6),
      S(1) => PWM_1_Mcompar_n0032_lut(5),
      S(0) => PWM_1_Mcompar_n0032_lut(4)
    );
  PWM_1_Mcompar_n0032_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y42",
      INIT => X"8241824182418241"
    )
    port map (
      ADR4 => '1',
      ADR2 => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_18_0,
      ADR1 => PWM_1_count(18),
      ADR3 => PWM_1_Msub_GND_14_o_GND_14_o_sub_7_OUT_cy_18_0,
      ADR0 => PWM_1_count(19),
      ADR5 => '1',
      O => PWM_1_Mcompar_n0032_lut(6)
    );
  SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_13_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X10Y42",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_13_C5LUT_O_UNCONNECTED
    );
  PWM_1_Mcompar_n0032_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y42",
      INIT => X"8040080420100201"
    )
    port map (
      ADR5 => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_15_0,
      ADR1 => PWM_1_count(15),
      ADR3 => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_16_0,
      ADR0 => PWM_1_count(16),
      ADR2 => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_17_0,
      ADR4 => PWM_1_count(17),
      O => PWM_1_Mcompar_n0032_lut(5)
    );
  PWM_1_Mcompar_n0032_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y42",
      INIT => X"8008200240041001"
    )
    port map (
      ADR2 => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_12_0,
      ADR3 => PWM_1_count(12),
      ADR5 => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_13_0,
      ADR0 => PWM_1_count(13),
      ADR4 => PWM_1_GND_14_o_GND_14_o_sub_7_OUT_14_0,
      ADR1 => PWM_1_count(14),
      O => PWM_1_Mcompar_n0032_lut(4)
    );
  SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_9_D6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X6Y34",
      INIT => X"FFFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_9_D6LUT_O_UNCONNECTED
    );
  ProtoComp18_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X6Y34"
    )
    port map (
      O => ProtoComp18_CYINITVCC_1
    );
  SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X6Y34"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp18_CYINITVCC_1,
      CO(3) => SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_3_Q_1488,
      CO(2) => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_3_CO_0_UNCONNECTED,
      DI(3) => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_3_DI_3_UNCONNECTED,
      DI(2) => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_3_DI_2_UNCONNECTED,
      DI(1) => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_3_DI_1_UNCONNECTED,
      DI(0) => '0',
      O(3) => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_3_O_0_UNCONNECTED,
      S(3) => '1',
      S(2) => '1',
      S(1) => '1',
      S(0) => SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_0_Q_343
    );
  SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_10_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X6Y34",
      INIT => X"FFFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_10_C6LUT_O_UNCONNECTED
    );
  SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_11_B6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X6Y34",
      INIT => X"FFFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_11_B6LUT_O_UNCONNECTED
    );
  SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y34",
      INIT => X"0000000100000001"
    )
    port map (
      ADR2 => SPI_transceiver_1_SPI_receiver_1_i(0),
      ADR4 => SPI_transceiver_1_SPI_receiver_1_i(1),
      ADR1 => SPI_transceiver_1_SPI_receiver_1_i_2_0,
      ADR0 => SPI_transceiver_1_SPI_receiver_1_i(3),
      ADR3 => SPI_transceiver_1_SPI_receiver_1_i_4_0,
      ADR5 => '1',
      O => SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_0_Q_343
    );
  SPI_transceiver_1_SPI_receiver_1_i_10_2_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y34",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_i_10_2_A5LUT_O_UNCONNECTED
    );
  ssel_IBUF : X_BUF
    generic map(
      LOC => "PAD19",
      PATHPULSE => 115 ps
    )
    port map (
      O => ssel_IBUF_361,
      I => ssel
    );
  ProtoComp20_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD19",
      PATHPULSE => 115 ps
    )
    port map (
      I => ssel_IBUF_361,
      O => ssel_IBUF_0
    );
  SPI_transceiver_1_SPI_buffer_1_mosi_inter1 : X_FF
    generic map(
      LOC => "SLICE_X2Y50",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_0,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_mosi_inter1_CLK,
      I => NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_mosi_inter1_IN,
      O => SPI_transceiver_1_SPI_buffer_1_mosi_inter1_1605,
      RST => GND,
      SET => GND
    );
  SPI_transceiver_1_SPI_buffer_1_sclk_inter1 : X_FF
    generic map(
      LOC => "SLICE_X3Y49",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_0,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_sclk_inter1_CLK,
      I => NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_sclk_inter1_IN,
      O => SPI_transceiver_1_SPI_buffer_1_sclk_inter1_1600,
      RST => GND,
      SET => GND
    );
  SPI_transceiver_1_SPI_buffer_1_sclk_inter2 : X_FF
    generic map(
      LOC => "SLICE_X4Y45",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_sclk_inter2_CLK,
      I => NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_sclk_inter2_IN,
      O => SPI_transceiver_1_SPI_buffer_1_sclk_inter2_1584,
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  clk_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 115 ps
    )
    port map (
      I => NlwBufferSignal_clk_BUFGP_BUFG_IN,
      O => clk_BUFGP
    );
  SPI_transceiver_1_SPI_receiver_1_data_15 : X_FF
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0078_inv_0,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_15_CLK,
      I => SPI_transceiver_1_SPI_receiver_1_data_15_mosi_MUX_36_o,
      O => SPI_transceiver_1_SPI_receiver_1_data(15),
      RST => GND,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_Mmux_data_15_mosi_MUX_36_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => X"DFFF8000FFFF0000"
    )
    port map (
      ADR0 => SPI_transceiver_1_SPI_receiver_1_n0042_0_0,
      ADR5 => SPI_transceiver_1_SPI_receiver_1_n0042_1_0,
      ADR2 => SPI_transceiver_1_SPI_receiver_1_n0042_2_0,
      ADR4 => SPI_transceiver_1_SPI_receiver_1_data(15),
      ADR3 => SPI_transceiver_1_SPI_receiver_1_n0042_3_0,
      ADR1 => SPI_transceiver_1_SPI_buffer_1_mosi_inter2_1558,
      O => SPI_transceiver_1_SPI_receiver_1_data_15_mosi_MUX_36_o
    );
  SPI_transceiver_1_SPI_receiver_1_data_14 : X_FF
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0078_inv_0,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_14_CLK,
      I => SPI_transceiver_1_SPI_receiver_1_data_14_mosi_MUX_37_o,
      O => SPI_transceiver_1_SPI_receiver_1_data(14),
      RST => GND,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_Mmux_data_14_mosi_MUX_37_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => X"F2F0F0F0D0F0F0F0"
    )
    port map (
      ADR1 => SPI_transceiver_1_SPI_receiver_1_n0042_0_0,
      ADR0 => SPI_transceiver_1_SPI_receiver_1_n0042_1_0,
      ADR3 => SPI_transceiver_1_SPI_receiver_1_n0042_2_0,
      ADR2 => SPI_transceiver_1_SPI_receiver_1_data(14),
      ADR4 => SPI_transceiver_1_SPI_receiver_1_n0042_3_0,
      ADR5 => SPI_transceiver_1_SPI_buffer_1_mosi_inter2_1558,
      O => SPI_transceiver_1_SPI_receiver_1_data_14_mosi_MUX_37_o
    );
  SPI_transceiver_1_SPI_receiver_1_data_13 : X_FF
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0078_inv_0,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_13_CLK,
      I => SPI_transceiver_1_SPI_receiver_1_data_13_mosi_MUX_38_o,
      O => SPI_transceiver_1_SPI_receiver_1_data(13),
      RST => GND,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_Mmux_data_13_mosi_MUX_38_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => X"FD08FF00FF00FF00"
    )
    port map (
      ADR2 => SPI_transceiver_1_SPI_receiver_1_n0042_1_0,
      ADR4 => SPI_transceiver_1_SPI_receiver_1_n0042_3_0,
      ADR0 => SPI_transceiver_1_SPI_receiver_1_n0042_2_0,
      ADR3 => SPI_transceiver_1_SPI_receiver_1_data(13),
      ADR5 => SPI_transceiver_1_SPI_receiver_1_n0042_0_0,
      ADR1 => SPI_transceiver_1_SPI_buffer_1_mosi_inter2_1558,
      O => SPI_transceiver_1_SPI_receiver_1_data_13_mosi_MUX_38_o
    );
  SPI_transceiver_1_SPI_receiver_1_data_12 : X_FF
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0078_inv_0,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_12_CLK,
      I => SPI_transceiver_1_SPI_receiver_1_data_12_mosi_MUX_39_o,
      O => SPI_transceiver_1_SPI_receiver_1_data(12),
      RST => GND,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_Mmux_data_12_mosi_MUX_39_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => X"FFFDFFFF00080000"
    )
    port map (
      ADR3 => SPI_transceiver_1_SPI_receiver_1_n0042_0_0,
      ADR2 => SPI_transceiver_1_SPI_receiver_1_n0042_1_0,
      ADR0 => SPI_transceiver_1_SPI_receiver_1_n0042_2_0,
      ADR5 => SPI_transceiver_1_SPI_receiver_1_data(12),
      ADR4 => SPI_transceiver_1_SPI_receiver_1_n0042_3_0,
      ADR1 => SPI_transceiver_1_SPI_buffer_1_mosi_inter2_1558,
      O => SPI_transceiver_1_SPI_receiver_1_data_12_mosi_MUX_39_o
    );
  motor_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD30"
    )
    port map (
      I => NlwBufferSignal_motor_1_OBUF_I,
      O => motor_1
    );
  mosi_IBUF : X_BUF
    generic map(
      LOC => "PAD4",
      PATHPULSE => 115 ps
    )
    port map (
      O => mosi_IBUF_358,
      I => mosi
    );
  ProtoComp20_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD4",
      PATHPULSE => 115 ps
    )
    port map (
      I => mosi_IBUF_358,
      O => mosi_IBUF_0
    );
  SPI_transceiver_1_SPI_receiver_1_n0042_4_SPI_transceiver_1_SPI_receiver_1_n0042_4_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_n0042(4),
      O => SPI_transceiver_1_SPI_receiver_1_n0042_4_0
    );
  SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_xor_4_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X4Y34"
    )
    port map (
      CI => SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_cy(3),
      CYINIT => '0',
      CO(3) => NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_xor_4_CO_3_UNCONNECTED,
      CO(2) => NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_xor_4_CO_2_UNCONNECTED,
      CO(1) => NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_xor_4_CO_1_UNCONNECTED,
      CO(0) => NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_xor_4_CO_0_UNCONNECTED,
      DI(3) => NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_xor_4_DI_3_UNCONNECTED,
      DI(2) => NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_xor_4_DI_2_UNCONNECTED,
      DI(1) => NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_xor_4_DI_1_UNCONNECTED,
      DI(0) => NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_xor_4_DI_0_UNCONNECTED,
      O(3) => NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_xor_4_O_3_UNCONNECTED,
      O(2) => NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_xor_4_O_2_UNCONNECTED,
      O(1) => NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_xor_4_O_1_UNCONNECTED,
      O(0) => SPI_transceiver_1_SPI_receiver_1_n0042(4),
      S(3) => NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_xor_4_S_3_UNCONNECTED,
      S(2) => NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_xor_4_S_2_UNCONNECTED,
      S(1) => NLW_SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_xor_4_S_1_UNCONNECTED,
      S(0) => SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_lut(4)
    );
  SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_lut_4_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y34",
      INIT => X"00000000FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => SPI_transceiver_1_SPI_receiver_1_i_4_0,
      O => SPI_transceiver_1_SPI_receiver_1_Msub_n0042_Madd_lut(4)
    );
  PWM_1_Mmult_n0019_RSTPINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y9",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => PWM_1_Mmult_n0019_RSTP_INT
    );
  PWM_1_Mmult_n0019_RSTAINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y9",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => PWM_1_Mmult_n0019_RSTA_INT
    );
  PWM_1_Mmult_n0019_CEAINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y9",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => PWM_1_Mmult_n0019_CEA_INT
    );
  PWM_1_Mmult_n0019_CEPINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y9",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => PWM_1_Mmult_n0019_CEP_INT
    );
  PWM_1_Mmult_n0019_CEBINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y9",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => PWM_1_Mmult_n0019_CEB_INT
    );
  PWM_1_Mmult_n0019_CEMINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y9",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => PWM_1_Mmult_n0019_CEM_INT
    );
  PWM_1_Mmult_n0019_RSTBINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y9",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => PWM_1_Mmult_n0019_RSTB_INT
    );
  PWM_1_Mmult_n0019_CLKINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y9",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => PWM_1_Mmult_n0019_CLK_INT
    );
  PWM_1_Mmult_n0019_RSTMINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y9",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => PWM_1_Mmult_n0019_RSTM_INT
    );
  PWM_1_Mmult_n0019_RSTOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y9",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => PWM_1_Mmult_n0019_RSTOPMODE_INT
    );
  PWM_1_Mmult_n0019_CECINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y9",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => PWM_1_Mmult_n0019_CEC_INT
    );
  PWM_1_Mmult_n0019_CEOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y9",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => PWM_1_Mmult_n0019_CEOPMODE_INT
    );
  PWM_1_Mmult_n0019_RSTDINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y9",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => PWM_1_Mmult_n0019_RSTD_INT
    );
  PWM_1_Mmult_n0019_CEDINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y9",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => PWM_1_Mmult_n0019_CED_INT
    );
  PWM_1_Mmult_n0019_RSTCARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X0Y9",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => PWM_1_Mmult_n0019_RSTCARRYIN_INT
    );
  PWM_1_Mmult_n0019_RSTCINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y9",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => PWM_1_Mmult_n0019_RSTC_INT
    );
  PWM_1_Mmult_n0019_CECARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X0Y9",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => PWM_1_Mmult_n0019_CECARRYIN_INT
    );
  PWM_1_Mmult_n0019 : X_DSP48A1
    generic map(
      A0REG => 0,
      A1REG => 0,
      B0REG => 0,
      B1REG => 0,
      CREG => 0,
      DREG => 0,
      MREG => 0,
      OPMODEREG => 0,
      PREG => 0,
      CARRYINREG => 0,
      CARRYOUTREG => 0,
      B_INPUT => "DIRECT",
      CARRYINSEL => "OPMODE5",
      RSTTYPE => "SYNC",
      LOC => "DSP48_X0Y9"
    )
    port map (
      CECARRYIN => PWM_1_Mmult_n0019_CECARRYIN_INT,
      RSTC => PWM_1_Mmult_n0019_RSTC_INT,
      RSTCARRYIN => PWM_1_Mmult_n0019_RSTCARRYIN_INT,
      CED => PWM_1_Mmult_n0019_CED_INT,
      RSTD => PWM_1_Mmult_n0019_RSTD_INT,
      CEOPMODE => PWM_1_Mmult_n0019_CEOPMODE_INT,
      CEC => PWM_1_Mmult_n0019_CEC_INT,
      RSTOPMODE => PWM_1_Mmult_n0019_RSTOPMODE_INT,
      RSTM => PWM_1_Mmult_n0019_RSTM_INT,
      CLK => PWM_1_Mmult_n0019_CLK_INT,
      RSTB => PWM_1_Mmult_n0019_RSTB_INT,
      CEM => PWM_1_Mmult_n0019_CEM_INT,
      CEB => PWM_1_Mmult_n0019_CEB_INT,
      CARRYIN => GND,
      CEP => PWM_1_Mmult_n0019_CEP_INT,
      CEA => PWM_1_Mmult_n0019_CEA_INT,
      RSTA => PWM_1_Mmult_n0019_RSTA_INT,
      RSTP => PWM_1_Mmult_n0019_RSTP_INT,
      CARRYOUTF => PWM_1_Mmult_n0019_CARRYOUTF,
      CARRYOUT => PWM_1_Mmult_n0019_CARRYOUT,
      B(17) => GND,
      B(16) => GND,
      B(15) => GND,
      B(14) => GND,
      B(13) => GND,
      B(12) => GND,
      B(11) => GND,
      B(10) => GND,
      B(9) => GND,
      B(8) => GND,
      B(7) => PWM_1_duty_10_GND_14_o_add_0_OUT_7_Q,
      B(6) => PWM_1_duty_10_GND_14_o_add_0_OUT_6_Q,
      B(5) => PWM_1_duty_10_GND_14_o_add_0_OUT_5_Q,
      B(4) => PWM_1_duty_10_GND_14_o_add_0_OUT_4_Q,
      B(3) => PWM_1_duty_10_GND_14_o_add_0_OUT_3_Q,
      B(2) => PWM_1_duty_10_GND_14_o_add_0_OUT_2_Q,
      B(1) => PWM_1_duty_10_GND_14_o_add_0_OUT_1_Q,
      B(0) => Decode_SPIpacket_1_duty_inter(0),
      PCIN(47) => PWM_1_Mmult_n0019_PCIN47,
      PCIN(46) => PWM_1_Mmult_n0019_PCIN46,
      PCIN(45) => PWM_1_Mmult_n0019_PCIN45,
      PCIN(44) => PWM_1_Mmult_n0019_PCIN44,
      PCIN(43) => PWM_1_Mmult_n0019_PCIN43,
      PCIN(42) => PWM_1_Mmult_n0019_PCIN42,
      PCIN(41) => PWM_1_Mmult_n0019_PCIN41,
      PCIN(40) => PWM_1_Mmult_n0019_PCIN40,
      PCIN(39) => PWM_1_Mmult_n0019_PCIN39,
      PCIN(38) => PWM_1_Mmult_n0019_PCIN38,
      PCIN(37) => PWM_1_Mmult_n0019_PCIN37,
      PCIN(36) => PWM_1_Mmult_n0019_PCIN36,
      PCIN(35) => PWM_1_Mmult_n0019_PCIN35,
      PCIN(34) => PWM_1_Mmult_n0019_PCIN34,
      PCIN(33) => PWM_1_Mmult_n0019_PCIN33,
      PCIN(32) => PWM_1_Mmult_n0019_PCIN32,
      PCIN(31) => PWM_1_Mmult_n0019_PCIN31,
      PCIN(30) => PWM_1_Mmult_n0019_PCIN30,
      PCIN(29) => PWM_1_Mmult_n0019_PCIN29,
      PCIN(28) => PWM_1_Mmult_n0019_PCIN28,
      PCIN(27) => PWM_1_Mmult_n0019_PCIN27,
      PCIN(26) => PWM_1_Mmult_n0019_PCIN26,
      PCIN(25) => PWM_1_Mmult_n0019_PCIN25,
      PCIN(24) => PWM_1_Mmult_n0019_PCIN24,
      PCIN(23) => PWM_1_Mmult_n0019_PCIN23,
      PCIN(22) => PWM_1_Mmult_n0019_PCIN22,
      PCIN(21) => PWM_1_Mmult_n0019_PCIN21,
      PCIN(20) => PWM_1_Mmult_n0019_PCIN20,
      PCIN(19) => PWM_1_Mmult_n0019_PCIN19,
      PCIN(18) => PWM_1_Mmult_n0019_PCIN18,
      PCIN(17) => PWM_1_Mmult_n0019_PCIN17,
      PCIN(16) => PWM_1_Mmult_n0019_PCIN16,
      PCIN(15) => PWM_1_Mmult_n0019_PCIN15,
      PCIN(14) => PWM_1_Mmult_n0019_PCIN14,
      PCIN(13) => PWM_1_Mmult_n0019_PCIN13,
      PCIN(12) => PWM_1_Mmult_n0019_PCIN12,
      PCIN(11) => PWM_1_Mmult_n0019_PCIN11,
      PCIN(10) => PWM_1_Mmult_n0019_PCIN10,
      PCIN(9) => PWM_1_Mmult_n0019_PCIN9,
      PCIN(8) => PWM_1_Mmult_n0019_PCIN8,
      PCIN(7) => PWM_1_Mmult_n0019_PCIN7,
      PCIN(6) => PWM_1_Mmult_n0019_PCIN6,
      PCIN(5) => PWM_1_Mmult_n0019_PCIN5,
      PCIN(4) => PWM_1_Mmult_n0019_PCIN4,
      PCIN(3) => PWM_1_Mmult_n0019_PCIN3,
      PCIN(2) => PWM_1_Mmult_n0019_PCIN2,
      PCIN(1) => PWM_1_Mmult_n0019_PCIN1,
      PCIN(0) => PWM_1_Mmult_n0019_PCIN0,
      C(47) => GND,
      C(46) => GND,
      C(45) => GND,
      C(44) => GND,
      C(43) => GND,
      C(42) => GND,
      C(41) => GND,
      C(40) => GND,
      C(39) => GND,
      C(38) => GND,
      C(37) => GND,
      C(36) => GND,
      C(35) => GND,
      C(34) => GND,
      C(33) => GND,
      C(32) => GND,
      C(31) => GND,
      C(30) => GND,
      C(29) => GND,
      C(28) => GND,
      C(27) => GND,
      C(26) => GND,
      C(25) => GND,
      C(24) => GND,
      C(23) => GND,
      C(22) => GND,
      C(21) => GND,
      C(20) => GND,
      C(19) => GND,
      C(18) => GND,
      C(17) => GND,
      C(16) => GND,
      C(15) => GND,
      C(14) => GND,
      C(13) => GND,
      C(12) => GND,
      C(11) => GND,
      C(10) => GND,
      C(9) => GND,
      C(8) => GND,
      C(7) => GND,
      C(6) => GND,
      C(5) => GND,
      C(4) => GND,
      C(3) => GND,
      C(2) => GND,
      C(1) => GND,
      C(0) => GND,
      OPMODE(7) => GND,
      OPMODE(6) => GND,
      OPMODE(5) => GND,
      OPMODE(4) => GND,
      OPMODE(3) => GND,
      OPMODE(2) => GND,
      OPMODE(1) => GND,
      OPMODE(0) => VCC,
      D(17) => GND,
      D(16) => GND,
      D(15) => GND,
      D(14) => GND,
      D(13) => GND,
      D(12) => GND,
      D(11) => GND,
      D(10) => GND,
      D(9) => GND,
      D(8) => GND,
      D(7) => GND,
      D(6) => GND,
      D(5) => GND,
      D(4) => GND,
      D(3) => GND,
      D(2) => GND,
      D(1) => GND,
      D(0) => GND,
      A(17) => GND,
      A(16) => VCC,
      A(15) => GND,
      A(14) => VCC,
      A(13) => GND,
      A(12) => GND,
      A(11) => GND,
      A(10) => GND,
      A(9) => VCC,
      A(8) => GND,
      A(7) => GND,
      A(6) => VCC,
      A(5) => GND,
      A(4) => GND,
      A(3) => GND,
      A(2) => GND,
      A(1) => GND,
      A(0) => GND,
      BCIN(17) => PWM_1_Mmult_n0019_BCIN17,
      BCIN(16) => PWM_1_Mmult_n0019_BCIN16,
      BCIN(15) => PWM_1_Mmult_n0019_BCIN15,
      BCIN(14) => PWM_1_Mmult_n0019_BCIN14,
      BCIN(13) => PWM_1_Mmult_n0019_BCIN13,
      BCIN(12) => PWM_1_Mmult_n0019_BCIN12,
      BCIN(11) => PWM_1_Mmult_n0019_BCIN11,
      BCIN(10) => PWM_1_Mmult_n0019_BCIN10,
      BCIN(9) => PWM_1_Mmult_n0019_BCIN9,
      BCIN(8) => PWM_1_Mmult_n0019_BCIN8,
      BCIN(7) => PWM_1_Mmult_n0019_BCIN7,
      BCIN(6) => PWM_1_Mmult_n0019_BCIN6,
      BCIN(5) => PWM_1_Mmult_n0019_BCIN5,
      BCIN(4) => PWM_1_Mmult_n0019_BCIN4,
      BCIN(3) => PWM_1_Mmult_n0019_BCIN3,
      BCIN(2) => PWM_1_Mmult_n0019_BCIN2,
      BCIN(1) => PWM_1_Mmult_n0019_BCIN1,
      BCIN(0) => PWM_1_Mmult_n0019_BCIN0,
      BCOUT(17) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_17,
      BCOUT(16) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_16,
      BCOUT(15) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_15,
      BCOUT(14) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_14,
      BCOUT(13) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_13,
      BCOUT(12) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_12,
      BCOUT(11) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_11,
      BCOUT(10) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_10,
      BCOUT(9) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_9,
      BCOUT(8) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_8,
      BCOUT(7) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_7,
      BCOUT(6) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_6,
      BCOUT(5) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_5,
      BCOUT(4) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_4,
      BCOUT(3) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_3,
      BCOUT(2) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_2,
      BCOUT(1) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_1,
      BCOUT(0) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_0,
      P(47) => PWM_1_Mmult_n0019_P47_to_Mmult_n00191,
      P(46) => PWM_1_Mmult_n0019_P46_to_Mmult_n00191,
      P(45) => PWM_1_Mmult_n0019_P45_to_Mmult_n00191,
      P(44) => PWM_1_Mmult_n0019_P44_to_Mmult_n00191,
      P(43) => PWM_1_Mmult_n0019_P43_to_Mmult_n00191,
      P(42) => PWM_1_Mmult_n0019_P42_to_Mmult_n00191,
      P(41) => PWM_1_Mmult_n0019_P41_to_Mmult_n00191,
      P(40) => PWM_1_Mmult_n0019_P40_to_Mmult_n00191,
      P(39) => PWM_1_Mmult_n0019_P39_to_Mmult_n00191,
      P(38) => PWM_1_Mmult_n0019_P38_to_Mmult_n00191,
      P(37) => PWM_1_Mmult_n0019_P37_to_Mmult_n00191,
      P(36) => PWM_1_Mmult_n0019_P36_to_Mmult_n00191,
      P(35) => PWM_1_Mmult_n0019_P35_to_Mmult_n00191,
      P(34) => PWM_1_Mmult_n0019_P34_to_Mmult_n00191,
      P(33) => PWM_1_Mmult_n0019_P33_to_Mmult_n00191,
      P(32) => PWM_1_Mmult_n0019_P32_to_Mmult_n00191,
      P(31) => PWM_1_Mmult_n0019_P31_to_Mmult_n00191,
      P(30) => PWM_1_Mmult_n0019_P30_to_Mmult_n00191,
      P(29) => PWM_1_Mmult_n0019_P29_to_Mmult_n00191,
      P(28) => PWM_1_Mmult_n0019_P28_to_Mmult_n00191,
      P(27) => PWM_1_Mmult_n0019_P27_to_Mmult_n00191,
      P(26) => PWM_1_Mmult_n0019_P26_to_Mmult_n00191,
      P(25) => PWM_1_Mmult_n0019_P25_to_Mmult_n00191,
      P(24) => PWM_1_Mmult_n0019_P24_to_Mmult_n00191,
      P(23) => PWM_1_Mmult_n0019_P23_to_Mmult_n00191,
      P(22) => PWM_1_Mmult_n0019_P22_to_Mmult_n00191,
      P(21) => PWM_1_Mmult_n0019_P21_to_Mmult_n00191,
      P(20) => PWM_1_Mmult_n0019_P20_to_Mmult_n00191,
      P(19) => PWM_1_Mmult_n0019_P19_to_Mmult_n00191,
      P(18) => PWM_1_Mmult_n0019_P18_to_Mmult_n00191,
      P(17) => PWM_1_Mmult_n0019_P17_to_Mmult_n00191,
      P(16) => PWM_1_n0019(16),
      P(15) => PWM_1_n0019(15),
      P(14) => PWM_1_n0019(14),
      P(13) => PWM_1_n0019(13),
      P(12) => PWM_1_n0019(12),
      P(11) => PWM_1_Mmult_n0019_P11,
      P(10) => PWM_1_Mmult_n0019_P10,
      P(9) => PWM_1_Mmult_n0019_P9,
      P(8) => PWM_1_Mmult_n0019_P8,
      P(7) => PWM_1_Mmult_n0019_P7,
      P(6) => PWM_1_Mmult_n0019_P6,
      P(5) => PWM_1_Mmult_n0019_P5,
      P(4) => PWM_1_Mmult_n0019_P4,
      P(3) => PWM_1_Mmult_n0019_P3,
      P(2) => PWM_1_Mmult_n0019_P2,
      P(1) => PWM_1_Mmult_n0019_P1,
      P(0) => PWM_1_Mmult_n0019_P0,
      PCOUT(47) => PWM_1_Mmult_n0019_PCOUT47,
      PCOUT(46) => PWM_1_Mmult_n0019_PCOUT46,
      PCOUT(45) => PWM_1_Mmult_n0019_PCOUT45,
      PCOUT(44) => PWM_1_Mmult_n0019_PCOUT44,
      PCOUT(43) => PWM_1_Mmult_n0019_PCOUT43,
      PCOUT(42) => PWM_1_Mmult_n0019_PCOUT42,
      PCOUT(41) => PWM_1_Mmult_n0019_PCOUT41,
      PCOUT(40) => PWM_1_Mmult_n0019_PCOUT40,
      PCOUT(39) => PWM_1_Mmult_n0019_PCOUT39,
      PCOUT(38) => PWM_1_Mmult_n0019_PCOUT38,
      PCOUT(37) => PWM_1_Mmult_n0019_PCOUT37,
      PCOUT(36) => PWM_1_Mmult_n0019_PCOUT36,
      PCOUT(35) => PWM_1_Mmult_n0019_PCOUT35,
      PCOUT(34) => PWM_1_Mmult_n0019_PCOUT34,
      PCOUT(33) => PWM_1_Mmult_n0019_PCOUT33,
      PCOUT(32) => PWM_1_Mmult_n0019_PCOUT32,
      PCOUT(31) => PWM_1_Mmult_n0019_PCOUT31,
      PCOUT(30) => PWM_1_Mmult_n0019_PCOUT30,
      PCOUT(29) => PWM_1_Mmult_n0019_PCOUT29,
      PCOUT(28) => PWM_1_Mmult_n0019_PCOUT28,
      PCOUT(27) => PWM_1_Mmult_n0019_PCOUT27,
      PCOUT(26) => PWM_1_Mmult_n0019_PCOUT26,
      PCOUT(25) => PWM_1_Mmult_n0019_PCOUT25,
      PCOUT(24) => PWM_1_Mmult_n0019_PCOUT24,
      PCOUT(23) => PWM_1_Mmult_n0019_PCOUT23,
      PCOUT(22) => PWM_1_Mmult_n0019_PCOUT22,
      PCOUT(21) => PWM_1_Mmult_n0019_PCOUT21,
      PCOUT(20) => PWM_1_Mmult_n0019_PCOUT20,
      PCOUT(19) => PWM_1_Mmult_n0019_PCOUT19,
      PCOUT(18) => PWM_1_Mmult_n0019_PCOUT18,
      PCOUT(17) => PWM_1_Mmult_n0019_PCOUT17,
      PCOUT(16) => PWM_1_Mmult_n0019_PCOUT16,
      PCOUT(15) => PWM_1_Mmult_n0019_PCOUT15,
      PCOUT(14) => PWM_1_Mmult_n0019_PCOUT14,
      PCOUT(13) => PWM_1_Mmult_n0019_PCOUT13,
      PCOUT(12) => PWM_1_Mmult_n0019_PCOUT12,
      PCOUT(11) => PWM_1_Mmult_n0019_PCOUT11,
      PCOUT(10) => PWM_1_Mmult_n0019_PCOUT10,
      PCOUT(9) => PWM_1_Mmult_n0019_PCOUT9,
      PCOUT(8) => PWM_1_Mmult_n0019_PCOUT8,
      PCOUT(7) => PWM_1_Mmult_n0019_PCOUT7,
      PCOUT(6) => PWM_1_Mmult_n0019_PCOUT6,
      PCOUT(5) => PWM_1_Mmult_n0019_PCOUT5,
      PCOUT(4) => PWM_1_Mmult_n0019_PCOUT4,
      PCOUT(3) => PWM_1_Mmult_n0019_PCOUT3,
      PCOUT(2) => PWM_1_Mmult_n0019_PCOUT2,
      PCOUT(1) => PWM_1_Mmult_n0019_PCOUT1,
      PCOUT(0) => PWM_1_Mmult_n0019_PCOUT0,
      M(35) => PWM_1_Mmult_n0019_M35,
      M(34) => PWM_1_Mmult_n0019_M34,
      M(33) => PWM_1_Mmult_n0019_M33,
      M(32) => PWM_1_Mmult_n0019_M32,
      M(31) => PWM_1_Mmult_n0019_M31,
      M(30) => PWM_1_Mmult_n0019_M30,
      M(29) => PWM_1_Mmult_n0019_M29,
      M(28) => PWM_1_Mmult_n0019_M28,
      M(27) => PWM_1_Mmult_n0019_M27,
      M(26) => PWM_1_Mmult_n0019_M26,
      M(25) => PWM_1_Mmult_n0019_M25,
      M(24) => PWM_1_Mmult_n0019_M24,
      M(23) => PWM_1_Mmult_n0019_M23,
      M(22) => PWM_1_Mmult_n0019_M22,
      M(21) => PWM_1_Mmult_n0019_M21,
      M(20) => PWM_1_Mmult_n0019_M20,
      M(19) => PWM_1_Mmult_n0019_M19,
      M(18) => PWM_1_Mmult_n0019_M18,
      M(17) => PWM_1_Mmult_n0019_M17,
      M(16) => PWM_1_Mmult_n0019_M16,
      M(15) => PWM_1_Mmult_n0019_M15,
      M(14) => PWM_1_Mmult_n0019_M14,
      M(13) => PWM_1_Mmult_n0019_M13,
      M(12) => PWM_1_Mmult_n0019_M12,
      M(11) => PWM_1_Mmult_n0019_M11,
      M(10) => PWM_1_Mmult_n0019_M10,
      M(9) => PWM_1_Mmult_n0019_M9,
      M(8) => PWM_1_Mmult_n0019_M8,
      M(7) => PWM_1_Mmult_n0019_M7,
      M(6) => PWM_1_Mmult_n0019_M6,
      M(5) => PWM_1_Mmult_n0019_M5,
      M(4) => PWM_1_Mmult_n0019_M4,
      M(3) => PWM_1_Mmult_n0019_M3,
      M(2) => PWM_1_Mmult_n0019_M2,
      M(1) => PWM_1_Mmult_n0019_M1,
      M(0) => PWM_1_Mmult_n0019_M0
    );
  reset_IBUF : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 115 ps
    )
    port map (
      O => reset_IBUF_364,
      I => reset
    );
  ProtoComp20_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 115 ps
    )
    port map (
      I => reset_IBUF_364,
      O => reset_IBUF_0
    );
  PWM_1_Mmult_n00191_RSTPINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => PWM_1_Mmult_n00191_RSTP_INT
    );
  PWM_1_Mmult_n00191_RSTAINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => PWM_1_Mmult_n00191_RSTA_INT
    );
  PWM_1_Mmult_n00191_CEAINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => PWM_1_Mmult_n00191_CEA_INT
    );
  PWM_1_Mmult_n00191_CEPINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 115 ps
    )
    port map (
      I => reset_IBUF_0,
      O => PWM_1_Mmult_n00191_CEP_INT
    );
  PWM_1_Mmult_n00191_CEBINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => PWM_1_Mmult_n00191_CEB_INT
    );
  PWM_1_Mmult_n00191_CEMINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => PWM_1_Mmult_n00191_CEM_INT
    );
  PWM_1_Mmult_n00191_RSTBINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => PWM_1_Mmult_n00191_RSTB_INT
    );
  PWM_1_Mmult_n00191_CLKINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => PWM_1_Mmult_n00191_CLK_INT
    );
  PWM_1_Mmult_n00191_RSTMINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => PWM_1_Mmult_n00191_RSTM_INT
    );
  PWM_1_Mmult_n00191_RSTOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => PWM_1_Mmult_n00191_RSTOPMODE_INT
    );
  PWM_1_Mmult_n00191_CECINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => PWM_1_Mmult_n00191_CEC_INT
    );
  PWM_1_Mmult_n00191_CEOPMODEINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => PWM_1_Mmult_n00191_CEOPMODE_INT
    );
  PWM_1_Mmult_n00191_RSTDINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => PWM_1_Mmult_n00191_RSTD_INT
    );
  PWM_1_Mmult_n00191_CEDINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => PWM_1_Mmult_n00191_CED_INT
    );
  PWM_1_Mmult_n00191_RSTCARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => PWM_1_Mmult_n00191_RSTCARRYIN_INT
    );
  PWM_1_Mmult_n00191_RSTCINV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 115 ps
    )
    port map (
      I => GND,
      O => PWM_1_Mmult_n00191_RSTC_INT
    );
  PWM_1_Mmult_n00191_CECARRYININV : X_BUF
    generic map(
      LOC => "DSP48_X0Y10",
      PATHPULSE => 115 ps
    )
    port map (
      I => '0',
      O => PWM_1_Mmult_n00191_CECARRYIN_INT
    );
  PWM_1_Mmult_n00191 : X_DSP48A1
    generic map(
      A0REG => 0,
      A1REG => 0,
      B0REG => 0,
      B1REG => 0,
      CREG => 0,
      DREG => 0,
      MREG => 0,
      OPMODEREG => 0,
      PREG => 1,
      CARRYINREG => 0,
      CARRYOUTREG => 0,
      B_INPUT => "CASCADE",
      CARRYINSEL => "OPMODE5",
      RSTTYPE => "SYNC",
      LOC => "DSP48_X0Y10"
    )
    port map (
      CECARRYIN => PWM_1_Mmult_n00191_CECARRYIN_INT,
      RSTC => PWM_1_Mmult_n00191_RSTC_INT,
      RSTCARRYIN => PWM_1_Mmult_n00191_RSTCARRYIN_INT,
      CED => PWM_1_Mmult_n00191_CED_INT,
      RSTD => PWM_1_Mmult_n00191_RSTD_INT,
      CEOPMODE => PWM_1_Mmult_n00191_CEOPMODE_INT,
      CEC => PWM_1_Mmult_n00191_CEC_INT,
      RSTOPMODE => PWM_1_Mmult_n00191_RSTOPMODE_INT,
      RSTM => PWM_1_Mmult_n00191_RSTM_INT,
      CLK => PWM_1_Mmult_n00191_CLK_INT,
      RSTB => PWM_1_Mmult_n00191_RSTB_INT,
      CEM => PWM_1_Mmult_n00191_CEM_INT,
      CEB => PWM_1_Mmult_n00191_CEB_INT,
      CARRYIN => GND,
      CEP => PWM_1_Mmult_n00191_CEP_INT,
      CEA => PWM_1_Mmult_n00191_CEA_INT,
      RSTA => PWM_1_Mmult_n00191_RSTA_INT,
      RSTP => PWM_1_Mmult_n00191_RSTP_INT,
      CARRYOUTF => PWM_1_Mmult_n00191_CARRYOUTF,
      CARRYOUT => PWM_1_Mmult_n00191_CARRYOUT,
      B(17) => GND,
      B(16) => GND,
      B(15) => GND,
      B(14) => GND,
      B(13) => GND,
      B(12) => GND,
      B(11) => GND,
      B(10) => GND,
      B(9) => GND,
      B(8) => GND,
      B(7) => GND,
      B(6) => GND,
      B(5) => GND,
      B(4) => GND,
      B(3) => GND,
      B(2) => GND,
      B(1) => GND,
      B(0) => GND,
      PCIN(47) => PWM_1_Mmult_n00191_PCIN47,
      PCIN(46) => PWM_1_Mmult_n00191_PCIN46,
      PCIN(45) => PWM_1_Mmult_n00191_PCIN45,
      PCIN(44) => PWM_1_Mmult_n00191_PCIN44,
      PCIN(43) => PWM_1_Mmult_n00191_PCIN43,
      PCIN(42) => PWM_1_Mmult_n00191_PCIN42,
      PCIN(41) => PWM_1_Mmult_n00191_PCIN41,
      PCIN(40) => PWM_1_Mmult_n00191_PCIN40,
      PCIN(39) => PWM_1_Mmult_n00191_PCIN39,
      PCIN(38) => PWM_1_Mmult_n00191_PCIN38,
      PCIN(37) => PWM_1_Mmult_n00191_PCIN37,
      PCIN(36) => PWM_1_Mmult_n00191_PCIN36,
      PCIN(35) => PWM_1_Mmult_n00191_PCIN35,
      PCIN(34) => PWM_1_Mmult_n00191_PCIN34,
      PCIN(33) => PWM_1_Mmult_n00191_PCIN33,
      PCIN(32) => PWM_1_Mmult_n00191_PCIN32,
      PCIN(31) => PWM_1_Mmult_n00191_PCIN31,
      PCIN(30) => PWM_1_Mmult_n00191_PCIN30,
      PCIN(29) => PWM_1_Mmult_n00191_PCIN29,
      PCIN(28) => PWM_1_Mmult_n00191_PCIN28,
      PCIN(27) => PWM_1_Mmult_n00191_PCIN27,
      PCIN(26) => PWM_1_Mmult_n00191_PCIN26,
      PCIN(25) => PWM_1_Mmult_n00191_PCIN25,
      PCIN(24) => PWM_1_Mmult_n00191_PCIN24,
      PCIN(23) => PWM_1_Mmult_n00191_PCIN23,
      PCIN(22) => PWM_1_Mmult_n00191_PCIN22,
      PCIN(21) => PWM_1_Mmult_n00191_PCIN21,
      PCIN(20) => PWM_1_Mmult_n00191_PCIN20,
      PCIN(19) => PWM_1_Mmult_n00191_PCIN19,
      PCIN(18) => PWM_1_Mmult_n00191_PCIN18,
      PCIN(17) => PWM_1_Mmult_n00191_PCIN17,
      PCIN(16) => PWM_1_Mmult_n00191_PCIN16,
      PCIN(15) => PWM_1_Mmult_n00191_PCIN15,
      PCIN(14) => PWM_1_Mmult_n00191_PCIN14,
      PCIN(13) => PWM_1_Mmult_n00191_PCIN13,
      PCIN(12) => PWM_1_Mmult_n00191_PCIN12,
      PCIN(11) => PWM_1_Mmult_n00191_PCIN11,
      PCIN(10) => PWM_1_Mmult_n00191_PCIN10,
      PCIN(9) => PWM_1_Mmult_n00191_PCIN9,
      PCIN(8) => PWM_1_Mmult_n00191_PCIN8,
      PCIN(7) => PWM_1_Mmult_n00191_PCIN7,
      PCIN(6) => PWM_1_Mmult_n00191_PCIN6,
      PCIN(5) => PWM_1_Mmult_n00191_PCIN5,
      PCIN(4) => PWM_1_Mmult_n00191_PCIN4,
      PCIN(3) => PWM_1_Mmult_n00191_PCIN3,
      PCIN(2) => PWM_1_Mmult_n00191_PCIN2,
      PCIN(1) => PWM_1_Mmult_n00191_PCIN1,
      PCIN(0) => PWM_1_Mmult_n00191_PCIN0,
      C(47) => PWM_1_Mmult_n0019_P47_to_Mmult_n00191,
      C(46) => PWM_1_Mmult_n0019_P47_to_Mmult_n00191,
      C(45) => PWM_1_Mmult_n0019_P47_to_Mmult_n00191,
      C(44) => PWM_1_Mmult_n0019_P47_to_Mmult_n00191,
      C(43) => PWM_1_Mmult_n0019_P47_to_Mmult_n00191,
      C(42) => PWM_1_Mmult_n0019_P47_to_Mmult_n00191,
      C(41) => PWM_1_Mmult_n0019_P47_to_Mmult_n00191,
      C(40) => PWM_1_Mmult_n0019_P47_to_Mmult_n00191,
      C(39) => PWM_1_Mmult_n0019_P47_to_Mmult_n00191,
      C(38) => PWM_1_Mmult_n0019_P47_to_Mmult_n00191,
      C(37) => PWM_1_Mmult_n0019_P47_to_Mmult_n00191,
      C(36) => PWM_1_Mmult_n0019_P47_to_Mmult_n00191,
      C(35) => PWM_1_Mmult_n0019_P47_to_Mmult_n00191,
      C(34) => PWM_1_Mmult_n0019_P47_to_Mmult_n00191,
      C(33) => PWM_1_Mmult_n0019_P47_to_Mmult_n00191,
      C(32) => PWM_1_Mmult_n0019_P47_to_Mmult_n00191,
      C(31) => PWM_1_Mmult_n0019_P47_to_Mmult_n00191,
      C(30) => PWM_1_Mmult_n0019_P47_to_Mmult_n00191,
      C(29) => PWM_1_Mmult_n0019_P46_to_Mmult_n00191,
      C(28) => PWM_1_Mmult_n0019_P45_to_Mmult_n00191,
      C(27) => PWM_1_Mmult_n0019_P44_to_Mmult_n00191,
      C(26) => PWM_1_Mmult_n0019_P43_to_Mmult_n00191,
      C(25) => PWM_1_Mmult_n0019_P42_to_Mmult_n00191,
      C(24) => PWM_1_Mmult_n0019_P41_to_Mmult_n00191,
      C(23) => PWM_1_Mmult_n0019_P40_to_Mmult_n00191,
      C(22) => PWM_1_Mmult_n0019_P39_to_Mmult_n00191,
      C(21) => PWM_1_Mmult_n0019_P38_to_Mmult_n00191,
      C(20) => PWM_1_Mmult_n0019_P37_to_Mmult_n00191,
      C(19) => PWM_1_Mmult_n0019_P36_to_Mmult_n00191,
      C(18) => PWM_1_Mmult_n0019_P35_to_Mmult_n00191,
      C(17) => PWM_1_Mmult_n0019_P34_to_Mmult_n00191,
      C(16) => PWM_1_Mmult_n0019_P33_to_Mmult_n00191,
      C(15) => PWM_1_Mmult_n0019_P32_to_Mmult_n00191,
      C(14) => PWM_1_Mmult_n0019_P31_to_Mmult_n00191,
      C(13) => PWM_1_Mmult_n0019_P30_to_Mmult_n00191,
      C(12) => PWM_1_Mmult_n0019_P29_to_Mmult_n00191,
      C(11) => PWM_1_Mmult_n0019_P28_to_Mmult_n00191,
      C(10) => PWM_1_Mmult_n0019_P27_to_Mmult_n00191,
      C(9) => PWM_1_Mmult_n0019_P26_to_Mmult_n00191,
      C(8) => PWM_1_Mmult_n0019_P25_to_Mmult_n00191,
      C(7) => PWM_1_Mmult_n0019_P24_to_Mmult_n00191,
      C(6) => PWM_1_Mmult_n0019_P23_to_Mmult_n00191,
      C(5) => PWM_1_Mmult_n0019_P22_to_Mmult_n00191,
      C(4) => PWM_1_Mmult_n0019_P21_to_Mmult_n00191,
      C(3) => PWM_1_Mmult_n0019_P20_to_Mmult_n00191,
      C(2) => PWM_1_Mmult_n0019_P19_to_Mmult_n00191,
      C(1) => PWM_1_Mmult_n0019_P18_to_Mmult_n00191,
      C(0) => PWM_1_Mmult_n0019_P17_to_Mmult_n00191,
      OPMODE(7) => GND,
      OPMODE(6) => GND,
      OPMODE(5) => GND,
      OPMODE(4) => GND,
      OPMODE(3) => VCC,
      OPMODE(2) => VCC,
      OPMODE(1) => GND,
      OPMODE(0) => VCC,
      D(17) => GND,
      D(16) => GND,
      D(15) => GND,
      D(14) => GND,
      D(13) => GND,
      D(12) => GND,
      D(11) => GND,
      D(10) => GND,
      D(9) => GND,
      D(8) => GND,
      D(7) => GND,
      D(6) => GND,
      D(5) => GND,
      D(4) => GND,
      D(3) => GND,
      D(2) => GND,
      D(1) => GND,
      D(0) => GND,
      A(17) => GND,
      A(16) => GND,
      A(15) => GND,
      A(14) => GND,
      A(13) => GND,
      A(12) => GND,
      A(11) => GND,
      A(10) => GND,
      A(9) => GND,
      A(8) => GND,
      A(7) => GND,
      A(6) => GND,
      A(5) => GND,
      A(4) => GND,
      A(3) => GND,
      A(2) => VCC,
      A(1) => VCC,
      A(0) => VCC,
      BCIN(17) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_17,
      BCIN(16) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_16,
      BCIN(15) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_15,
      BCIN(14) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_14,
      BCIN(13) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_13,
      BCIN(12) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_12,
      BCIN(11) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_11,
      BCIN(10) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_10,
      BCIN(9) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_9,
      BCIN(8) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_8,
      BCIN(7) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_7,
      BCIN(6) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_6,
      BCIN(5) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_5,
      BCIN(4) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_4,
      BCIN(3) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_3,
      BCIN(2) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_2,
      BCIN(1) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_1,
      BCIN(0) => PWM_1_Mmult_n0019_BCOUT_to_Mmult_n00191_B_0,
      BCOUT(17) => PWM_1_Mmult_n00191_BCOUT17,
      BCOUT(16) => PWM_1_Mmult_n00191_BCOUT16,
      BCOUT(15) => PWM_1_Mmult_n00191_BCOUT15,
      BCOUT(14) => PWM_1_Mmult_n00191_BCOUT14,
      BCOUT(13) => PWM_1_Mmult_n00191_BCOUT13,
      BCOUT(12) => PWM_1_Mmult_n00191_BCOUT12,
      BCOUT(11) => PWM_1_Mmult_n00191_BCOUT11,
      BCOUT(10) => PWM_1_Mmult_n00191_BCOUT10,
      BCOUT(9) => PWM_1_Mmult_n00191_BCOUT9,
      BCOUT(8) => PWM_1_Mmult_n00191_BCOUT8,
      BCOUT(7) => PWM_1_Mmult_n00191_BCOUT7,
      BCOUT(6) => PWM_1_Mmult_n00191_BCOUT6,
      BCOUT(5) => PWM_1_Mmult_n00191_BCOUT5,
      BCOUT(4) => PWM_1_Mmult_n00191_BCOUT4,
      BCOUT(3) => PWM_1_Mmult_n00191_BCOUT3,
      BCOUT(2) => PWM_1_Mmult_n00191_BCOUT2,
      BCOUT(1) => PWM_1_Mmult_n00191_BCOUT1,
      BCOUT(0) => PWM_1_Mmult_n00191_BCOUT0,
      P(47) => PWM_1_Mmult_n00191_P47,
      P(46) => PWM_1_Mmult_n00191_P46,
      P(45) => PWM_1_Mmult_n00191_P45,
      P(44) => PWM_1_Mmult_n00191_P44,
      P(43) => PWM_1_Mmult_n00191_P43,
      P(42) => PWM_1_Mmult_n00191_P42,
      P(41) => PWM_1_Mmult_n00191_P41,
      P(40) => PWM_1_Mmult_n00191_P40,
      P(39) => PWM_1_Mmult_n00191_P39,
      P(38) => PWM_1_Mmult_n00191_P38,
      P(37) => PWM_1_Mmult_n00191_P37,
      P(36) => PWM_1_Mmult_n00191_P36,
      P(35) => PWM_1_Mmult_n00191_P35,
      P(34) => PWM_1_Mmult_n00191_P34,
      P(33) => PWM_1_Mmult_n00191_P33,
      P(32) => PWM_1_Mmult_n00191_P32,
      P(31) => PWM_1_Mmult_n00191_P31,
      P(30) => PWM_1_Mmult_n00191_P30,
      P(29) => PWM_1_Mmult_n00191_P29,
      P(28) => PWM_1_Mmult_n00191_P28,
      P(27) => PWM_1_Mmult_n00191_P27,
      P(26) => PWM_1_Mmult_n00191_P26,
      P(25) => PWM_1_Mmult_n00191_P25,
      P(24) => PWM_1_Mmult_n00191_P24,
      P(23) => PWM_1_Mmult_n00191_P23,
      P(22) => PWM_1_Mmult_n00191_P22,
      P(21) => PWM_1_Mmult_n00191_P21,
      P(20) => PWM_1_Mmult_n00191_P20,
      P(19) => PWM_1_Mmult_n00191_P19,
      P(18) => PWM_1_Mmult_n00191_P18,
      P(17) => PWM_1_Mmult_n00191_P17,
      P(16) => PWM_1_Mmult_n00191_P16,
      P(15) => PWM_1_Mmult_n00191_P15,
      P(14) => PWM_1_Mmult_n00191_P14,
      P(13) => PWM_1_half_duty(18),
      P(12) => PWM_1_half_duty(17),
      P(11) => PWM_1_half_duty(16),
      P(10) => PWM_1_half_duty(15),
      P(9) => PWM_1_half_duty(14),
      P(8) => PWM_1_half_duty(13),
      P(7) => PWM_1_half_duty(12),
      P(6) => PWM_1_half_duty(11),
      P(5) => PWM_1_half_duty(10),
      P(4) => PWM_1_half_duty(9),
      P(3) => PWM_1_half_duty(8),
      P(2) => PWM_1_half_duty(7),
      P(1) => PWM_1_half_duty(6),
      P(0) => PWM_1_half_duty(5),
      PCOUT(47) => PWM_1_Mmult_n00191_PCOUT47,
      PCOUT(46) => PWM_1_Mmult_n00191_PCOUT46,
      PCOUT(45) => PWM_1_Mmult_n00191_PCOUT45,
      PCOUT(44) => PWM_1_Mmult_n00191_PCOUT44,
      PCOUT(43) => PWM_1_Mmult_n00191_PCOUT43,
      PCOUT(42) => PWM_1_Mmult_n00191_PCOUT42,
      PCOUT(41) => PWM_1_Mmult_n00191_PCOUT41,
      PCOUT(40) => PWM_1_Mmult_n00191_PCOUT40,
      PCOUT(39) => PWM_1_Mmult_n00191_PCOUT39,
      PCOUT(38) => PWM_1_Mmult_n00191_PCOUT38,
      PCOUT(37) => PWM_1_Mmult_n00191_PCOUT37,
      PCOUT(36) => PWM_1_Mmult_n00191_PCOUT36,
      PCOUT(35) => PWM_1_Mmult_n00191_PCOUT35,
      PCOUT(34) => PWM_1_Mmult_n00191_PCOUT34,
      PCOUT(33) => PWM_1_Mmult_n00191_PCOUT33,
      PCOUT(32) => PWM_1_Mmult_n00191_PCOUT32,
      PCOUT(31) => PWM_1_Mmult_n00191_PCOUT31,
      PCOUT(30) => PWM_1_Mmult_n00191_PCOUT30,
      PCOUT(29) => PWM_1_Mmult_n00191_PCOUT29,
      PCOUT(28) => PWM_1_Mmult_n00191_PCOUT28,
      PCOUT(27) => PWM_1_Mmult_n00191_PCOUT27,
      PCOUT(26) => PWM_1_Mmult_n00191_PCOUT26,
      PCOUT(25) => PWM_1_Mmult_n00191_PCOUT25,
      PCOUT(24) => PWM_1_Mmult_n00191_PCOUT24,
      PCOUT(23) => PWM_1_Mmult_n00191_PCOUT23,
      PCOUT(22) => PWM_1_Mmult_n00191_PCOUT22,
      PCOUT(21) => PWM_1_Mmult_n00191_PCOUT21,
      PCOUT(20) => PWM_1_Mmult_n00191_PCOUT20,
      PCOUT(19) => PWM_1_Mmult_n00191_PCOUT19,
      PCOUT(18) => PWM_1_Mmult_n00191_PCOUT18,
      PCOUT(17) => PWM_1_Mmult_n00191_PCOUT17,
      PCOUT(16) => PWM_1_Mmult_n00191_PCOUT16,
      PCOUT(15) => PWM_1_Mmult_n00191_PCOUT15,
      PCOUT(14) => PWM_1_Mmult_n00191_PCOUT14,
      PCOUT(13) => PWM_1_Mmult_n00191_PCOUT13,
      PCOUT(12) => PWM_1_Mmult_n00191_PCOUT12,
      PCOUT(11) => PWM_1_Mmult_n00191_PCOUT11,
      PCOUT(10) => PWM_1_Mmult_n00191_PCOUT10,
      PCOUT(9) => PWM_1_Mmult_n00191_PCOUT9,
      PCOUT(8) => PWM_1_Mmult_n00191_PCOUT8,
      PCOUT(7) => PWM_1_Mmult_n00191_PCOUT7,
      PCOUT(6) => PWM_1_Mmult_n00191_PCOUT6,
      PCOUT(5) => PWM_1_Mmult_n00191_PCOUT5,
      PCOUT(4) => PWM_1_Mmult_n00191_PCOUT4,
      PCOUT(3) => PWM_1_Mmult_n00191_PCOUT3,
      PCOUT(2) => PWM_1_Mmult_n00191_PCOUT2,
      PCOUT(1) => PWM_1_Mmult_n00191_PCOUT1,
      PCOUT(0) => PWM_1_Mmult_n00191_PCOUT0,
      M(35) => PWM_1_Mmult_n00191_M35,
      M(34) => PWM_1_Mmult_n00191_M34,
      M(33) => PWM_1_Mmult_n00191_M33,
      M(32) => PWM_1_Mmult_n00191_M32,
      M(31) => PWM_1_Mmult_n00191_M31,
      M(30) => PWM_1_Mmult_n00191_M30,
      M(29) => PWM_1_Mmult_n00191_M29,
      M(28) => PWM_1_Mmult_n00191_M28,
      M(27) => PWM_1_Mmult_n00191_M27,
      M(26) => PWM_1_Mmult_n00191_M26,
      M(25) => PWM_1_Mmult_n00191_M25,
      M(24) => PWM_1_Mmult_n00191_M24,
      M(23) => PWM_1_Mmult_n00191_M23,
      M(22) => PWM_1_Mmult_n00191_M22,
      M(21) => PWM_1_Mmult_n00191_M21,
      M(20) => PWM_1_Mmult_n00191_M20,
      M(19) => PWM_1_Mmult_n00191_M19,
      M(18) => PWM_1_Mmult_n00191_M18,
      M(17) => PWM_1_Mmult_n00191_M17,
      M(16) => PWM_1_Mmult_n00191_M16,
      M(15) => PWM_1_Mmult_n00191_M15,
      M(14) => PWM_1_Mmult_n00191_M14,
      M(13) => PWM_1_Mmult_n00191_M13,
      M(12) => PWM_1_Mmult_n00191_M12,
      M(11) => PWM_1_Mmult_n00191_M11,
      M(10) => PWM_1_Mmult_n00191_M10,
      M(9) => PWM_1_Mmult_n00191_M9,
      M(8) => PWM_1_Mmult_n00191_M8,
      M(7) => PWM_1_Mmult_n00191_M7,
      M(6) => PWM_1_Mmult_n00191_M6,
      M(5) => PWM_1_Mmult_n00191_M5,
      M(4) => PWM_1_Mmult_n00191_M4,
      M(3) => PWM_1_Mmult_n00191_M3,
      M(2) => PWM_1_Mmult_n00191_M2,
      M(1) => PWM_1_Mmult_n00191_M1,
      M(0) => PWM_1_Mmult_n00191_M0
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 115 ps
    )
    port map (
      O => clk_BUFGP_IBUFG_350,
      I => clk
    );
  ProtoComp20_IMUX : X_BUF
    generic map(
      LOC => "PAD120",
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_350,
      O => clk_BUFGP_IBUFG_0
    );
  sclk_IBUF : X_BUF
    generic map(
      LOC => "PAD8",
      PATHPULSE => 115 ps
    )
    port map (
      O => sclk_IBUF_353,
      I => sclk
    );
  ProtoComp20_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD8",
      PATHPULSE => 115 ps
    )
    port map (
      I => sclk_IBUF_353,
      O => sclk_IBUF_0
    );
  SPI_transceiver_1_SPI_buffer_1_mosi_inter2 : X_FF
    generic map(
      LOC => "SLICE_X3Y50",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_mosi_inter2_CLK,
      I => NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_mosi_inter2_IN,
      O => SPI_transceiver_1_SPI_buffer_1_mosi_inter2_1558,
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_Q_346,
      O => SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_0
    );
  SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X6Y35"
    )
    port map (
      CI => SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_3_Q_1488,
      CYINIT => '0',
      CO(3) => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_CO_3_UNCONNECTED,
      CO(2) => SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_Q_346,
      CO(1) => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_CO_1_UNCONNECTED,
      CO(0) => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_CO_0_UNCONNECTED,
      DI(3) => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_DI_3_UNCONNECTED,
      DI(2) => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_DI_2_UNCONNECTED,
      DI(1) => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_DI_1_UNCONNECTED,
      DI(0) => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_DI_0_UNCONNECTED,
      O(3) => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_O_3_UNCONNECTED,
      O(2) => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_O_2_UNCONNECTED,
      O(1) => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_O_1_UNCONNECTED,
      O(0) => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_O_0_UNCONNECTED,
      S(3) => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_cy_6_S_3_UNCONNECTED,
      S(2) => '1',
      S(1) => '1',
      S(0) => '1'
    );
  SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_6_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X6Y35",
      INIT => X"FFFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_6_C6LUT_O_UNCONNECTED
    );
  SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_7_B6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X6Y35",
      INIT => X"FFFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_7_B6LUT_O_UNCONNECTED
    );
  SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_8_A6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X6Y35",
      INIT => X"FFFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_SPI_transceiver_1_SPI_receiver_1_Mcompar_i_31_GND_10_o_LessThan_1_o_lut_1_8_A6LUT_O_UNCONNECTED
    );
  Decode_SPIpacket_1_FCS : X_FF
    generic map(
      LOC => "SLICE_X6Y29",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_0,
      CLK => NlwBufferSignal_Decode_SPIpacket_1_FCS_CLK,
      I => NlwBufferSignal_Decode_SPIpacket_1_FCS_IN,
      O => Decode_SPIpacket_1_FCS_1609,
      RST => GND,
      SET => GND
    );
  Decode_SPIpacket_1_Mxor_CMD_3_FCS_XOR_47_o_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y29",
      INIT => X"6996966996696996"
    )
    port map (
      ADR5 => Decode_SPIpacket_1_CMD_2_0,
      ADR1 => Decode_SPIpacket_1_CMD_3_0,
      ADR3 => Decode_SPIpacket_1_CMD_0_0,
      ADR4 => Decode_SPIpacket_1_FCS_1609,
      ADR0 => Decode_SPIpacket_1_CMD_1_0,
      ADR2 => Decode_SPIpacket_1_VALUE(0),
      O => Decode_SPIpacket_1_Mxor_CMD_3_FCS_XOR_47_o_xo_0_Q
    );
  SPI_transceiver_1_SPI_receiver_1_data_3 : X_FF
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0078_inv_0,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_3_CLK,
      I => SPI_transceiver_1_SPI_receiver_1_data_3_mosi_MUX_48_o,
      O => SPI_transceiver_1_SPI_receiver_1_data(3),
      RST => GND,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_Mmux_data_3_mosi_MUX_48_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => X"FFFF0008FFF70000"
    )
    port map (
      ADR3 => SPI_transceiver_1_SPI_receiver_1_n0042_3_0,
      ADR2 => SPI_transceiver_1_SPI_receiver_1_n0042_2_0,
      ADR0 => SPI_transceiver_1_SPI_receiver_1_n0042_1_0,
      ADR4 => SPI_transceiver_1_SPI_receiver_1_data(3),
      ADR1 => SPI_transceiver_1_SPI_receiver_1_n0042_0_0,
      ADR5 => SPI_transceiver_1_SPI_buffer_1_mosi_inter2_1558,
      O => SPI_transceiver_1_SPI_receiver_1_data_3_mosi_MUX_48_o
    );
  SPI_transceiver_1_SPI_receiver_1_data_2 : X_FF
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0078_inv_0,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_2_CLK,
      I => SPI_transceiver_1_SPI_receiver_1_data_2_mosi_MUX_49_o,
      O => SPI_transceiver_1_SPI_receiver_1_data(2),
      RST => GND,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_Mmux_data_2_mosi_MUX_49_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => X"CCCCCCCECCCCCCC4"
    )
    port map (
      ADR3 => SPI_transceiver_1_SPI_receiver_1_n0042_3_0,
      ADR2 => SPI_transceiver_1_SPI_receiver_1_n0042_2_0,
      ADR4 => SPI_transceiver_1_SPI_receiver_1_n0042_0_0,
      ADR1 => SPI_transceiver_1_SPI_receiver_1_data(2),
      ADR0 => SPI_transceiver_1_SPI_receiver_1_n0042_1_0,
      ADR5 => SPI_transceiver_1_SPI_buffer_1_mosi_inter2_1558,
      O => SPI_transceiver_1_SPI_receiver_1_data_2_mosi_MUX_49_o
    );
  SPI_transceiver_1_SPI_receiver_1_data_1 : X_FF
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0078_inv_0,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_1_CLK,
      I => SPI_transceiver_1_SPI_receiver_1_data_1_mosi_MUX_50_o,
      O => SPI_transceiver_1_SPI_receiver_1_data(1),
      RST => GND,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_Mmux_data_1_mosi_MUX_50_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => X"AAAAAAAAAAAAB8AA"
    )
    port map (
      ADR4 => SPI_transceiver_1_SPI_receiver_1_n0042_3_0,
      ADR5 => SPI_transceiver_1_SPI_receiver_1_n0042_2_0,
      ADR1 => SPI_transceiver_1_SPI_receiver_1_n0042_1_0,
      ADR0 => SPI_transceiver_1_SPI_receiver_1_data(1),
      ADR3 => SPI_transceiver_1_SPI_receiver_1_n0042_0_0,
      ADR2 => SPI_transceiver_1_SPI_buffer_1_mosi_inter2_1558,
      O => SPI_transceiver_1_SPI_receiver_1_data_1_mosi_MUX_50_o
    );
  SPI_transceiver_1_SPI_receiver_1_data_0 : X_FF
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => '0'
    )
    port map (
      CE => SPI_transceiver_1_SPI_receiver_1_n0078_inv_0,
      CLK => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_0_CLK,
      I => SPI_transceiver_1_SPI_receiver_1_data_0_mosi_MUX_51_o,
      O => SPI_transceiver_1_SPI_receiver_1_data(0),
      RST => GND,
      SET => GND
    );
  SPI_transceiver_1_SPI_receiver_1_Mmux_data_0_mosi_MUX_51_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => X"FF00FF00FF00FE10"
    )
    port map (
      ADR0 => SPI_transceiver_1_SPI_receiver_1_n0042_0_0,
      ADR4 => SPI_transceiver_1_SPI_receiver_1_n0042_1_0,
      ADR5 => SPI_transceiver_1_SPI_receiver_1_n0042_2_0,
      ADR3 => SPI_transceiver_1_SPI_receiver_1_data(0),
      ADR1 => SPI_transceiver_1_SPI_receiver_1_n0042_3_0,
      ADR2 => SPI_transceiver_1_SPI_buffer_1_mosi_inter2_1558,
      O => SPI_transceiver_1_SPI_receiver_1_data_0_mosi_MUX_51_o
    );
  PWM_1_count_10 : X_FF
    generic map(
      LOC => "SLICE_X13Y43",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_1_count_10_CLK,
      I => PWM_1_Mcount_count_eqn_10,
      O => PWM_1_count(10),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  PWM_1_Mcount_count_eqn_101 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y43",
      INIT => X"AAAAAAAAA2AAAAAA"
    )
    port map (
      ADR0 => PWM_1_Result_10_0,
      ADR3 => PWM_1_PWR_15_o_count_19_equal_3_o_19_Q,
      ADR4 => PWM_1_PWR_15_o_count_19_equal_3_o_19_1_1570,
      ADR5 => PWM_1_count(13),
      ADR2 => PWM_1_count(15),
      ADR1 => PWM_1_PWR_15_o_count_19_equal_3_o_19_2_1571,
      O => PWM_1_Mcount_count_eqn_10
    );
  PWM_1_count_9 : X_FF
    generic map(
      LOC => "SLICE_X13Y43",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_1_count_9_CLK,
      I => PWM_1_Mcount_count_eqn_9,
      O => PWM_1_count(9),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  PWM_1_Mcount_count_eqn_91 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y43",
      INIT => X"A8AAAAAAAAAAAAAA"
    )
    port map (
      ADR0 => PWM_1_Result_9_0,
      ADR3 => PWM_1_PWR_15_o_count_19_equal_3_o_19_Q,
      ADR4 => PWM_1_PWR_15_o_count_19_equal_3_o_19_1_1570,
      ADR2 => PWM_1_count(13),
      ADR1 => PWM_1_count(15),
      ADR5 => PWM_1_PWR_15_o_count_19_equal_3_o_19_2_1571,
      O => PWM_1_Mcount_count_eqn_9
    );
  PWM_1_count_8 : X_FF
    generic map(
      LOC => "SLICE_X13Y43",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_1_count_8_CLK,
      I => PWM_1_Mcount_count_eqn_8,
      O => PWM_1_count(8),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  PWM_1_Mcount_count_eqn_81 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y43",
      INIT => X"AAAAAAAAA2AAAAAA"
    )
    port map (
      ADR0 => PWM_1_Result_8_0,
      ADR4 => PWM_1_PWR_15_o_count_19_equal_3_o_19_Q,
      ADR3 => PWM_1_PWR_15_o_count_19_equal_3_o_19_1_1570,
      ADR2 => PWM_1_count(13),
      ADR5 => PWM_1_count(15),
      ADR1 => PWM_1_PWR_15_o_count_19_equal_3_o_19_2_1571,
      O => PWM_1_Mcount_count_eqn_8
    );
  PWM_1_count_7 : X_FF
    generic map(
      LOC => "SLICE_X13Y43",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_1_count_7_CLK,
      I => PWM_1_Mcount_count_eqn_7,
      O => PWM_1_count(7),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  PWM_1_Mcount_count_eqn_71 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y43",
      INIT => X"AAAAAAAAAA2AAAAA"
    )
    port map (
      ADR0 => PWM_1_Result_7_0,
      ADR4 => PWM_1_PWR_15_o_count_19_equal_3_o_19_Q,
      ADR1 => PWM_1_PWR_15_o_count_19_equal_3_o_19_1_1570,
      ADR3 => PWM_1_count(13),
      ADR5 => PWM_1_count(15),
      ADR2 => PWM_1_PWR_15_o_count_19_equal_3_o_19_2_1571,
      O => PWM_1_Mcount_count_eqn_7
    );
  SPI_transceiver_1_SPI_buffer_1_reset_inv1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y37",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => '1',
      ADR4 => reset_IBUF_0,
      O => Decode_SPIpacket_1_reset_inv
    );
  PWM_1_count_6 : X_FF
    generic map(
      LOC => "SLICE_X13Y42",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_1_count_6_CLK,
      I => PWM_1_Mcount_count_eqn_6,
      O => PWM_1_count(6),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  PWM_1_Mcount_count_eqn_61 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y42",
      INIT => X"CCCC8CCCCCCCCCCC"
    )
    port map (
      ADR1 => PWM_1_Result_6_0,
      ADR3 => PWM_1_PWR_15_o_count_19_equal_3_o_19_Q,
      ADR2 => PWM_1_PWR_15_o_count_19_equal_3_o_19_1_1570,
      ADR4 => PWM_1_count(13),
      ADR0 => PWM_1_count(15),
      ADR5 => PWM_1_PWR_15_o_count_19_equal_3_o_19_2_1571,
      O => PWM_1_Mcount_count_eqn_6
    );
  PWM_1_count_5 : X_FF
    generic map(
      LOC => "SLICE_X13Y42",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_1_count_5_CLK,
      I => PWM_1_Mcount_count_eqn_5,
      O => PWM_1_count(5),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  PWM_1_Mcount_count_eqn_51 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y42",
      INIT => X"AAAAAAAAAAAA2AAA"
    )
    port map (
      ADR0 => PWM_1_Result_5_0,
      ADR3 => PWM_1_PWR_15_o_count_19_equal_3_o_19_Q,
      ADR1 => PWM_1_PWR_15_o_count_19_equal_3_o_19_1_1570,
      ADR5 => PWM_1_count(13),
      ADR4 => PWM_1_count(15),
      ADR2 => PWM_1_PWR_15_o_count_19_equal_3_o_19_2_1571,
      O => PWM_1_Mcount_count_eqn_5
    );
  PWM_1_count_4 : X_FF
    generic map(
      LOC => "SLICE_X13Y42",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_1_count_4_CLK,
      I => PWM_1_Mcount_count_eqn_4,
      O => PWM_1_count(4),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  PWM_1_Mcount_count_eqn_41 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y42",
      INIT => X"CCCCCC4CCCCCCCCC"
    )
    port map (
      ADR1 => PWM_1_Result_4_0,
      ADR5 => PWM_1_PWR_15_o_count_19_equal_3_o_19_Q,
      ADR0 => PWM_1_PWR_15_o_count_19_equal_3_o_19_1_1570,
      ADR3 => PWM_1_count(13),
      ADR4 => PWM_1_count(15),
      ADR2 => PWM_1_PWR_15_o_count_19_equal_3_o_19_2_1571,
      O => PWM_1_Mcount_count_eqn_4
    );
  PWM_1_count_3 : X_FF
    generic map(
      LOC => "SLICE_X13Y42",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_1_count_3_CLK,
      I => PWM_1_Mcount_count_eqn_3,
      O => PWM_1_count(3),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  PWM_1_Mcount_count_eqn_31 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y42",
      INIT => X"F0B0F0F0F0F0F0F0"
    )
    port map (
      ADR2 => PWM_1_Result_3_0,
      ADR4 => PWM_1_PWR_15_o_count_19_equal_3_o_19_Q,
      ADR1 => PWM_1_PWR_15_o_count_19_equal_3_o_19_1_1570,
      ADR3 => PWM_1_count(13),
      ADR0 => PWM_1_count(15),
      ADR5 => PWM_1_PWR_15_o_count_19_equal_3_o_19_2_1571,
      O => PWM_1_Mcount_count_eqn_3
    );
  PWM_1_count_14 : X_FF
    generic map(
      LOC => "SLICE_X13Y44",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_1_count_14_CLK,
      I => PWM_1_Mcount_count_eqn_14,
      O => PWM_1_count(14),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  PWM_1_Mcount_count_eqn_141 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y44",
      INIT => X"C8CCCCCCCCCCCCCC"
    )
    port map (
      ADR1 => PWM_1_Result_14_0,
      ADR3 => PWM_1_PWR_15_o_count_19_equal_3_o_19_Q,
      ADR4 => PWM_1_PWR_15_o_count_19_equal_3_o_19_1_1570,
      ADR0 => PWM_1_count(13),
      ADR2 => PWM_1_count(15),
      ADR5 => PWM_1_PWR_15_o_count_19_equal_3_o_19_2_1571,
      O => PWM_1_Mcount_count_eqn_14
    );
  PWM_1_count_13 : X_FF
    generic map(
      LOC => "SLICE_X13Y44",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_1_count_13_CLK,
      I => PWM_1_Mcount_count_eqn_13,
      O => PWM_1_count(13),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  PWM_1_Mcount_count_eqn_131 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y44",
      INIT => X"A8AAAAAAAAAAAAAA"
    )
    port map (
      ADR0 => PWM_1_Result_13_0,
      ADR3 => PWM_1_PWR_15_o_count_19_equal_3_o_19_Q,
      ADR4 => PWM_1_PWR_15_o_count_19_equal_3_o_19_1_1570,
      ADR2 => PWM_1_count(13),
      ADR1 => PWM_1_count(15),
      ADR5 => PWM_1_PWR_15_o_count_19_equal_3_o_19_2_1571,
      O => PWM_1_Mcount_count_eqn_13
    );
  PWM_1_count_12 : X_FF
    generic map(
      LOC => "SLICE_X13Y44",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_1_count_12_CLK,
      I => PWM_1_Mcount_count_eqn_12,
      O => PWM_1_count(12),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  PWM_1_Mcount_count_eqn_121 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y44",
      INIT => X"EF00FF00FF00FF00"
    )
    port map (
      ADR3 => PWM_1_Result_12_0,
      ADR5 => PWM_1_PWR_15_o_count_19_equal_3_o_19_Q,
      ADR4 => PWM_1_PWR_15_o_count_19_equal_3_o_19_1_1570,
      ADR0 => PWM_1_count(13),
      ADR1 => PWM_1_count(15),
      ADR2 => PWM_1_PWR_15_o_count_19_equal_3_o_19_2_1571,
      O => PWM_1_Mcount_count_eqn_12
    );
  PWM_1_count_11 : X_FF
    generic map(
      LOC => "SLICE_X13Y44",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_1_count_11_CLK,
      I => PWM_1_Mcount_count_eqn_11_1299,
      O => PWM_1_count(11),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  PWM_1_Mcount_count_eqn_111 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y44",
      INIT => X"AAAAAAAAAA2AAAAA"
    )
    port map (
      ADR0 => PWM_1_Result_11_0,
      ADR4 => PWM_1_PWR_15_o_count_19_equal_3_o_19_Q,
      ADR1 => PWM_1_PWR_15_o_count_19_equal_3_o_19_1_1570,
      ADR5 => PWM_1_count(13),
      ADR3 => PWM_1_count(15),
      ADR2 => PWM_1_PWR_15_o_count_19_equal_3_o_19_2_1571,
      O => PWM_1_Mcount_count_eqn_11_1299
    );
  PWM_1_PWR_15_o_count_19_equal_3_o_19_2 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y41",
      INIT => X"8000000000000000"
    )
    port map (
      ADR0 => PWM_1_count(1),
      ADR3 => PWM_1_count(0),
      ADR1 => PWM_1_count(3),
      ADR2 => PWM_1_count(2),
      ADR5 => PWM_1_count(5),
      ADR4 => PWM_1_count(4),
      O => PWM_1_PWR_15_o_count_19_equal_3_o_19_1_1570
    );
  PWM_1_PWR_15_o_count_19_equal_3_o_19_1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y41",
      INIT => X"8000000000000000"
    )
    port map (
      ADR2 => PWM_1_count(14),
      ADR4 => PWM_1_count(9),
      ADR3 => PWM_1_count(17),
      ADR1 => PWM_1_count(16),
      ADR0 => PWM_1_count(19),
      ADR5 => PWM_1_count(18),
      O => PWM_1_PWR_15_o_count_19_equal_3_o_19_Q
    );
  PWM_1_count_19 : X_FF
    generic map(
      LOC => "SLICE_X11Y41",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_1_count_19_CLK,
      I => PWM_1_Mcount_count_eqn_19,
      O => PWM_1_count(19),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  PWM_1_Mcount_count_eqn_191 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y41",
      INIT => X"F0D0F0F0F0F0F0F0"
    )
    port map (
      ADR2 => PWM_1_Result_19_0,
      ADR4 => PWM_1_PWR_15_o_count_19_equal_3_o_19_Q,
      ADR0 => PWM_1_PWR_15_o_count_19_equal_3_o_19_1_1570,
      ADR1 => PWM_1_count(13),
      ADR3 => PWM_1_count(15),
      ADR5 => PWM_1_PWR_15_o_count_19_equal_3_o_19_2_1571,
      O => PWM_1_Mcount_count_eqn_19
    );
  PWM_1_count_18 : X_FF
    generic map(
      LOC => "SLICE_X13Y45",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_1_count_18_CLK,
      I => PWM_1_Mcount_count_eqn_18,
      O => PWM_1_count(18),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  PWM_1_Mcount_count_eqn_181 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y45",
      INIT => X"A8AAAAAAAAAAAAAA"
    )
    port map (
      ADR0 => PWM_1_Result_18_0,
      ADR3 => PWM_1_PWR_15_o_count_19_equal_3_o_19_Q,
      ADR4 => PWM_1_PWR_15_o_count_19_equal_3_o_19_1_1570,
      ADR2 => PWM_1_count(13),
      ADR1 => PWM_1_count(15),
      ADR5 => PWM_1_PWR_15_o_count_19_equal_3_o_19_2_1571,
      O => PWM_1_Mcount_count_eqn_18
    );
  PWM_1_count_17 : X_FF
    generic map(
      LOC => "SLICE_X13Y45",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_1_count_17_CLK,
      I => PWM_1_Mcount_count_eqn_17,
      O => PWM_1_count(17),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  PWM_1_Mcount_count_eqn_171 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y45",
      INIT => X"A8AAAAAAAAAAAAAA"
    )
    port map (
      ADR0 => PWM_1_Result_17_0,
      ADR3 => PWM_1_PWR_15_o_count_19_equal_3_o_19_Q,
      ADR4 => PWM_1_PWR_15_o_count_19_equal_3_o_19_1_1570,
      ADR1 => PWM_1_count(13),
      ADR2 => PWM_1_count(15),
      ADR5 => PWM_1_PWR_15_o_count_19_equal_3_o_19_2_1571,
      O => PWM_1_Mcount_count_eqn_17
    );
  PWM_1_count_16 : X_FF
    generic map(
      LOC => "SLICE_X13Y45",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_1_count_16_CLK,
      I => PWM_1_Mcount_count_eqn_16,
      O => PWM_1_count(16),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  PWM_1_Mcount_count_eqn_161 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y45",
      INIT => X"CCCCCCCC8CCCCCCC"
    )
    port map (
      ADR1 => PWM_1_Result_16_0,
      ADR4 => PWM_1_PWR_15_o_count_19_equal_3_o_19_Q,
      ADR3 => PWM_1_PWR_15_o_count_19_equal_3_o_19_1_1570,
      ADR5 => PWM_1_count(13),
      ADR0 => PWM_1_count(15),
      ADR2 => PWM_1_PWR_15_o_count_19_equal_3_o_19_2_1571,
      O => PWM_1_Mcount_count_eqn_16
    );
  PWM_1_count_15 : X_FF
    generic map(
      LOC => "SLICE_X13Y45",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_1_count_15_CLK,
      I => PWM_1_Mcount_count_eqn_15,
      O => PWM_1_count(15),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  PWM_1_Mcount_count_eqn_151 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y45",
      INIT => X"CCCCCCCC8CCCCCCC"
    )
    port map (
      ADR1 => PWM_1_Result_15_0,
      ADR4 => PWM_1_PWR_15_o_count_19_equal_3_o_19_Q,
      ADR3 => PWM_1_PWR_15_o_count_19_equal_3_o_19_1_1570,
      ADR5 => PWM_1_count(15),
      ADR0 => PWM_1_count(13),
      ADR2 => PWM_1_PWR_15_o_count_19_equal_3_o_19_2_1571,
      O => PWM_1_Mcount_count_eqn_15
    );
  PWM_1_pwm_out : X_FF
    generic map(
      LOC => "SLICE_X11Y42",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_1_pwm_out_CLK,
      I => PWM_1_pwm_out_rstpot_1181,
      O => PWM_1_pwm_out_1491,
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  PWM_1_pwm_out_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y42",
      INIT => X"0F0F0F0F03030303"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => PWM_1_pwm_out_1491,
      ADR2 => PWM_1_GND_14_o_count_19_equal_6_o_0,
      ADR1 => PWM_1_n0032_0,
      O => PWM_1_pwm_out_rstpot_1181
    );
  PWM_1_half_duty_3_PWM_1_half_duty_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_half_duty(4),
      O => PWM_1_half_duty_4_0
    );
  PWM_1_half_duty_3 : X_FF
    generic map(
      LOC => "SLICE_X9Y38",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_0,
      CLK => NlwBufferSignal_PWM_1_half_duty_3_CLK,
      I => NlwBufferSignal_PWM_1_half_duty_3_IN,
      O => PWM_1_half_duty(3),
      RST => GND,
      SET => GND
    );
  PWM_1_half_duty_2 : X_FF
    generic map(
      LOC => "SLICE_X9Y38",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_0,
      CLK => NlwBufferSignal_PWM_1_half_duty_2_CLK,
      I => NlwBufferSignal_PWM_1_half_duty_2_IN,
      O => PWM_1_half_duty(2),
      RST => GND,
      SET => GND
    );
  PWM_1_half_duty_1 : X_FF
    generic map(
      LOC => "SLICE_X9Y38",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_0,
      CLK => NlwBufferSignal_PWM_1_half_duty_1_CLK,
      I => NlwBufferSignal_PWM_1_half_duty_1_IN,
      O => PWM_1_half_duty(1),
      RST => GND,
      SET => GND
    );
  PWM_1_half_duty_0 : X_FF
    generic map(
      LOC => "SLICE_X9Y38",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_0,
      CLK => NlwBufferSignal_PWM_1_half_duty_0_CLK,
      I => NlwBufferSignal_PWM_1_half_duty_0_IN,
      O => PWM_1_half_duty(0),
      RST => GND,
      SET => GND
    );
  PWM_1_n0019_16_rt : X_LUT5
    generic map(
      LOC => "SLICE_X9Y38",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => PWM_1_n0019(16),
      O => PWM_1_n0019_16_rt_1154
    );
  PWM_1_half_duty_4 : X_FF
    generic map(
      LOC => "SLICE_X9Y38",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_0,
      CLK => NlwBufferSignal_PWM_1_half_duty_4_CLK,
      I => PWM_1_n0019_16_rt_1154,
      O => PWM_1_half_duty(4),
      RST => GND,
      SET => GND
    );
  PWM_1_count_2 : X_FF
    generic map(
      LOC => "SLICE_X13Y41",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_1_count_2_CLK,
      I => PWM_1_Mcount_count_eqn_2,
      O => PWM_1_count(2),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  PWM_1_Mcount_count_eqn_21 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y41",
      INIT => X"FB00FF00FF00FF00"
    )
    port map (
      ADR3 => PWM_1_Result_2_0,
      ADR4 => PWM_1_PWR_15_o_count_19_equal_3_o_19_Q,
      ADR5 => PWM_1_PWR_15_o_count_19_equal_3_o_19_1_1570,
      ADR0 => PWM_1_count(13),
      ADR2 => PWM_1_count(15),
      ADR1 => PWM_1_PWR_15_o_count_19_equal_3_o_19_2_1571,
      O => PWM_1_Mcount_count_eqn_2
    );
  PWM_1_count_1 : X_FF
    generic map(
      LOC => "SLICE_X13Y41",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_1_count_1_CLK,
      I => PWM_1_Mcount_count_eqn_1,
      O => PWM_1_count(1),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  PWM_1_Mcount_count_eqn_11 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y41",
      INIT => X"A8AAAAAAAAAAAAAA"
    )
    port map (
      ADR0 => PWM_1_Result_1_0,
      ADR5 => PWM_1_PWR_15_o_count_19_equal_3_o_19_Q,
      ADR4 => PWM_1_PWR_15_o_count_19_equal_3_o_19_1_1570,
      ADR2 => PWM_1_count(13),
      ADR1 => PWM_1_count(15),
      ADR3 => PWM_1_PWR_15_o_count_19_equal_3_o_19_2_1571,
      O => PWM_1_Mcount_count_eqn_1
    );
  PWM_1_PWR_15_o_count_19_equal_3_o_19_3 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y41",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => PWM_1_count(7),
      ADR5 => PWM_1_count(6),
      ADR4 => PWM_1_count(8),
      ADR2 => PWM_1_count(10),
      ADR1 => PWM_1_count(11),
      ADR3 => PWM_1_count(12),
      O => PWM_1_PWR_15_o_count_19_equal_3_o_19_2_1571
    );
  PWM_1_count_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y41",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_1_count_0_CLK,
      I => PWM_1_Mcount_count_eqn_0,
      O => PWM_1_count(0),
      RST => Decode_SPIpacket_1_reset_inv,
      SET => GND
    );
  PWM_1_Mcount_count_eqn_01 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y41",
      INIT => X"AAAAAAAA8AAAAAAA"
    )
    port map (
      ADR0 => PWM_1_Result_0_0,
      ADR3 => PWM_1_PWR_15_o_count_19_equal_3_o_19_Q,
      ADR2 => PWM_1_PWR_15_o_count_19_equal_3_o_19_1_1570,
      ADR1 => PWM_1_count(13),
      ADR5 => PWM_1_count(15),
      ADR4 => PWM_1_PWR_15_o_count_19_equal_3_o_19_2_1571,
      O => PWM_1_Mcount_count_eqn_0
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_i_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_i_3_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_i_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_i_4_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_i_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_i_1_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_i_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_i_2_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_i_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_i_0_CLK
    );
  NlwBufferBlock_Decode_SPIpacket_1_SFD_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Decode_SPIpacket_1_SFD_3_CLK
    );
  NlwBufferBlock_Decode_SPIpacket_1_SFD_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(15),
      O => NlwBufferSignal_Decode_SPIpacket_1_SFD_3_IN
    );
  NlwBufferBlock_Decode_SPIpacket_1_CMD_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Decode_SPIpacket_1_CMD_3_CLK
    );
  NlwBufferBlock_Decode_SPIpacket_1_SFD_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Decode_SPIpacket_1_SFD_2_CLK
    );
  NlwBufferBlock_Decode_SPIpacket_1_SFD_2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(14),
      O => NlwBufferSignal_Decode_SPIpacket_1_SFD_2_IN
    );
  NlwBufferBlock_Decode_SPIpacket_1_CMD_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Decode_SPIpacket_1_CMD_2_CLK
    );
  NlwBufferBlock_Decode_SPIpacket_1_SFD_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Decode_SPIpacket_1_SFD_1_CLK
    );
  NlwBufferBlock_Decode_SPIpacket_1_SFD_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(13),
      O => NlwBufferSignal_Decode_SPIpacket_1_SFD_1_IN
    );
  NlwBufferBlock_Decode_SPIpacket_1_CMD_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Decode_SPIpacket_1_CMD_1_CLK
    );
  NlwBufferBlock_Decode_SPIpacket_1_SFD_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Decode_SPIpacket_1_SFD_0_CLK
    );
  NlwBufferBlock_Decode_SPIpacket_1_SFD_0_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(12),
      O => NlwBufferSignal_Decode_SPIpacket_1_SFD_0_IN
    );
  NlwBufferBlock_Decode_SPIpacket_1_CMD_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Decode_SPIpacket_1_CMD_0_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_15_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_15_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_15_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_data(15),
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_15_IN
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_11_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_14_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_14_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_14_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_data(14),
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_14_IN
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_10_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_13_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_13_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_13_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_data(13),
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_13_IN
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_9_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_12_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_12_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_12_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_data(12),
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_12_IN
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_8_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_risingEdge_detector_1_flipflop_ris_Q_inter_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_risingEdge_detector_1_flipflop_ris_Q_inter_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_3_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_data(3),
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_3_IN
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_2_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_data(2),
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_2_IN
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_1_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_data(1),
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_1_IN
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_0_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_0_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_data(0),
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_0_IN
    );
  NlwBufferBlock_SPI_transceiver_1_risingEdge_detector_1_flipflop_sys_Q_inter_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_risingEdge_detector_1_flipflop_sys_Q_inter_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_risingEdge_detector_1_flipflop_sys_Q_inter_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_buffer_1_sclk_inter2_1584,
      O => NlwBufferSignal_SPI_transceiver_1_risingEdge_detector_1_flipflop_sys_Q_inter_IN
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_data_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_11_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_data_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_10_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_data_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_9_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_data_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_8_CLK
    );
  NlwBufferBlock_Decode_SPIpacket_1_Control_SFD_Control_CMD_Control_FCS_sliced_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Decode_SPIpacket_1_Control_SFD_Control_CMD_Control_FCS_sliced_1_CLK
    );
  NlwBufferBlock_Decode_SPIpacket_1_Control_SFD_Control_CMD_Control_FCS_sliced_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Decode_SPIpacket_1_Control_SFD_Control_CMD_Control_FCS_sliced_0_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_buffer_1_ssel_inter2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_ssel_inter2_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_buffer_1_ssel_inter2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_buffer_1_ssel_inter1_1586,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_ssel_inter2_IN
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_data_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_7_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_data_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_6_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_data_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_5_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_data_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_4_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_buffer_1_ssel_inter1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_ssel_inter1_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_buffer_1_ssel_inter1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => ssel_IBUF_0,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_ssel_inter1_IN
    );
  NlwBufferBlock_Decode_SPIpacket_1_duty_inter_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Decode_SPIpacket_1_duty_inter_5_CLK
    );
  NlwBufferBlock_Decode_SPIpacket_1_duty_inter_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Decode_SPIpacket_1_duty_inter_6_CLK
    );
  NlwBufferBlock_Decode_SPIpacket_1_duty_inter_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Decode_SPIpacket_1_duty_inter_3_CLK
    );
  NlwBufferBlock_Decode_SPIpacket_1_duty_inter_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Decode_SPIpacket_1_duty_inter_4_CLK
    );
  NlwBufferBlock_Decode_SPIpacket_1_duty_inter_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Decode_SPIpacket_1_duty_inter_1_CLK
    );
  NlwBufferBlock_Decode_SPIpacket_1_duty_inter_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Decode_SPIpacket_1_duty_inter_2_CLK
    );
  NlwBufferBlock_Decode_SPIpacket_1_duty_inter_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Decode_SPIpacket_1_duty_inter_0_CLK
    );
  NlwBufferBlock_Decode_SPIpacket_1_VALUE_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Decode_SPIpacket_1_VALUE_6_CLK
    );
  NlwBufferBlock_Decode_SPIpacket_1_VALUE_6_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(7),
      O => NlwBufferSignal_Decode_SPIpacket_1_VALUE_6_IN
    );
  NlwBufferBlock_Decode_SPIpacket_1_VALUE_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Decode_SPIpacket_1_VALUE_5_CLK
    );
  NlwBufferBlock_Decode_SPIpacket_1_VALUE_5_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(6),
      O => NlwBufferSignal_Decode_SPIpacket_1_VALUE_5_IN
    );
  NlwBufferBlock_Decode_SPIpacket_1_VALUE_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Decode_SPIpacket_1_VALUE_4_CLK
    );
  NlwBufferBlock_Decode_SPIpacket_1_VALUE_4_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(5),
      O => NlwBufferSignal_Decode_SPIpacket_1_VALUE_4_IN
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_7_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_7_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_data(7),
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_7_IN
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_6_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_6_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_data(6),
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_6_IN
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_5_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_5_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_data(5),
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_5_IN
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_4_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_4_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_data(4),
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_spi_packet_inter_4_IN
    );
  NlwBufferBlock_Decode_SPIpacket_1_VALUE_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Decode_SPIpacket_1_VALUE_3_CLK
    );
  NlwBufferBlock_Decode_SPIpacket_1_VALUE_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(4),
      O => NlwBufferSignal_Decode_SPIpacket_1_VALUE_3_IN
    );
  NlwBufferBlock_Decode_SPIpacket_1_VALUE_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Decode_SPIpacket_1_VALUE_2_CLK
    );
  NlwBufferBlock_Decode_SPIpacket_1_VALUE_2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(3),
      O => NlwBufferSignal_Decode_SPIpacket_1_VALUE_2_IN
    );
  NlwBufferBlock_Decode_SPIpacket_1_VALUE_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Decode_SPIpacket_1_VALUE_1_CLK
    );
  NlwBufferBlock_Decode_SPIpacket_1_VALUE_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(2),
      O => NlwBufferSignal_Decode_SPIpacket_1_VALUE_1_IN
    );
  NlwBufferBlock_Decode_SPIpacket_1_VALUE_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Decode_SPIpacket_1_VALUE_0_CLK
    );
  NlwBufferBlock_Decode_SPIpacket_1_VALUE_0_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(1),
      O => NlwBufferSignal_Decode_SPIpacket_1_VALUE_0_IN
    );
  NlwBufferBlock_Decode_SPIpacket_1_result_control_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Decode_SPIpacket_1_result_control_2_CLK
    );
  NlwBufferBlock_Decode_SPIpacket_1_result_control_2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Decode_SPIpacket_1_Control_SFD_Control_CMD_Control_FCS_sliced_0_1581,
      O => NlwBufferSignal_Decode_SPIpacket_1_result_control_2_IN
    );
  NlwBufferBlock_Decode_SPIpacket_1_result_control_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Decode_SPIpacket_1_result_control_1_CLK
    );
  NlwBufferBlock_Decode_SPIpacket_1_result_control_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Decode_SPIpacket_1_Control_CMD_1612,
      O => NlwBufferSignal_Decode_SPIpacket_1_result_control_1_IN
    );
  NlwBufferBlock_Decode_SPIpacket_1_Control_CMD_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Decode_SPIpacket_1_Control_CMD_CLK
    );
  NlwBufferBlock_Decode_SPIpacket_1_result_control_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Decode_SPIpacket_1_result_control_0_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_buffer_1_mosi_inter1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_mosi_inter1_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_buffer_1_mosi_inter1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => mosi_IBUF_0,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_mosi_inter1_IN
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_buffer_1_sclk_inter1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_sclk_inter1_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_buffer_1_sclk_inter1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => sclk_IBUF_0,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_sclk_inter1_IN
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_buffer_1_sclk_inter2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_sclk_inter2_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_buffer_1_sclk_inter2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_buffer_1_sclk_inter1_1600,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_sclk_inter2_IN
    );
  NlwBufferBlock_clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_0,
      O => NlwBufferSignal_clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_data_15_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_15_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_data_14_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_14_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_data_13_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_13_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_data_12_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_12_CLK
    );
  NlwBufferBlock_motor_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_pwm_out_1491,
      O => NlwBufferSignal_motor_1_OBUF_I
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_buffer_1_mosi_inter2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_mosi_inter2_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_buffer_1_mosi_inter2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_buffer_1_mosi_inter1_1605,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_buffer_1_mosi_inter2_IN
    );
  NlwBufferBlock_Decode_SPIpacket_1_FCS_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Decode_SPIpacket_1_FCS_CLK
    );
  NlwBufferBlock_Decode_SPIpacket_1_FCS_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SPI_transceiver_1_SPI_receiver_1_spi_packet_inter(0),
      O => NlwBufferSignal_Decode_SPIpacket_1_FCS_IN
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_data_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_3_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_data_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_2_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_data_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_1_CLK
    );
  NlwBufferBlock_SPI_transceiver_1_SPI_receiver_1_data_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_SPI_transceiver_1_SPI_receiver_1_data_0_CLK
    );
  NlwBufferBlock_PWM_1_count_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_1_count_10_CLK
    );
  NlwBufferBlock_PWM_1_count_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_1_count_9_CLK
    );
  NlwBufferBlock_PWM_1_count_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_1_count_8_CLK
    );
  NlwBufferBlock_PWM_1_count_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_1_count_7_CLK
    );
  NlwBufferBlock_PWM_1_count_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_1_count_6_CLK
    );
  NlwBufferBlock_PWM_1_count_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_1_count_5_CLK
    );
  NlwBufferBlock_PWM_1_count_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_1_count_4_CLK
    );
  NlwBufferBlock_PWM_1_count_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_1_count_3_CLK
    );
  NlwBufferBlock_PWM_1_count_14_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_1_count_14_CLK
    );
  NlwBufferBlock_PWM_1_count_13_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_1_count_13_CLK
    );
  NlwBufferBlock_PWM_1_count_12_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_1_count_12_CLK
    );
  NlwBufferBlock_PWM_1_count_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_1_count_11_CLK
    );
  NlwBufferBlock_PWM_1_count_19_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_1_count_19_CLK
    );
  NlwBufferBlock_PWM_1_count_18_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_1_count_18_CLK
    );
  NlwBufferBlock_PWM_1_count_17_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_1_count_17_CLK
    );
  NlwBufferBlock_PWM_1_count_16_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_1_count_16_CLK
    );
  NlwBufferBlock_PWM_1_count_15_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_1_count_15_CLK
    );
  NlwBufferBlock_PWM_1_pwm_out_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_1_pwm_out_CLK
    );
  NlwBufferBlock_PWM_1_half_duty_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_1_half_duty_3_CLK
    );
  NlwBufferBlock_PWM_1_half_duty_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_n0019(15),
      O => NlwBufferSignal_PWM_1_half_duty_3_IN
    );
  NlwBufferBlock_PWM_1_half_duty_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_1_half_duty_2_CLK
    );
  NlwBufferBlock_PWM_1_half_duty_2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_n0019(14),
      O => NlwBufferSignal_PWM_1_half_duty_2_IN
    );
  NlwBufferBlock_PWM_1_half_duty_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_1_half_duty_1_CLK
    );
  NlwBufferBlock_PWM_1_half_duty_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_n0019(13),
      O => NlwBufferSignal_PWM_1_half_duty_1_IN
    );
  NlwBufferBlock_PWM_1_half_duty_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_1_half_duty_0_CLK
    );
  NlwBufferBlock_PWM_1_half_duty_0_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => PWM_1_n0019(12),
      O => NlwBufferSignal_PWM_1_half_duty_0_IN
    );
  NlwBufferBlock_PWM_1_half_duty_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_1_half_duty_4_CLK
    );
  NlwBufferBlock_PWM_1_count_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_1_count_2_CLK
    );
  NlwBufferBlock_PWM_1_count_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_1_count_1_CLK
    );
  NlwBufferBlock_PWM_1_count_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_1_count_0_CLK
    );
  NlwBlock_CMD_motors_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_CMD_motors_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

