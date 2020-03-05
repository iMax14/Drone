--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: PWM_generator_timesim.vhd
-- /___/   /\     Timestamp: Tue Mar 03 10:54:28 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 2 -pcf PWM_generator.pcf -rpw 100 -tpw 0 -ar Structure -tm PWM_generator -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim PWM_generator.ncd PWM_generator_timesim.vhd 
-- Device	: 6slx9ftg256-2 (PRODUCTION 1.23 2013-10-13)
-- Input file	: PWM_generator.ncd
-- Output file	: C:\Users\Maxime\Desktop\Projet_drone\FPGA\Motor_control_FPGA\netgen\par\PWM_generator_timesim.vhd
-- # of Entities	: 1
-- Design Name	: PWM_generator
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

entity PWM_generator is
  port (
    clk : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    pwm : out STD_LOGIC; 
    divider_pwm_clock : in STD_LOGIC_VECTOR ( 6 downto 0 ); 
    duty_pwm : in STD_LOGIC_VECTOR ( 6 downto 0 ) 
  );
end PWM_generator;

architecture Structure of PWM_generator is
  signal clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal n000313_391 : STD_LOGIC; 
  signal divider_pwm_clock_6_IBUF_0 : STD_LOGIC; 
  signal divider_pwm_clock_5_IBUF_0 : STD_LOGIC; 
  signal Msub_GND_5_o_GND_5_o_sub_2_OUT_6_0_cy_4_Q : STD_LOGIC; 
  signal divider_pwm_clock_3_IBUF_0 : STD_LOGIC; 
  signal divider_pwm_clock_2_IBUF_0 : STD_LOGIC; 
  signal divider_pwm_clock_1_IBUF_0 : STD_LOGIC; 
  signal Msub_GND_5_o_GND_5_o_sub_2_OUT_6_0_cy_0_0 : STD_LOGIC; 
  signal N8_0 : STD_LOGIC; 
  signal reset_inv : STD_LOGIC; 
  signal n0003 : STD_LOGIC; 
  signal Result_4_1 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal Q_n00391_cepot_412 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N24_0 : STD_LOGIC; 
  signal N23_0 : STD_LOGIC; 
  signal counter_6_duty_pwm_6_LessThan_4_o2 : STD_LOGIC; 
  signal duty_pwm_6_IBUF_0 : STD_LOGIC; 
  signal duty_pwm_5_IBUF_0 : STD_LOGIC; 
  signal duty_pwm_4_IBUF_0 : STD_LOGIC; 
  signal duty_pwm_3_IBUF_0 : STD_LOGIC; 
  signal duty_pwm_2_IBUF_0 : STD_LOGIC; 
  signal counter_6_duty_pwm_6_LessThan_4_o22_433 : STD_LOGIC; 
  signal duty_pwm_1_IBUF_0 : STD_LOGIC; 
  signal duty_pwm_0_IBUF_0 : STD_LOGIC; 
  signal Result_5_1 : STD_LOGIC; 
  signal divider_pwm_clock_4_IBUF_0 : STD_LOGIC; 
  signal n00031 : STD_LOGIC; 
  signal Msub_GND_5_o_GND_5_o_sub_2_OUT_6_0_cy_2_Q : STD_LOGIC; 
  signal n000314_441 : STD_LOGIC; 
  signal n000312_442 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal pwm_inter_445 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal counter_6_duty_pwm_6_LessThan_4_o23_450 : STD_LOGIC; 
  signal n000311_451 : STD_LOGIC; 
  signal counter_6_duty_pwm_6_LessThan_4_o21_452 : STD_LOGIC; 
  signal Q_n0041_455 : STD_LOGIC; 
  signal duty_pwm_1_IBUF_8 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_2 : STD_LOGIC; 
  signal duty_pwm_0_IBUF_5 : STD_LOGIC; 
  signal duty_pwm_3_IBUF_14 : STD_LOGIC; 
  signal duty_pwm_4_IBUF_17 : STD_LOGIC; 
  signal duty_pwm_5_IBUF_20 : STD_LOGIC; 
  signal duty_pwm_6_IBUF_23 : STD_LOGIC; 
  signal Msub_GND_5_o_GND_5_o_sub_2_OUT_6_0_cy_0_Q : STD_LOGIC; 
  signal reset_inv_non_inverted : STD_LOGIC; 
  signal ProtoComp33_IINV_OUT : STD_LOGIC; 
  signal duty_pwm_2_IBUF_11 : STD_LOGIC; 
  signal divider_pwm_clock_1_IBUF_33 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N12_pack_9 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N13_pack_10 : STD_LOGIC; 
  signal divider_pwm_clock_6_IBUF_50 : STD_LOGIC; 
  signal divider_pwm_clock_2_IBUF_36 : STD_LOGIC; 
  signal divider_pwm_clock_4_IBUF_44 : STD_LOGIC; 
  signal divider_pwm_clock_5_IBUF_47 : STD_LOGIC; 
  signal divider_pwm_clock_3_IBUF_39 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal pwm_clock_1_rstpot_141 : STD_LOGIC; 
  signal pwm_clock_3_rstpot_135 : STD_LOGIC; 
  signal pwm_clock_2_rstpot_132 : STD_LOGIC; 
  signal pwm_clock_4_rstpot_125 : STD_LOGIC; 
  signal pwm_clock_2_pack_11 : STD_LOGIC; 
  signal pwm_clock_0_pack_15 : STD_LOGIC; 
  signal pwm_clock_0_rstpot_113 : STD_LOGIC; 
  signal pwm_clock_5_rstpot_112 : STD_LOGIC; 
  signal GND_5_o_GND_5_o_sub_2_OUT_4_pack_9 : STD_LOGIC; 
  signal pwm_inter_rstpot_176 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal Result_4_pack_12 : STD_LOGIC; 
  signal counter_0_rstpot_326 : STD_LOGIC; 
  signal counter_1_rstpot_316 : STD_LOGIC; 
  signal counter_2_rstpot_307 : STD_LOGIC; 
  signal counter_3_rstpot_371 : STD_LOGIC; 
  signal counter_4_rstpot_357 : STD_LOGIC; 
  signal counter_5_rstpot_347 : STD_LOGIC; 
  signal counter_6_rstpot_343 : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_pwm_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_pwm_clock_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_pwm_clock_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_pwm_clock_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_pwm_clock_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_pwm_clock_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_pwm_clock_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_pwm_inter_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_counter_3_CLK : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal pwm_clock : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal counter : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 4 downto 3 ); 
  signal Mcount_counter_cy : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal GND_5_o_GND_5_o_sub_2_OUT : STD_LOGIC_VECTOR ( 5 downto 4 ); 
begin
  clk_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 240 ps
    )
    port map (
      I => NlwBufferSignal_clk_BUFGP_BUFG_IN,
      O => clk_BUFGP
    );
  duty_pwm_1_IBUF : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 240 ps
    )
    port map (
      O => duty_pwm_1_IBUF_8,
      I => duty_pwm(1)
    );
  ProtoComp32_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 240 ps
    )
    port map (
      I => duty_pwm_1_IBUF_8,
      O => duty_pwm_1_IBUF_0
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 240 ps
    )
    port map (
      O => clk_BUFGP_IBUFG_2,
      I => clk
    );
  ProtoComp32_IMUX : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_2,
      O => clk_BUFGP_IBUFG_0
    );
  duty_pwm_0_IBUF : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 240 ps
    )
    port map (
      O => duty_pwm_0_IBUF_5,
      I => duty_pwm(0)
    );
  ProtoComp32_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 240 ps
    )
    port map (
      I => duty_pwm_0_IBUF_5,
      O => duty_pwm_0_IBUF_0
    );
  duty_pwm_3_IBUF : X_BUF
    generic map(
      LOC => "PAD131",
      PATHPULSE => 240 ps
    )
    port map (
      O => duty_pwm_3_IBUF_14,
      I => duty_pwm(3)
    );
  ProtoComp32_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD131",
      PATHPULSE => 240 ps
    )
    port map (
      I => duty_pwm_3_IBUF_14,
      O => duty_pwm_3_IBUF_0
    );
  duty_pwm_4_IBUF : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 240 ps
    )
    port map (
      O => duty_pwm_4_IBUF_17,
      I => duty_pwm(4)
    );
  ProtoComp32_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 240 ps
    )
    port map (
      I => duty_pwm_4_IBUF_17,
      O => duty_pwm_4_IBUF_0
    );
  duty_pwm_5_IBUF : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 240 ps
    )
    port map (
      O => duty_pwm_5_IBUF_20,
      I => duty_pwm(5)
    );
  ProtoComp32_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 240 ps
    )
    port map (
      I => duty_pwm_5_IBUF_20,
      O => duty_pwm_5_IBUF_0
    );
  duty_pwm_6_IBUF : X_BUF
    generic map(
      LOC => "PAD140",
      PATHPULSE => 240 ps
    )
    port map (
      O => duty_pwm_6_IBUF_23,
      I => duty_pwm(6)
    );
  ProtoComp32_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD140",
      PATHPULSE => 240 ps
    )
    port map (
      I => duty_pwm_6_IBUF_23,
      O => duty_pwm_6_IBUF_0
    );
  divider_pwm_clock_0_IBUF : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 240 ps
    )
    port map (
      O => Msub_GND_5_o_GND_5_o_sub_2_OUT_6_0_cy_0_Q,
      I => divider_pwm_clock(0)
    );
  ProtoComp32_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 240 ps
    )
    port map (
      I => Msub_GND_5_o_GND_5_o_sub_2_OUT_6_0_cy_0_Q,
      O => Msub_GND_5_o_GND_5_o_sub_2_OUT_6_0_cy_0_0
    );
  reset_IBUF : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 240 ps
    )
    port map (
      O => reset_inv_non_inverted,
      I => reset
    );
  ProtoComp33_IMUX : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 240 ps
    )
    port map (
      I => ProtoComp33_IINV_OUT,
      O => reset_inv
    );
  ProtoComp33_IINV : X_INV
    generic map(
      LOC => "PAD122",
      PATHPULSE => 240 ps
    )
    port map (
      I => reset_inv_non_inverted,
      O => ProtoComp33_IINV_OUT
    );
  duty_pwm_2_IBUF : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 240 ps
    )
    port map (
      O => duty_pwm_2_IBUF_11,
      I => duty_pwm(2)
    );
  ProtoComp32_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 240 ps
    )
    port map (
      I => duty_pwm_2_IBUF_11,
      O => duty_pwm_2_IBUF_0
    );
  divider_pwm_clock_1_IBUF : X_BUF
    generic map(
      LOC => "PAD138",
      PATHPULSE => 240 ps
    )
    port map (
      O => divider_pwm_clock_1_IBUF_33,
      I => divider_pwm_clock(1)
    );
  ProtoComp32_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD138",
      PATHPULSE => 240 ps
    )
    port map (
      I => divider_pwm_clock_1_IBUF_33,
      O => divider_pwm_clock_1_IBUF_0
    );
  pwm_OBUF : X_OBUF
    generic map(
      LOC => "PAD135"
    )
    port map (
      I => NlwBufferSignal_pwm_OBUF_I,
      O => pwm
    );
  N10_N10_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => N13_pack_10,
      O => N13
    );
  N10_N10_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => N12_pack_9,
      O => N12
    );
  n000311_SW3 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y5"
    )
    port map (
      IA => N32,
      IB => N33,
      O => N13_pack_10,
      SEL => pwm_clock(5)
    );
  n000311_SW3_F : X_LUT6
    generic map(
      LOC => "SLICE_X4Y5",
      INIT => X"FFFFFFF0FFFEFFF1"
    )
    port map (
      ADR4 => divider_pwm_clock_3_IBUF_0,
      ADR0 => divider_pwm_clock_2_IBUF_0,
      ADR1 => divider_pwm_clock_1_IBUF_0,
      ADR5 => Msub_GND_5_o_GND_5_o_sub_2_OUT_6_0_cy_0_0,
      ADR3 => n000313_391,
      ADR2 => divider_pwm_clock_5_IBUF_0,
      O => N32
    );
  n000311_SW3_G : X_LUT6
    generic map(
      LOC => "SLICE_X4Y5",
      INIT => X"FFFFF0F0FFFCF0F3"
    )
    port map (
      ADR0 => '1',
      ADR2 => n000313_391,
      ADR4 => divider_pwm_clock_3_IBUF_0,
      ADR3 => divider_pwm_clock_2_IBUF_0,
      ADR1 => divider_pwm_clock_1_IBUF_0,
      ADR5 => Msub_GND_5_o_GND_5_o_sub_2_OUT_6_0_cy_0_0,
      O => N33
    );
  pwm_inter_rstpot_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y5",
      INIT => X"FFA9FFEBFFA9FFEB"
    )
    port map (
      ADR4 => pwm_clock(5),
      ADR2 => Msub_GND_5_o_GND_5_o_sub_2_OUT_6_0_cy_4_Q,
      ADR1 => divider_pwm_clock_5_IBUF_0,
      ADR0 => divider_pwm_clock_6_IBUF_0,
      ADR3 => n000314_441,
      ADR5 => '1',
      O => N10
    );
  n000311_SW2 : X_LUT5
    generic map(
      LOC => "SLICE_X4Y5",
      INIT => X"A9A9EBEB"
    )
    port map (
      ADR4 => pwm_clock(5),
      ADR2 => Msub_GND_5_o_GND_5_o_sub_2_OUT_6_0_cy_4_Q,
      ADR1 => divider_pwm_clock_5_IBUF_0,
      ADR0 => divider_pwm_clock_6_IBUF_0,
      ADR3 => '1',
      O => N12_pack_9
    );
  Q_n00391_cepot : X_LUT6
    generic map(
      LOC => "SLICE_X4Y5",
      INIT => X"0000045541004555"
    )
    port map (
      ADR1 => pwm_clock(3),
      ADR5 => N13,
      ADR3 => n000312_442,
      ADR0 => n000314_441,
      ADR2 => n00031,
      ADR4 => N12,
      O => Q_n00391_cepot_412
    );
  divider_pwm_clock_6_IBUF : X_BUF
    generic map(
      LOC => "PAD144",
      PATHPULSE => 240 ps
    )
    port map (
      O => divider_pwm_clock_6_IBUF_50,
      I => divider_pwm_clock(6)
    );
  ProtoComp32_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD144",
      PATHPULSE => 240 ps
    )
    port map (
      I => divider_pwm_clock_6_IBUF_50,
      O => divider_pwm_clock_6_IBUF_0
    );
  n00032 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => X"00810189A9EBABEF"
    )
    port map (
      ADR0 => divider_pwm_clock_2_IBUF_0,
      ADR2 => Msub_GND_5_o_GND_5_o_sub_2_OUT_6_0_cy_0_0,
      ADR1 => divider_pwm_clock_1_IBUF_0,
      ADR5 => pwm_clock(2),
      ADR3 => pwm_clock(1),
      ADR4 => pwm_clock(0),
      O => n00031
    );
  n000315 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => X"FFFAF7F2FFF2FDF0"
    )
    port map (
      ADR1 => pwm_clock(3),
      ADR4 => N8_0,
      ADR2 => n000314_441,
      ADR0 => n000312_442,
      ADR5 => n00031,
      ADR3 => N7,
      O => n0003
    );
  n000311_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => X"AAAAAAA9EEEEEEEB"
    )
    port map (
      ADR0 => divider_pwm_clock_6_IBUF_0,
      ADR2 => divider_pwm_clock_4_IBUF_0,
      ADR4 => Msub_GND_5_o_GND_5_o_sub_2_OUT_6_0_cy_2_Q,
      ADR3 => divider_pwm_clock_3_IBUF_0,
      ADR1 => divider_pwm_clock_5_IBUF_0,
      ADR5 => pwm_clock(5),
      O => N7
    );
  Msub_GND_5_o_GND_5_o_sub_2_OUT_6_0_xor_5_11 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y6",
      INIT => X"FFFFFFFE00000001"
    )
    port map (
      ADR5 => divider_pwm_clock_5_IBUF_0,
      ADR0 => divider_pwm_clock_3_IBUF_0,
      ADR2 => divider_pwm_clock_1_IBUF_0,
      ADR1 => Msub_GND_5_o_GND_5_o_sub_2_OUT_6_0_cy_0_0,
      ADR4 => divider_pwm_clock_2_IBUF_0,
      ADR3 => divider_pwm_clock_4_IBUF_0,
      O => GND_5_o_GND_5_o_sub_2_OUT(5)
    );
  divider_pwm_clock_2_IBUF : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 240 ps
    )
    port map (
      O => divider_pwm_clock_2_IBUF_36,
      I => divider_pwm_clock(2)
    );
  ProtoComp32_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 240 ps
    )
    port map (
      I => divider_pwm_clock_2_IBUF_36,
      O => divider_pwm_clock_2_IBUF_0
    );
  divider_pwm_clock_4_IBUF : X_BUF
    generic map(
      LOC => "PAD139",
      PATHPULSE => 240 ps
    )
    port map (
      O => divider_pwm_clock_4_IBUF_44,
      I => divider_pwm_clock(4)
    );
  ProtoComp32_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD139",
      PATHPULSE => 240 ps
    )
    port map (
      I => divider_pwm_clock_4_IBUF_44,
      O => divider_pwm_clock_4_IBUF_0
    );
  divider_pwm_clock_5_IBUF : X_BUF
    generic map(
      LOC => "PAD143",
      PATHPULSE => 240 ps
    )
    port map (
      O => divider_pwm_clock_5_IBUF_47,
      I => divider_pwm_clock(5)
    );
  ProtoComp32_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD143",
      PATHPULSE => 240 ps
    )
    port map (
      I => divider_pwm_clock_5_IBUF_47,
      O => divider_pwm_clock_5_IBUF_0
    );
  divider_pwm_clock_3_IBUF : X_BUF
    generic map(
      LOC => "PAD137",
      PATHPULSE => 240 ps
    )
    port map (
      O => divider_pwm_clock_3_IBUF_39,
      I => divider_pwm_clock(3)
    );
  ProtoComp32_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD137",
      PATHPULSE => 240 ps
    )
    port map (
      I => divider_pwm_clock_3_IBUF_39,
      O => divider_pwm_clock_3_IBUF_0
    );
  n000313_n000313_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => N8,
      O => N8_0
    );
  n000311_SW1 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y6"
    )
    port map (
      IA => N30,
      IB => N31,
      O => N8,
      SEL => pwm_clock(5)
    );
  n000311_SW1_F : X_LUT6
    generic map(
      LOC => "SLICE_X6Y6",
      INIT => X"FFFFFFFFFFAAFEAB"
    )
    port map (
      ADR3 => divider_pwm_clock_3_IBUF_0,
      ADR4 => divider_pwm_clock_2_IBUF_0,
      ADR1 => divider_pwm_clock_1_IBUF_0,
      ADR2 => Msub_GND_5_o_GND_5_o_sub_2_OUT_6_0_cy_0_0,
      ADR0 => n000313_391,
      ADR5 => divider_pwm_clock_5_IBUF_0,
      O => N30
    );
  n000311_SW1_G : X_LUT6
    generic map(
      LOC => "SLICE_X6Y6",
      INIT => X"FFFFFFFFFF00FC03"
    )
    port map (
      ADR0 => '1',
      ADR5 => n000313_391,
      ADR3 => divider_pwm_clock_3_IBUF_0,
      ADR4 => divider_pwm_clock_2_IBUF_0,
      ADR1 => divider_pwm_clock_1_IBUF_0,
      ADR2 => Msub_GND_5_o_GND_5_o_sub_2_OUT_6_0_cy_0_0,
      O => N31
    );
  n000313 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y6",
      INIT => X"FFFF0000F0F00F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => divider_pwm_clock_6_IBUF_0,
      ADR2 => divider_pwm_clock_5_IBUF_0,
      ADR5 => Msub_GND_5_o_GND_5_o_sub_2_OUT_6_0_cy_4_Q,
      O => n000313_391
    );
  pwm_clock_5_pwm_clock_5_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => pwm_clock_0_pack_15,
      O => pwm_clock(0)
    );
  pwm_clock_5_pwm_clock_5_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => pwm_clock_2_pack_11,
      O => pwm_clock(2)
    );
  pwm_clock_5 : X_FF
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_pwm_clock_5_CLK,
      I => pwm_clock_5_rstpot_112,
      O => pwm_clock(5),
      RST => GND,
      SET => GND
    );
  pwm_clock_5_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => X"FAF00A00FAF00A00"
    )
    port map (
      ADR1 => '1',
      ADR2 => reset_inv,
      ADR3 => Result_5_1,
      ADR4 => pwm_clock(5),
      ADR0 => n0003,
      ADR5 => '1',
      O => pwm_clock_5_rstpot_112
    );
  pwm_clock_0_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => X"C2C2C2C2"
    )
    port map (
      ADR1 => pwm_clock(0),
      ADR2 => reset_inv,
      ADR4 => '1',
      ADR3 => '1',
      ADR0 => n0003,
      O => pwm_clock_0_rstpot_113
    );
  pwm_clock_0 : X_FF
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_pwm_clock_0_CLK,
      I => pwm_clock_0_rstpot_113,
      O => pwm_clock_0_pack_15,
      RST => GND,
      SET => GND
    );
  pwm_clock_4 : X_FF
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_pwm_clock_4_CLK,
      I => pwm_clock_4_rstpot_125,
      O => pwm_clock(4),
      RST => GND,
      SET => GND
    );
  pwm_clock_4_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => X"FF33CC00CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => reset_inv,
      ADR3 => pwm_clock(4),
      ADR5 => Result_4_1,
      ADR4 => n0003,
      O => pwm_clock_4_rstpot_125
    );
  pwm_clock_3 : X_FF
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_pwm_clock_3_CLK,
      I => pwm_clock_3_rstpot_135,
      O => pwm_clock(3),
      RST => GND,
      SET => GND
    );
  pwm_clock_3_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => X"F7F00800FFF00000"
    )
    port map (
      ADR2 => reset_inv,
      ADR5 => pwm_clock(2),
      ADR1 => pwm_clock(1),
      ADR4 => pwm_clock(3),
      ADR0 => pwm_clock(0),
      ADR3 => n0003,
      O => pwm_clock_3_rstpot_135
    );
  pwm_clock_1 : X_FF
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_pwm_clock_1_CLK,
      I => pwm_clock_1_rstpot_141,
      O => pwm_clock(1),
      RST => GND,
      SET => GND
    );
  pwm_clock_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => X"C3CCC0C0C3CCC0C0"
    )
    port map (
      ADR0 => '1',
      ADR2 => reset_inv,
      ADR3 => pwm_clock(0),
      ADR1 => pwm_clock(1),
      ADR4 => n0003,
      ADR5 => '1',
      O => pwm_clock_1_rstpot_141
    );
  pwm_clock_2_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => X"A6AAA0A0"
    )
    port map (
      ADR0 => pwm_clock(2),
      ADR2 => reset_inv,
      ADR3 => pwm_clock(0),
      ADR1 => pwm_clock(1),
      ADR4 => n0003,
      O => pwm_clock_2_rstpot_132
    );
  pwm_clock_2 : X_FF
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_pwm_clock_2_CLK,
      I => pwm_clock_2_rstpot_132,
      O => pwm_clock_2_pack_11,
      RST => GND,
      SET => GND
    );
  Msub_GND_5_o_GND_5_o_sub_2_OUT_6_0_cy_4_Msub_GND_5_o_GND_5_o_sub_2_OUT_6_0_cy_4_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => GND_5_o_GND_5_o_sub_2_OUT_4_pack_9,
      O => GND_5_o_GND_5_o_sub_2_OUT(4)
    );
  Msub_GND_5_o_GND_5_o_sub_2_OUT_6_0_cy_4_11 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y6",
      INIT => X"FFFFFFFEFFFFFFFE"
    )
    port map (
      ADR2 => divider_pwm_clock_3_IBUF_0,
      ADR0 => divider_pwm_clock_1_IBUF_0,
      ADR1 => Msub_GND_5_o_GND_5_o_sub_2_OUT_6_0_cy_0_0,
      ADR3 => divider_pwm_clock_2_IBUF_0,
      ADR4 => divider_pwm_clock_4_IBUF_0,
      ADR5 => '1',
      O => Msub_GND_5_o_GND_5_o_sub_2_OUT_6_0_cy_4_Q
    );
  Msub_GND_5_o_GND_5_o_sub_2_OUT_6_0_xor_4_11 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y6",
      INIT => X"FFFE0001"
    )
    port map (
      ADR2 => divider_pwm_clock_3_IBUF_0,
      ADR0 => divider_pwm_clock_1_IBUF_0,
      ADR1 => Msub_GND_5_o_GND_5_o_sub_2_OUT_6_0_cy_0_0,
      ADR3 => divider_pwm_clock_2_IBUF_0,
      ADR4 => divider_pwm_clock_4_IBUF_0,
      O => GND_5_o_GND_5_o_sub_2_OUT_4_pack_9
    );
  n000312 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y6",
      INIT => X"A500FF00A5A5FFFF"
    )
    port map (
      ADR1 => '1',
      ADR3 => GND_5_o_GND_5_o_sub_2_OUT(4),
      ADR2 => Msub_GND_5_o_GND_5_o_sub_2_OUT_6_0_cy_4_Q,
      ADR0 => divider_pwm_clock_5_IBUF_0,
      ADR5 => pwm_clock(4),
      ADR4 => pwm_clock(5),
      O => n000312_442
    );
  Msub_GND_5_o_GND_5_o_sub_2_OUT_6_0_cy_2_11 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y6",
      INIT => X"FFFFFAFAFFFFFAFA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => divider_pwm_clock_1_IBUF_0,
      ADR0 => Msub_GND_5_o_GND_5_o_sub_2_OUT_6_0_cy_0_0,
      ADR4 => divider_pwm_clock_2_IBUF_0,
      O => Msub_GND_5_o_GND_5_o_sub_2_OUT_6_0_cy_2_Q
    );
  n000314 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y6",
      INIT => X"00A0008200F000C3"
    )
    port map (
      ADR0 => GND_5_o_GND_5_o_sub_2_OUT(5),
      ADR4 => Msub_GND_5_o_GND_5_o_sub_2_OUT_6_0_cy_2_Q,
      ADR1 => divider_pwm_clock_3_IBUF_0,
      ADR2 => divider_pwm_clock_4_IBUF_0,
      ADR3 => pwm_clock(4),
      ADR5 => pwm_clock(5),
      O => n000314_441
    );
  Mcount_pwm_clock_xor_4_11 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y8",
      INIT => X"7788FF00FF00FF00"
    )
    port map (
      ADR2 => '1',
      ADR3 => pwm_clock(4),
      ADR4 => pwm_clock(0),
      ADR5 => pwm_clock(1),
      ADR0 => pwm_clock(2),
      ADR1 => pwm_clock(3),
      O => Result_4_1
    );
  Mcount_pwm_clock_xor_5_11 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y8",
      INIT => X"78F0F0F0F0F0F0F0"
    )
    port map (
      ADR2 => pwm_clock(5),
      ADR0 => pwm_clock(0),
      ADR5 => pwm_clock(1),
      ADR3 => pwm_clock(2),
      ADR4 => pwm_clock(3),
      ADR1 => pwm_clock(4),
      O => Result_5_1
    );
  counter_6_duty_pwm_6_LessThan_4_o22 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y5",
      INIT => X"F531F5310000F531"
    )
    port map (
      ADR3 => duty_pwm_4_IBUF_0,
      ADR5 => duty_pwm_6_IBUF_0,
      ADR2 => duty_pwm_5_IBUF_0,
      ADR4 => counter(6),
      ADR0 => counter(5),
      ADR1 => counter(4),
      O => counter_6_duty_pwm_6_LessThan_4_o21_452
    );
  counter_6_duty_pwm_6_LessThan_4_o24 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y5",
      INIT => X"80ECC8FE00000000"
    )
    port map (
      ADR1 => duty_pwm_3_IBUF_0,
      ADR3 => counter(3),
      ADR0 => duty_pwm_2_IBUF_0,
      ADR4 => counter(2),
      ADR2 => counter_6_duty_pwm_6_LessThan_4_o22_433,
      ADR5 => counter_6_duty_pwm_6_LessThan_4_o21_452,
      O => counter_6_duty_pwm_6_LessThan_4_o23_450
    );
  n000311 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y5",
      INIT => X"AA00FFAAA802FEAB"
    )
    port map (
      ADR5 => divider_pwm_clock_2_IBUF_0,
      ADR2 => Msub_GND_5_o_GND_5_o_sub_2_OUT_6_0_cy_0_0,
      ADR1 => divider_pwm_clock_1_IBUF_0,
      ADR3 => divider_pwm_clock_3_IBUF_0,
      ADR4 => pwm_clock(3),
      ADR0 => n00031,
      O => n000311_451
    );
  pwm_inter : X_SFF
    generic map(
      LOC => "SLICE_X5Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_pwm_inter_CLK,
      I => pwm_inter_rstpot_176,
      O => pwm_inter_445,
      SRST => reset_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  pwm_inter_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X5Y5",
      INIT => X"CCDDDDDDCCD8D8D8"
    )
    port map (
      ADR3 => n000312_442,
      ADR2 => counter_6_duty_pwm_6_LessThan_4_o2,
      ADR0 => N10,
      ADR1 => pwm_inter_445,
      ADR5 => counter_6_duty_pwm_6_LessThan_4_o23_450,
      ADR4 => n000311_451,
      O => pwm_inter_rstpot_176
    );
  counter_6_duty_pwm_6_LessThan_4_o21 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y4",
      INIT => X"3BFF003B02FF0002"
    )
    port map (
      ADR4 => duty_pwm_6_IBUF_0,
      ADR3 => counter(6),
      ADR5 => duty_pwm_5_IBUF_0,
      ADR1 => counter(5),
      ADR0 => duty_pwm_4_IBUF_0,
      ADR2 => counter(4),
      O => counter_6_duty_pwm_6_LessThan_4_o2
    );
  N17_N17_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => N24,
      O => N24_0
    );
  Q_n0041_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y14",
      INIT => X"4400FFFF4400FFFF"
    )
    port map (
      ADR2 => '1',
      ADR0 => reset_inv,
      ADR1 => counter(5),
      ADR3 => counter(6),
      ADR4 => counter(4),
      ADR5 => '1',
      O => N17
    );
  Q_n0041_SW7 : X_LUT5
    generic map(
      LOC => "SLICE_X6Y14",
      INIT => X"BBBBBBBB"
    )
    port map (
      ADR2 => '1',
      ADR0 => reset_inv,
      ADR1 => counter(5),
      ADR3 => '1',
      ADR4 => '1',
      O => N24
    );
  Mcount_counter_cy_4_Mcount_counter_cy_4_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => Result_4_pack_12,
      O => Result(4)
    );
  Mcount_counter_cy_4_Mcount_counter_cy_4_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => N23,
      O => N23_0
    );
  Mcount_counter_cy_4_11 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y14",
      INIT => X"8000000080000000"
    )
    port map (
      ADR0 => counter(4),
      ADR4 => counter(3),
      ADR1 => counter(2),
      ADR3 => counter(1),
      ADR2 => counter(0),
      ADR5 => '1',
      O => Mcount_counter_cy(4)
    );
  Mcount_counter_xor_4_11 : X_LUT5
    generic map(
      LOC => "SLICE_X8Y14",
      INIT => X"6AAAAAAA"
    )
    port map (
      ADR0 => counter(4),
      ADR4 => counter(3),
      ADR1 => counter(2),
      ADR3 => counter(1),
      ADR2 => counter(0),
      O => Result_4_pack_12
    );
  Q_n0041_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y14",
      INIT => X"0C0FF8FF000FF0FF"
    )
    port map (
      ADR1 => counter(5),
      ADR5 => counter(6),
      ADR4 => counter(4),
      ADR2 => reset_inv,
      ADR0 => N5,
      ADR3 => Result(4),
      O => N18
    );
  Q_n0041_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y14",
      INIT => X"A080A080A080A080"
    )
    port map (
      ADR4 => '1',
      ADR0 => counter(6),
      ADR2 => counter(5),
      ADR1 => counter(4),
      ADR3 => N5,
      ADR5 => '1',
      O => N15
    );
  Q_n0041_SW6 : X_LUT5
    generic map(
      LOC => "SLICE_X8Y14",
      INIT => X"0000F0C0"
    )
    port map (
      ADR4 => reset_inv,
      ADR0 => '1',
      ADR2 => counter(5),
      ADR1 => counter(4),
      ADR3 => N5,
      O => N23
    );
  Q_n0041_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y14",
      INIT => X"FFFCFFCCFFFCFFCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR1 => counter(3),
      ADR3 => counter(2),
      ADR4 => counter(1),
      ADR2 => counter(0),
      O => N5
    );
  Q_n0041_SW5 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y14",
      INIT => X"FFFF0000FEFA0000"
    )
    port map (
      ADR4 => counter(6),
      ADR2 => counter(3),
      ADR5 => counter(2),
      ADR1 => counter(1),
      ADR3 => counter(0),
      ADR0 => counter(4),
      O => N21
    );
  Q_n0041 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y13",
      INIT => X"0000504000000000"
    )
    port map (
      ADR0 => reset_inv,
      ADR2 => counter(6),
      ADR5 => counter(5),
      ADR1 => counter(4),
      ADR3 => N5,
      ADR4 => n0003,
      O => Q_n0041_455
    );
  counter_2 : X_FF
    generic map(
      LOC => "SLICE_X9Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_counter_2_CLK,
      I => counter_2_rstpot_307,
      O => counter(2),
      RST => GND,
      SET => GND
    );
  counter_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X9Y13",
      INIT => X"00000000DF20FF00"
    )
    port map (
      ADR1 => reset_inv,
      ADR0 => counter(1),
      ADR2 => counter(0),
      ADR3 => counter(2),
      ADR4 => Q_n00391_cepot_412,
      ADR5 => Q_n0041_455,
      O => counter_2_rstpot_307
    );
  counter_1 : X_FF
    generic map(
      LOC => "SLICE_X9Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_counter_1_CLK,
      I => counter_1_rstpot_316,
      O => counter(1),
      RST => GND,
      SET => GND
    );
  counter_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X9Y13",
      INIT => X"DDCD2202FFCF0000"
    )
    port map (
      ADR1 => reset_inv,
      ADR0 => counter(0),
      ADR2 => N15,
      ADR4 => counter(1),
      ADR5 => Q_n00391_cepot_412,
      ADR3 => n0003,
      O => counter_1_rstpot_316
    );
  counter_0 : X_FF
    generic map(
      LOC => "SLICE_X9Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_counter_0_CLK,
      I => counter_0_rstpot_326,
      O => counter(0),
      RST => GND,
      SET => GND
    );
  counter_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X9Y13",
      INIT => X"A4A5A5A5E0F0F0F0"
    )
    port map (
      ADR0 => reset_inv,
      ADR4 => counter(6),
      ADR3 => N26,
      ADR2 => counter(0),
      ADR5 => Q_n00391_cepot_412,
      ADR1 => n0003,
      O => counter_0_rstpot_326
    );
  counter_6 : X_FF
    generic map(
      LOC => "SLICE_X9Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_counter_6_CLK,
      I => counter_6_rstpot_343,
      O => counter(6),
      RST => GND,
      SET => GND
    );
  counter_6_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X9Y14",
      INIT => X"AA558A8A8A8A8A8A"
    )
    port map (
      ADR3 => N24_0,
      ADR4 => Mcount_counter_cy(4),
      ADR2 => N23_0,
      ADR0 => counter(6),
      ADR5 => Q_n00391_cepot_412,
      ADR1 => n0003,
      O => counter_6_rstpot_343
    );
  counter_5 : X_FF
    generic map(
      LOC => "SLICE_X9Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_counter_5_CLK,
      I => counter_5_rstpot_347,
      O => counter(5),
      RST => GND,
      SET => GND
    );
  counter_5_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X9Y14",
      INIT => X"F5F10A0AFFF30000"
    )
    port map (
      ADR2 => reset_inv,
      ADR1 => N21,
      ADR0 => Mcount_counter_cy(4),
      ADR4 => counter(5),
      ADR5 => Q_n00391_cepot_412,
      ADR3 => n0003,
      O => counter_5_rstpot_347
    );
  counter_4 : X_FF
    generic map(
      LOC => "SLICE_X9Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_counter_4_CLK,
      I => counter_4_rstpot_357,
      O => counter(4),
      RST => GND,
      SET => GND
    );
  counter_4_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X9Y14",
      INIT => X"CCCC5555F0F000FF"
    )
    port map (
      ADR3 => N17,
      ADR1 => N19,
      ADR0 => N18,
      ADR2 => counter(4),
      ADR5 => Q_n00391_cepot_412,
      ADR4 => n0003,
      O => counter_4_rstpot_357
    );
  counter_3 : X_FF
    generic map(
      LOC => "SLICE_X9Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_counter_3_CLK,
      I => counter_3_rstpot_371,
      O => counter(3),
      RST => GND,
      SET => GND
    );
  counter_3_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X9Y14",
      INIT => X"FC30DC10FF00DD00"
    )
    port map (
      ADR1 => reset_inv,
      ADR2 => Result(3),
      ADR0 => N15,
      ADR3 => counter(3),
      ADR5 => Q_n00391_cepot_412,
      ADR4 => n0003,
      O => counter_3_rstpot_371
    );
  Mcount_counter_xor_3_11 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y12",
      INIT => X"33CCFF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => counter(3),
      ADR4 => counter(0),
      ADR5 => counter(1),
      ADR1 => counter(2),
      O => Result(3)
    );
  Q_n0041_SW4 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y13",
      INIT => X"DFFFFFFF20000000"
    )
    port map (
      ADR5 => counter(4),
      ADR1 => reset_inv,
      ADR3 => counter(0),
      ADR0 => counter(1),
      ADR4 => counter(2),
      ADR2 => counter(3),
      O => N19
    );
  Q_n0041_SW8 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y13",
      INIT => X"F0F0F0F0F0E0F0A0"
    )
    port map (
      ADR2 => counter(5),
      ADR5 => counter(3),
      ADR0 => counter(2),
      ADR4 => counter(1),
      ADR1 => counter(0),
      ADR3 => counter(4),
      O => N26
    );
  counter_6_duty_pwm_6_LessThan_4_o23 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y5",
      INIT => X"00CCFFFF000000CC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR5 => duty_pwm_1_IBUF_0,
      ADR4 => counter(1),
      ADR1 => duty_pwm_0_IBUF_0,
      ADR3 => counter(0),
      O => counter_6_duty_pwm_6_LessThan_4_o22_433
    );
  NlwBufferBlock_clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_0,
      O => NlwBufferSignal_clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_pwm_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => pwm_inter_445,
      O => NlwBufferSignal_pwm_OBUF_I
    );
  NlwBufferBlock_pwm_clock_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_pwm_clock_5_CLK
    );
  NlwBufferBlock_pwm_clock_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_pwm_clock_0_CLK
    );
  NlwBufferBlock_pwm_clock_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_pwm_clock_4_CLK
    );
  NlwBufferBlock_pwm_clock_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_pwm_clock_3_CLK
    );
  NlwBufferBlock_pwm_clock_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_pwm_clock_1_CLK
    );
  NlwBufferBlock_pwm_clock_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_pwm_clock_2_CLK
    );
  NlwBufferBlock_pwm_inter_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_pwm_inter_CLK
    );
  NlwBufferBlock_counter_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_counter_2_CLK
    );
  NlwBufferBlock_counter_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_counter_1_CLK
    );
  NlwBufferBlock_counter_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_counter_0_CLK
    );
  NlwBufferBlock_counter_6_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_counter_6_CLK
    );
  NlwBufferBlock_counter_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_counter_5_CLK
    );
  NlwBufferBlock_counter_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_counter_4_CLK
    );
  NlwBufferBlock_counter_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_counter_3_CLK
    );
  NlwBlock_PWM_generator_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_PWM_generator_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

