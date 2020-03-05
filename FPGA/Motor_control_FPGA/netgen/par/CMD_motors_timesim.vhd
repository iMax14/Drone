--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: CMD_motors_timesim.vhd
-- /___/   /\     Timestamp: Tue Mar 03 18:16:00 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 2 -pcf CMD_motors.pcf -rpw 100 -tpw 0 -ar Structure -tm CMD_motors -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim CMD_motors.ncd CMD_motors_timesim.vhd 
-- Device	: 6slx9ftg256-2 (PRODUCTION 1.23 2013-10-13)
-- Input file	: CMD_motors.ncd
-- Output file	: C:\Users\Maxime\Desktop\Projet_drone\FPGA\Motor_control_FPGA\netgen\par\CMD_motors_timesim.vhd
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
    motor_1 : out STD_LOGIC; 
    user_keys : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end CMD_motors;

architecture Structure of CMD_motors is
  signal N14_0 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal PWM_config_freq_1_Mram_user_keys_3_PWR_4_o_wide_mux_0_OUT6 : STD_LOGIC; 
  signal PWM_config_duty_1_reset_inv : STD_LOGIC; 
  signal user_keys_0_IBUF_0 : STD_LOGIC; 
  signal user_keys_1_IBUF_0 : STD_LOGIC; 
  signal user_keys_2_IBUF_0 : STD_LOGIC; 
  signal user_keys_3_IBUF_0 : STD_LOGIC; 
  signal PWM_config_duty_1_duty_inter_6_0 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal PWM_generator_1_n0039 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal PWM_generator_1_pwm_inter_272 : STD_LOGIC; 
  signal N25_0 : STD_LOGIC; 
  signal PWM_generator_1_n0003 : STD_LOGIC; 
  signal PWM_generator_1_Result_5_1 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N16_0 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal PWM_generator_1_Result_4_1 : STD_LOGIC; 
  signal PWM_generator_1_n0041_292 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_1 : STD_LOGIC; 
  signal user_keys_0_IBUF_5 : STD_LOGIC; 
  signal user_keys_3_IBUF_18 : STD_LOGIC; 
  signal user_keys_1_IBUF_12 : STD_LOGIC; 
  signal user_keys_2_IBUF_15 : STD_LOGIC; 
  signal PWM_generator_1_pwm_clock_5_rstpot_39 : STD_LOGIC; 
  signal PWM_generator_1_pwm_clock_1_rstpot_87 : STD_LOGIC; 
  signal PWM_generator_1_pwm_clock_0_rstpot_85 : STD_LOGIC; 
  signal PWM_generator_1_pwm_clock_3_rstpot_68 : STD_LOGIC; 
  signal PWM_generator_1_pwm_clock_2_rstpot_64 : STD_LOGIC; 
  signal PWM_config_duty_1_reset_inv_non_inverted : STD_LOGIC; 
  signal ProtoComp5_IINV_OUT : STD_LOGIC; 
  signal PWM_config_duty_1_duty_inter_6_glue_set_58 : STD_LOGIC; 
  signal PWM_generator_1_counter_5_rstpot_241 : STD_LOGIC; 
  signal PWM_generator_1_counter_6_rstpot_227 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal PWM_generator_1_counter_1_rstpot_210 : STD_LOGIC; 
  signal PWM_generator_1_counter_2_rstpot_202 : STD_LOGIC; 
  signal PWM_generator_1_counter_0_rstpot_185 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal PWM_generator_1_pwm_clock_4_rstpot_108 : STD_LOGIC; 
  signal PWM_generator_1_pwm_clock_4_pack_7 : STD_LOGIC; 
  signal PWM_generator_1_counter_3_rstpot_166 : STD_LOGIC; 
  signal PWM_generator_1_counter_4_rstpot_152 : STD_LOGIC; 
  signal PWM_generator_1_pwm_inter_rstpot_120 : STD_LOGIC; 
  signal NlwBufferSignal_motor_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_PWM_config_freq_1_freq_inter_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_config_freq_1_freq_inter_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_PWM_generator_1_pwm_clock_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_generator_1_pwm_clock_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_generator_1_pwm_clock_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_generator_1_pwm_clock_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_generator_1_pwm_clock_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_config_duty_1_duty_inter_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_generator_1_counter_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_generator_1_counter_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_generator_1_counter_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_generator_1_counter_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_generator_1_counter_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_generator_1_pwm_clock_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_generator_1_counter_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_generator_1_counter_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PWM_generator_1_pwm_inter_CLK : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal PWM_generator_1_Mcount_counter_cy : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal PWM_generator_1_counter : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal PWM_generator_1_pwm_clock : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal PWM_config_freq_1_freq_inter : STD_LOGIC_VECTOR ( 6 downto 6 ); 
  signal PWM_generator_1_Result : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal PWM_config_duty_1_duty_inter : STD_LOGIC_VECTOR ( 6 downto 6 ); 
begin
  motor_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD122"
    )
    port map (
      I => NlwBufferSignal_motor_1_OBUF_I,
      O => motor_1
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 240 ps
    )
    port map (
      O => clk_BUFGP_IBUFG_1,
      I => clk
    );
  ProtoComp3_IMUX : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_1,
      O => clk_BUFGP_IBUFG_0
    );
  user_keys_0_IBUF : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 240 ps
    )
    port map (
      O => user_keys_0_IBUF_5,
      I => user_keys(0)
    );
  ProtoComp3_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 240 ps
    )
    port map (
      I => user_keys_0_IBUF_5,
      O => user_keys_0_IBUF_0
    );
  PWM_config_freq_1_freq_inter_6 : X_SFF
    generic map(
      LOC => "SLICE_X6Y10",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_config_freq_1_freq_inter_6_CLK,
      I => NlwBufferSignal_PWM_config_freq_1_freq_inter_6_IN,
      O => PWM_config_freq_1_freq_inter(6),
      SSET => PWM_config_duty_1_reset_inv,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  user_keys_3_IBUF : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 240 ps
    )
    port map (
      O => user_keys_3_IBUF_18,
      I => user_keys(3)
    );
  ProtoComp3_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD132",
      PATHPULSE => 240 ps
    )
    port map (
      I => user_keys_3_IBUF_18,
      O => user_keys_3_IBUF_0
    );
  user_keys_1_IBUF : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 240 ps
    )
    port map (
      O => user_keys_1_IBUF_12,
      I => user_keys(1)
    );
  ProtoComp3_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD124",
      PATHPULSE => 240 ps
    )
    port map (
      I => user_keys_1_IBUF_12,
      O => user_keys_1_IBUF_0
    );
  user_keys_2_IBUF : X_BUF
    generic map(
      LOC => "PAD131",
      PATHPULSE => 240 ps
    )
    port map (
      O => user_keys_2_IBUF_15,
      I => user_keys(2)
    );
  ProtoComp3_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD131",
      PATHPULSE => 240 ps
    )
    port map (
      I => user_keys_2_IBUF_15,
      O => user_keys_2_IBUF_0
    );
  clk_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 240 ps
    )
    port map (
      I => NlwBufferSignal_clk_BUFGP_BUFG_IN,
      O => clk_BUFGP
    );
  PWM_generator_1_n00031_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y12",
      INIT => X"FFCFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => PWM_config_duty_1_reset_inv,
      ADR3 => PWM_config_freq_1_freq_inter(6),
      ADR2 => PWM_generator_1_pwm_clock(5),
      ADR4 => PWM_generator_1_counter(5),
      ADR5 => PWM_generator_1_counter(6),
      O => N24
    );
  PWM_generator_1_pwm_clock_5 : X_FF
    generic map(
      LOC => "SLICE_X6Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_generator_1_pwm_clock_5_CLK,
      I => PWM_generator_1_pwm_clock_5_rstpot_39,
      O => PWM_generator_1_pwm_clock(5),
      RST => GND,
      SET => GND
    );
  PWM_generator_1_pwm_clock_5_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X6Y12",
      INIT => X"5555111144440000"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => PWM_config_duty_1_reset_inv,
      ADR4 => PWM_generator_1_pwm_clock(5),
      ADR5 => PWM_generator_1_Result_5_1,
      ADR0 => PWM_generator_1_n0039,
      O => PWM_generator_1_pwm_clock_5_rstpot_39
    );
  PWM_generator_1_n00031_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y12",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PWM_generator_1_pwm_clock(1),
      ADR5 => PWM_generator_1_pwm_clock(0),
      O => N6
    );
  PWM_generator_1_n00391 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y12",
      INIT => X"2302030003000300"
    )
    port map (
      ADR1 => PWM_config_duty_1_reset_inv,
      ADR3 => PWM_generator_1_pwm_clock(5),
      ADR2 => PWM_config_freq_1_freq_inter(6),
      ADR0 => PWM_generator_1_pwm_clock(4),
      ADR5 => N22,
      ADR4 => N6,
      O => PWM_generator_1_n0039
    );
  PWM_generator_1_pwm_clock_3 : X_FF
    generic map(
      LOC => "SLICE_X7Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_generator_1_pwm_clock_3_CLK,
      I => PWM_generator_1_pwm_clock_3_rstpot_68,
      O => PWM_generator_1_pwm_clock(3),
      RST => GND,
      SET => GND
    );
  PWM_generator_1_pwm_clock_3_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y11",
      INIT => X"00DF00FF00200000"
    )
    port map (
      ADR3 => PWM_generator_1_n0039,
      ADR1 => PWM_config_duty_1_reset_inv,
      ADR4 => PWM_generator_1_pwm_clock(0),
      ADR5 => PWM_generator_1_pwm_clock(3),
      ADR2 => PWM_generator_1_pwm_clock(1),
      ADR0 => PWM_generator_1_pwm_clock(2),
      O => PWM_generator_1_pwm_clock_3_rstpot_68
    );
  PWM_generator_1_pwm_clock_2 : X_FF
    generic map(
      LOC => "SLICE_X7Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_generator_1_pwm_clock_2_CLK,
      I => PWM_generator_1_pwm_clock_2_rstpot_64,
      O => PWM_generator_1_pwm_clock(2),
      RST => GND,
      SET => GND
    );
  PWM_generator_1_pwm_clock_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y11",
      INIT => X"0000CF300000FF00"
    )
    port map (
      ADR0 => '1',
      ADR4 => PWM_generator_1_n0039,
      ADR1 => PWM_config_duty_1_reset_inv,
      ADR3 => PWM_generator_1_pwm_clock(2),
      ADR2 => PWM_generator_1_pwm_clock(0),
      ADR5 => PWM_generator_1_pwm_clock(1),
      O => PWM_generator_1_pwm_clock_2_rstpot_64
    );
  PWM_generator_1_pwm_clock_1 : X_FF
    generic map(
      LOC => "SLICE_X7Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_generator_1_pwm_clock_1_CLK,
      I => PWM_generator_1_pwm_clock_1_rstpot_87,
      O => PWM_generator_1_pwm_clock(1),
      RST => GND,
      SET => GND
    );
  PWM_generator_1_pwm_clock_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y11",
      INIT => X"F5F50A0AF0F00000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => PWM_config_duty_1_reset_inv,
      ADR4 => PWM_generator_1_pwm_clock(1),
      ADR0 => PWM_generator_1_pwm_clock(0),
      ADR5 => PWM_generator_1_n0003,
      O => PWM_generator_1_pwm_clock_1_rstpot_87
    );
  PWM_generator_1_pwm_clock_0 : X_FF
    generic map(
      LOC => "SLICE_X7Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_generator_1_pwm_clock_0_CLK,
      I => PWM_generator_1_pwm_clock_0_rstpot_85,
      O => PWM_generator_1_pwm_clock(0),
      RST => GND,
      SET => GND
    );
  PWM_generator_1_pwm_clock_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y11",
      INIT => X"AAAA5555AAAA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => PWM_generator_1_pwm_clock(0),
      ADR0 => PWM_config_duty_1_reset_inv,
      ADR5 => PWM_generator_1_n0003,
      O => PWM_generator_1_pwm_clock_0_rstpot_85
    );
  reset_IBUF : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 240 ps
    )
    port map (
      O => PWM_config_duty_1_reset_inv_non_inverted,
      I => reset
    );
  ProtoComp5_IMUX : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 240 ps
    )
    port map (
      I => ProtoComp5_IINV_OUT,
      O => PWM_config_duty_1_reset_inv
    );
  ProtoComp5_IINV : X_INV
    generic map(
      LOC => "PAD121",
      PATHPULSE => 240 ps
    )
    port map (
      I => PWM_config_duty_1_reset_inv_non_inverted,
      O => ProtoComp5_IINV_OUT
    );
  PWM_generator_1_n00031_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y11",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PWM_generator_1_pwm_clock(3),
      ADR5 => PWM_generator_1_pwm_clock(2),
      O => N22
    );
  PWM_config_freq_1_Mram_user_keys_3_PWR_4_o_wide_mux_0_OUT6_PWM_config_freq_1_Mram_user_keys_3_PWR_4_o_wide_mux_0_OUT6_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => PWM_config_duty_1_duty_inter(6),
      O => PWM_config_duty_1_duty_inter_6_0
    );
  PWM_config_freq_1_Mram_user_keys_3_PWR_4_o_wide_mux_0_OUT61 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y2",
      INIT => X"FFCFCFFFFFCFCFFF"
    )
    port map (
      ADR0 => '1',
      ADR4 => user_keys_0_IBUF_0,
      ADR3 => user_keys_1_IBUF_0,
      ADR1 => user_keys_2_IBUF_0,
      ADR2 => user_keys_3_IBUF_0,
      ADR5 => '1',
      O => PWM_config_freq_1_Mram_user_keys_3_PWR_4_o_wide_mux_0_OUT6
    );
  PWM_config_duty_1_duty_inter_6_glue_set : X_LUT5
    generic map(
      LOC => "SLICE_X7Y2",
      INIT => X"AAAABEAA"
    )
    port map (
      ADR0 => PWM_config_duty_1_reset_inv,
      ADR4 => user_keys_0_IBUF_0,
      ADR3 => user_keys_1_IBUF_0,
      ADR1 => user_keys_2_IBUF_0,
      ADR2 => user_keys_3_IBUF_0,
      O => PWM_config_duty_1_duty_inter_6_glue_set_58
    );
  PWM_config_duty_1_duty_inter_6 : X_FF
    generic map(
      LOC => "SLICE_X7Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_config_duty_1_duty_inter_6_CLK,
      I => PWM_config_duty_1_duty_inter_6_glue_set_58,
      O => PWM_config_duty_1_duty_inter(6),
      RST => GND,
      SET => GND
    );
  PWM_generator_1_counter_6_PWM_generator_1_counter_6_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => N16,
      O => N16_0
    );
  PWM_generator_1_counter_4_rstpot_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => X"AA00AA00AA00AA00"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => PWM_generator_1_counter(6),
      ADR0 => PWM_generator_1_counter(5),
      ADR5 => '1',
      O => N10
    );
  PWM_generator_1_counter_2_rstpot_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => X"AA008800"
    )
    port map (
      ADR2 => '1',
      ADR1 => PWM_generator_1_counter(4),
      ADR4 => N8,
      ADR3 => PWM_generator_1_counter(6),
      ADR0 => PWM_generator_1_counter(5),
      O => N16
    );
  PWM_generator_1_n0041_SW0_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => X"FFFFFFFFFCF0FCF0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => PWM_generator_1_counter(3),
      ADR3 => PWM_generator_1_counter(1),
      ADR1 => PWM_generator_1_counter(0),
      ADR2 => PWM_generator_1_counter(2),
      O => N8
    );
  PWM_generator_1_counter_6 : X_FF
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_generator_1_counter_6_CLK,
      I => PWM_generator_1_counter_6_rstpot_227,
      O => PWM_generator_1_counter(6),
      RST => GND,
      SET => GND
    );
  PWM_generator_1_counter_6_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => X"AAAAAAAA5052AAAA"
    )
    port map (
      ADR4 => N12,
      ADR3 => N8,
      ADR2 => PWM_generator_1_Mcount_counter_cy(4),
      ADR0 => PWM_generator_1_counter(6),
      ADR1 => PWM_generator_1_counter(4),
      ADR5 => PWM_generator_1_n0003,
      O => PWM_generator_1_counter_6_rstpot_227
    );
  PWM_generator_1_counter_5 : X_FF
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_generator_1_counter_5_CLK,
      I => PWM_generator_1_counter_5_rstpot_241,
      O => PWM_generator_1_counter(5),
      RST => GND,
      SET => GND
    );
  PWM_generator_1_counter_5_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => X"FF00FF00F00FF700"
    )
    port map (
      ADR4 => PWM_generator_1_Mcount_counter_cy(4),
      ADR0 => N14_0,
      ADR1 => PWM_generator_1_counter(6),
      ADR3 => PWM_generator_1_counter(5),
      ADR2 => PWM_config_duty_1_reset_inv,
      ADR5 => PWM_generator_1_n0003,
      O => PWM_generator_1_counter_5_rstpot_241
    );
  PWM_generator_1_counter_2_PWM_generator_1_counter_2_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => N14,
      O => N14_0
    );
  PWM_generator_1_Mcount_counter_cy_4_11 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y12",
      INIT => X"8000000080000000"
    )
    port map (
      ADR2 => PWM_generator_1_counter(3),
      ADR1 => PWM_generator_1_counter(2),
      ADR3 => PWM_generator_1_counter(1),
      ADR0 => PWM_generator_1_counter(0),
      ADR4 => PWM_generator_1_counter(4),
      ADR5 => '1',
      O => PWM_generator_1_Mcount_counter_cy(4)
    );
  PWM_generator_1_counter_5_rstpot_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y12",
      INIT => X"FFFFFEFC"
    )
    port map (
      ADR2 => PWM_generator_1_counter(3),
      ADR1 => PWM_generator_1_counter(2),
      ADR3 => PWM_generator_1_counter(1),
      ADR0 => PWM_generator_1_counter(0),
      ADR4 => PWM_generator_1_counter(4),
      O => N14
    );
  PWM_generator_1_counter_2 : X_FF
    generic map(
      LOC => "SLICE_X10Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_generator_1_counter_2_CLK,
      I => PWM_generator_1_counter_2_rstpot_202,
      O => PWM_generator_1_counter(2),
      RST => GND,
      SET => GND
    );
  PWM_generator_1_counter_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X10Y12",
      INIT => X"FF00AA00FF00BF40"
    )
    port map (
      ADR0 => PWM_config_duty_1_reset_inv,
      ADR1 => PWM_generator_1_counter(1),
      ADR2 => PWM_generator_1_counter(0),
      ADR3 => PWM_generator_1_counter(2),
      ADR5 => N16_0,
      ADR4 => PWM_generator_1_n0003,
      O => PWM_generator_1_counter_2_rstpot_202
    );
  PWM_generator_1_counter_1 : X_FF
    generic map(
      LOC => "SLICE_X10Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_generator_1_counter_1_CLK,
      I => PWM_generator_1_counter_1_rstpot_210,
      O => PWM_generator_1_counter(1),
      RST => GND,
      SET => GND
    );
  PWM_generator_1_counter_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X10Y12",
      INIT => X"FFFF0000FF13004C"
    )
    port map (
      ADR1 => PWM_generator_1_counter(0),
      ADR2 => N18,
      ADR0 => PWM_generator_1_counter(6),
      ADR4 => PWM_generator_1_counter(1),
      ADR3 => PWM_config_duty_1_reset_inv,
      ADR5 => PWM_generator_1_n0003,
      O => PWM_generator_1_counter_1_rstpot_210
    );
  PWM_generator_1_counter_0 : X_FF
    generic map(
      LOC => "SLICE_X10Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_generator_1_counter_0_CLK,
      I => PWM_generator_1_counter_0_rstpot_185,
      O => PWM_generator_1_counter(0),
      RST => GND,
      SET => GND
    );
  PWM_generator_1_counter_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X10Y12",
      INIT => X"CCCCCCCC88899999"
    )
    port map (
      ADR0 => PWM_config_duty_1_reset_inv,
      ADR2 => PWM_generator_1_counter(4),
      ADR4 => N10,
      ADR1 => PWM_generator_1_counter(0),
      ADR3 => N8,
      ADR5 => PWM_generator_1_n0003,
      O => PWM_generator_1_counter_0_rstpot_185
    );
  N25_N25_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => N25,
      O => N25_0
    );
  PWM_generator_1_n00031_SW3 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y11"
    )
    port map (
      IA => N27,
      IB => N28,
      O => N25,
      SEL => PWM_generator_1_pwm_clock(5)
    );
  PWM_generator_1_n00031_SW3_F : X_LUT6
    generic map(
      LOC => "SLICE_X8Y11",
      INIT => X"0000000020000000"
    )
    port map (
      ADR1 => PWM_config_duty_1_reset_inv,
      ADR5 => PWM_config_freq_1_freq_inter(6),
      ADR4 => PWM_generator_1_pwm_clock(3),
      ADR2 => PWM_generator_1_pwm_clock(2),
      ADR3 => PWM_generator_1_counter(5),
      ADR0 => PWM_generator_1_counter(6),
      O => N27
    );
  PWM_generator_1_n00031_SW3_G : X_LUT6
    generic map(
      LOC => "SLICE_X8Y11",
      INIT => X"2000000020202020"
    )
    port map (
      ADR1 => PWM_config_duty_1_reset_inv,
      ADR5 => PWM_config_freq_1_freq_inter(6),
      ADR3 => PWM_generator_1_pwm_clock(3),
      ADR4 => PWM_generator_1_pwm_clock(2),
      ADR2 => PWM_generator_1_counter(6),
      ADR0 => PWM_generator_1_counter(5),
      O => N28
    );
  PWM_generator_1_Result_4_1_PWM_generator_1_Result_4_1_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => PWM_generator_1_pwm_clock_4_pack_7,
      O => PWM_generator_1_pwm_clock(4)
    );
  PWM_generator_1_Mcount_pwm_clock_xor_4_11 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y12",
      INIT => X"6AAAAAAA6AAAAAAA"
    )
    port map (
      ADR5 => '1',
      ADR0 => PWM_generator_1_pwm_clock(4),
      ADR2 => PWM_generator_1_pwm_clock(0),
      ADR3 => PWM_generator_1_pwm_clock(1),
      ADR1 => PWM_generator_1_pwm_clock(2),
      ADR4 => PWM_generator_1_pwm_clock(3),
      O => PWM_generator_1_Result_4_1
    );
  PWM_generator_1_Mcount_pwm_clock_xor_5_11 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y12",
      INIT => X"7F80FF00FF00FF00"
    )
    port map (
      ADR3 => PWM_generator_1_pwm_clock(5),
      ADR0 => PWM_generator_1_pwm_clock(0),
      ADR4 => PWM_generator_1_pwm_clock(1),
      ADR5 => PWM_generator_1_pwm_clock(2),
      ADR1 => PWM_generator_1_pwm_clock(3),
      ADR2 => PWM_generator_1_pwm_clock(4),
      O => PWM_generator_1_Result_5_1
    );
  PWM_generator_1_counter_6_rstpot_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y12",
      INIT => X"5050505050505050"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => PWM_generator_1_counter(5),
      ADR0 => PWM_config_duty_1_reset_inv,
      ADR5 => '1',
      O => N12
    );
  PWM_generator_1_pwm_clock_4_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X7Y12",
      INIT => X"0000DD88"
    )
    port map (
      ADR1 => PWM_generator_1_pwm_clock(4),
      ADR3 => PWM_generator_1_Result_4_1,
      ADR4 => PWM_generator_1_n0039,
      ADR2 => '1',
      ADR0 => PWM_config_duty_1_reset_inv,
      O => PWM_generator_1_pwm_clock_4_rstpot_108
    );
  PWM_generator_1_pwm_clock_4 : X_FF
    generic map(
      LOC => "SLICE_X7Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_generator_1_pwm_clock_4_CLK,
      I => PWM_generator_1_pwm_clock_4_rstpot_108,
      O => PWM_generator_1_pwm_clock_4_pack_7,
      RST => GND,
      SET => GND
    );
  PWM_generator_1_n00031 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y12",
      INIT => X"7FFF1333FFFF3333"
    )
    port map (
      ADR4 => PWM_config_freq_1_freq_inter(6),
      ADR2 => PWM_generator_1_pwm_clock(3),
      ADR1 => PWM_generator_1_pwm_clock(5),
      ADR0 => PWM_generator_1_pwm_clock(2),
      ADR3 => PWM_generator_1_pwm_clock(4),
      ADR5 => N6,
      O => PWM_generator_1_n0003
    );
  PWM_generator_1_counter_4 : X_FF
    generic map(
      LOC => "SLICE_X8Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_generator_1_counter_4_CLK,
      I => PWM_generator_1_counter_4_rstpot_152,
      O => PWM_generator_1_counter(4),
      RST => GND,
      SET => GND
    );
  PWM_generator_1_counter_4_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X8Y12",
      INIT => X"FF00FF00AF15AA00"
    )
    port map (
      ADR0 => PWM_config_duty_1_reset_inv,
      ADR2 => N10,
      ADR1 => N8,
      ADR3 => PWM_generator_1_counter(4),
      ADR4 => PWM_generator_1_Result(4),
      ADR5 => PWM_generator_1_n0003,
      O => PWM_generator_1_counter_4_rstpot_152
    );
  PWM_generator_1_counter_3 : X_FF
    generic map(
      LOC => "SLICE_X8Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_generator_1_counter_3_CLK,
      I => PWM_generator_1_counter_3_rstpot_166,
      O => PWM_generator_1_counter(3),
      RST => GND,
      SET => GND
    );
  PWM_generator_1_counter_3_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X8Y12",
      INIT => X"000000006AAAAAAA"
    )
    port map (
      ADR2 => PWM_generator_1_counter(2),
      ADR1 => PWM_generator_1_counter(1),
      ADR3 => PWM_generator_1_counter(0),
      ADR0 => PWM_generator_1_counter(3),
      ADR4 => PWM_generator_1_n0039,
      ADR5 => PWM_generator_1_n0041_292,
      O => PWM_generator_1_counter_3_rstpot_166
    );
  PWM_generator_1_n0041 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y12",
      INIT => X"AF8C0F0C05040F0C"
    )
    port map (
      ADR0 => PWM_generator_1_pwm_clock(4),
      ADR1 => PWM_generator_1_counter(4),
      ADR4 => N6,
      ADR2 => N24,
      ADR3 => N8,
      ADR5 => N25_0,
      O => PWM_generator_1_n0041_292
    );
  PWM_generator_1_pwm_inter : X_SFF
    generic map(
      LOC => "SLICE_X8Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PWM_generator_1_pwm_inter_CLK,
      I => PWM_generator_1_pwm_inter_rstpot_120,
      O => PWM_generator_1_pwm_inter_272,
      SRST => PWM_config_duty_1_reset_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  PWM_generator_1_pwm_inter_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X8Y7",
      INIT => X"F0F0F0F03300FF33"
    )
    port map (
      ADR0 => '1',
      ADR3 => PWM_config_duty_1_duty_inter_6_0,
      ADR1 => PWM_generator_1_counter(5),
      ADR2 => PWM_generator_1_pwm_inter_272,
      ADR4 => PWM_generator_1_counter(6),
      ADR5 => PWM_generator_1_n0003,
      O => PWM_generator_1_pwm_inter_rstpot_120
    );
  PWM_generator_1_Mcount_counter_xor_4_11 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y12",
      INIT => X"3FC0FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR3 => PWM_generator_1_counter(4),
      ADR2 => PWM_generator_1_counter(0),
      ADR5 => PWM_generator_1_counter(1),
      ADR1 => PWM_generator_1_counter(2),
      ADR4 => PWM_generator_1_counter(3),
      O => PWM_generator_1_Result(4)
    );
  PWM_generator_1_counter_1_rstpot_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y12",
      INIT => X"AAAAAAA8AAAAAA88"
    )
    port map (
      ADR3 => PWM_generator_1_counter(3),
      ADR4 => PWM_generator_1_counter(2),
      ADR5 => PWM_generator_1_counter(1),
      ADR1 => PWM_generator_1_counter(4),
      ADR2 => PWM_generator_1_counter(0),
      ADR0 => PWM_generator_1_counter(5),
      O => N18
    );
  NlwBufferBlock_motor_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => PWM_generator_1_pwm_inter_272,
      O => NlwBufferSignal_motor_1_OBUF_I
    );
  NlwBufferBlock_PWM_config_freq_1_freq_inter_6_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_config_freq_1_freq_inter_6_CLK
    );
  NlwBufferBlock_PWM_config_freq_1_freq_inter_6_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => PWM_config_freq_1_Mram_user_keys_3_PWR_4_o_wide_mux_0_OUT6,
      O => NlwBufferSignal_PWM_config_freq_1_freq_inter_6_IN
    );
  NlwBufferBlock_clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_0,
      O => NlwBufferSignal_clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_PWM_generator_1_pwm_clock_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_generator_1_pwm_clock_5_CLK
    );
  NlwBufferBlock_PWM_generator_1_pwm_clock_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_generator_1_pwm_clock_3_CLK
    );
  NlwBufferBlock_PWM_generator_1_pwm_clock_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_generator_1_pwm_clock_2_CLK
    );
  NlwBufferBlock_PWM_generator_1_pwm_clock_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_generator_1_pwm_clock_1_CLK
    );
  NlwBufferBlock_PWM_generator_1_pwm_clock_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_generator_1_pwm_clock_0_CLK
    );
  NlwBufferBlock_PWM_config_duty_1_duty_inter_6_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_config_duty_1_duty_inter_6_CLK
    );
  NlwBufferBlock_PWM_generator_1_counter_6_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_generator_1_counter_6_CLK
    );
  NlwBufferBlock_PWM_generator_1_counter_5_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_generator_1_counter_5_CLK
    );
  NlwBufferBlock_PWM_generator_1_counter_2_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_generator_1_counter_2_CLK
    );
  NlwBufferBlock_PWM_generator_1_counter_1_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_generator_1_counter_1_CLK
    );
  NlwBufferBlock_PWM_generator_1_counter_0_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_generator_1_counter_0_CLK
    );
  NlwBufferBlock_PWM_generator_1_pwm_clock_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_generator_1_pwm_clock_4_CLK
    );
  NlwBufferBlock_PWM_generator_1_counter_4_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_generator_1_counter_4_CLK
    );
  NlwBufferBlock_PWM_generator_1_counter_3_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_generator_1_counter_3_CLK
    );
  NlwBufferBlock_PWM_generator_1_pwm_inter_CLK : X_BUF
    generic map(
      PATHPULSE => 240 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_PWM_generator_1_pwm_inter_CLK
    );
  NlwBlock_CMD_motors_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_CMD_motors_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

