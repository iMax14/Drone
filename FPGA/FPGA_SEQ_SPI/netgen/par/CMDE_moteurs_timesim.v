////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: CMDE_moteurs_timesim.v
// /___/   /\     Timestamp: Fri Jan 24 09:20:19 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 4 -pcf CMDE_moteurs.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim CMDE_moteurs.ncd CMDE_moteurs_timesim.v 
// Device	: 3s200ft256-4 (PRODUCTION 1.39 2013-10-13)
// Input file	: CMDE_moteurs.ncd
// Output file	: D:\test_en_bas\netgen\par\CMDE_moteurs_timesim.v
// # of Modules	: 1
// Design Name	: CMDE_moteurs
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

module CMDE_moteurs (
  th2_R, clk, Test_PWM_L, Test_PWM_R, th3_L, th3_R, reset, tl1_L, tl1_R, tl2_L, tl2_R, simo, ssel, tl3_L, tl3_R, simo_out, sclk, th1_L, th1_R, th2_L, 
test_data, H3H2H1_L, H3H2H1_R
);
  output th2_R;
  input clk;
  output Test_PWM_L;
  output Test_PWM_R;
  output th3_L;
  output th3_R;
  input reset;
  output tl1_L;
  output tl1_R;
  output tl2_L;
  output tl2_R;
  input simo;
  input ssel;
  output tl3_L;
  output tl3_R;
  output simo_out;
  input sclk;
  output th1_L;
  output th1_R;
  output th2_L;
  output [15 : 0] test_data;
  input [2 : 0] H3H2H1_L;
  input [2 : 0] H3H2H1_R;
  wire \traitement_spi/sigpwm_dc_L_0_cmp_eq0000_0 ;
  wire clk_BUFGP;
  wire \traitement_spi/sigstart_L_1441 ;
  wire \traitement_spi/sigstart_R_1443 ;
  wire \traitement_spi/sigpwm_dc_R_0_cmp_eq0000_0 ;
  wire \blocspi_slave/N3 ;
  wire H3H2H1_L_0_IBUF_1474;
  wire \traitement_spi/sigdir_L_1475 ;
  wire H3H2H1_L_2_IBUF_1476;
  wire \mux_sdhall_L/N9 ;
  wire H3H2H1_L_1_IBUF_1478;
  wire \blocspi_slave/N2 ;
  wire \pwm_gene_L/clock_and0000_0 ;
  wire \pwm_gene_L/counter_and0000_0 ;
  wire reset_IBUF1;
  wire \pwm_gene_R/clock_and0000_0 ;
  wire H3H2H1_R_2_IBUF_1493;
  wire H3H2H1_R_1_IBUF_1494;
  wire \traitement_spi/sigdir_R_1495 ;
  wire \mux_sdhall_R/N9 ;
  wire H3H2H1_R_0_IBUF_1497;
  wire \blocspi_slave/N4 ;
  wire \pwm_gene_L/out_pwm_cmp_ge0000 ;
  wire N8_0;
  wire \mux_sdhall_R/N10 ;
  wire \pwm_gene_L/Result<3>_bdd0 ;
  wire \stab/simo2_1526 ;
  wire \pwm_gene_R/out_pwm_cmp_ge0000 ;
  wire N6_0;
  wire \pwm_gene_R/counter_and0000_0 ;
  wire N2;
  wire \rising_edg2/flipflop_ris/output_1552 ;
  wire \mux_freq_0/end_freq[1] ;
  wire \mux_freq_0/end_freq[2] ;
  wire \mux_freq_0/end_freq[4] ;
  wire \mux_sdhall_L/N10 ;
  wire \mux_freq_0/end_freq[0] ;
  wire \pwm_gene_L/clock_sub0000<3>_bdd0_0 ;
  wire \pwm_gene_R/N4 ;
  wire \stab/sclk2_1568 ;
  wire \rising_edg2/flipflop_sys/Q_1569 ;
  wire \pwm_gene_L/out_pwm_1577 ;
  wire N01;
  wire \stab/ssel2_1592 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ;
  wire \blocspi_slave/data_inter_not0001_0 ;
  wire \pwm_gene_R/Result<3>_bdd0 ;
  wire \traitement_spi/N01 ;
  wire \blocspi_slave/Data_0_not00011_wg_cy[7] ;
  wire N4;
  wire \pwm_gene_L/N4 ;
  wire \pwm_gene_R/out_pwm_1608 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[7] ;
  wire simo_out_OBUF_1678;
  wire reset_IBUF_1680;
  wire \pwm_gene_R/counter_and00003/O ;
  wire \pwm_gene_L/counter_and00003/O ;
  wire \traitement_spi/sigpwm_dc_L<6>/DYMUX_1691 ;
  wire \traitement_spi/sigpwm_dc_L<6>/CLKINV_1689 ;
  wire \traitement_spi/sigpwm_dc_L<6>/CEINV_1688 ;
  wire \traitement_spi/sigstart_L/DYMUX_1703 ;
  wire \traitement_spi/sigstart_L/CLKINV_1701 ;
  wire \traitement_spi/sigstart_L/CEINV_1700 ;
  wire \traitement_spi/sigstart_R/DYMUX_1715 ;
  wire \traitement_spi/sigstart_R/CLKINV_1713 ;
  wire \traitement_spi/sigstart_R/CEINV_1712 ;
  wire \traitement_spi/sigpwm_dc_R<1>/DXMUX_1735 ;
  wire \traitement_spi/sigpwm_dc_R<1>/DYMUX_1729 ;
  wire \traitement_spi/sigpwm_dc_R<1>/CLKINV_1727 ;
  wire \traitement_spi/sigpwm_dc_R<1>/CEINV_1726 ;
  wire \traitement_spi/sigpwm_dc_R<3>/DXMUX_1755 ;
  wire \traitement_spi/sigpwm_dc_R<3>/DYMUX_1749 ;
  wire \traitement_spi/sigpwm_dc_R<3>/CLKINV_1747 ;
  wire \traitement_spi/sigpwm_dc_R<3>/CEINV_1746 ;
  wire \traitement_spi/sigpwm_dc_R<5>/DXMUX_1775 ;
  wire \traitement_spi/sigpwm_dc_R<5>/DYMUX_1769 ;
  wire \traitement_spi/sigpwm_dc_R<5>/CLKINV_1767 ;
  wire \traitement_spi/sigpwm_dc_R<5>/CEINV_1766 ;
  wire \traitement_spi/sigpwm_dc_R<6>/DYMUX_1787 ;
  wire \traitement_spi/sigpwm_dc_R<6>/CLKINV_1785 ;
  wire \traitement_spi/sigpwm_dc_R<6>/CEINV_1784 ;
  wire \blocspi_slave/test_data<11>/DXMUX_1804 ;
  wire \blocspi_slave/test_data<11>/DYMUX_1799 ;
  wire \blocspi_slave/test_data<11>/CLKINV_1797 ;
  wire \blocspi_slave/test_data<13>/DXMUX_1820 ;
  wire \blocspi_slave/test_data<13>/DYMUX_1815 ;
  wire \blocspi_slave/test_data<13>/CLKINV_1813 ;
  wire \blocspi_slave/test_data<15>/DXMUX_1836 ;
  wire \blocspi_slave/test_data<15>/DYMUX_1831 ;
  wire \blocspi_slave/test_data<15>/CLKINV_1829 ;
  wire \blocspi_slave/Data_13_not0001 ;
  wire \blocspi_slave/Data_1_not0001 ;
  wire \mux_sdhall_L/result_1_mux0001 ;
  wire \mux_sdhall_L/result_3_mux0001 ;
  wire \blocspi_slave/Data_0_not0001 ;
  wire \blocspi_slave/Data_2_not0001 ;
  wire \pwm_gene_L/counter<0>/DXMUX_1939 ;
  wire \pwm_gene_L/counter<0>/DYMUX_1932 ;
  wire \pwm_gene_L/Result<1>1 ;
  wire \pwm_gene_L/counter<0>/SRINV_1922 ;
  wire \pwm_gene_L/counter<0>/CLKINV_1921 ;
  wire \pwm_gene_L/counter<0>/CEINV_1920 ;
  wire \pwm_gene_R/clock<0>/DXMUX_1972 ;
  wire \pwm_gene_R/clock<0>/DYMUX_1965 ;
  wire \pwm_gene_R/clock<0>/SRINV_1955 ;
  wire \pwm_gene_R/clock<0>/CLKINV_1954 ;
  wire \pwm_gene_R/clock<0>/CEINVNOT ;
  wire \mux_sdhall_R/result_3_mux0001 ;
  wire \mux_sdhall_R/result_1_mux0001 ;
  wire \blocspi_slave/Data_11_not0001 ;
  wire \blocspi_slave/Data_3_not0001 ;
  wire \pwm_gene_L/clock_and0000 ;
  wire \pwm_gene_L/counter_and0000 ;
  wire \mux_sdhall_R/Switchs[2] ;
  wire \mux_sdhall_R/Switchs[0] ;
  wire \blocspi_slave/Data_12_not0001 ;
  wire \blocspi_slave/Data_10_not0001 ;
  wire \blocspi_slave/Data_14_not0001 ;
  wire \blocspi_slave/Data_4_not0001 ;
  wire \pwm_gene_L/clock<4>/DXMUX_2152 ;
  wire \pwm_gene_L/Result<3>_bdd0_pack_2 ;
  wire \pwm_gene_L/clock<4>/SRINV_2135 ;
  wire \pwm_gene_L/clock<4>/CLKINV_2134 ;
  wire \pwm_gene_L/clock<4>/CEINVNOT ;
  wire \traitement_spi/sigdir_L_cmp_eq0000 ;
  wire \traitement_spi/sigstart_L_cmp_eq0000 ;
  wire \blocspi_slave/Data_6_not0001 ;
  wire \blocspi_slave/Data_5_not0001 ;
  wire \traitement_spi/sigdir_R_cmp_eq0000 ;
  wire \traitement_spi/sigpwm_dc_R_0_cmp_eq0000 ;
  wire \blocspi_slave/Data<0>/DYMUX_2237 ;
  wire \blocspi_slave/Data<0>/CLKINV_2235 ;
  wire \blocspi_slave/Data<0>/CEINV_2234 ;
  wire \blocspi_slave/Data<1>/DYMUX_2249 ;
  wire \blocspi_slave/Data<1>/CLKINV_2247 ;
  wire \blocspi_slave/Data<1>/CEINV_2246 ;
  wire \blocspi_slave/Data<2>/DYMUX_2261 ;
  wire \blocspi_slave/Data<2>/CLKINV_2259 ;
  wire \blocspi_slave/Data<2>/CEINV_2258 ;
  wire \blocspi_slave/Data<3>/DYMUX_2273 ;
  wire \blocspi_slave/Data<3>/CLKINV_2271 ;
  wire \blocspi_slave/Data<3>/CEINV_2270 ;
  wire \blocspi_slave/Data<4>/DYMUX_2285 ;
  wire \blocspi_slave/Data<4>/CLKINV_2283 ;
  wire \blocspi_slave/Data<4>/CEINV_2282 ;
  wire \blocspi_slave/Data<5>/DYMUX_2297 ;
  wire \blocspi_slave/Data<5>/CLKINV_2295 ;
  wire \blocspi_slave/Data<5>/CEINV_2294 ;
  wire \blocspi_slave/Data<6>/DYMUX_2309 ;
  wire \blocspi_slave/Data<6>/CLKINV_2307 ;
  wire \blocspi_slave/Data<6>/CEINV_2306 ;
  wire \blocspi_slave/Data<7>/DYMUX_2321 ;
  wire \blocspi_slave/Data<7>/CLKINV_2319 ;
  wire \blocspi_slave/Data<7>/CEINV_2318 ;
  wire \blocspi_slave/Data<8>/DYMUX_2333 ;
  wire \blocspi_slave/Data<8>/CLKINV_2331 ;
  wire \blocspi_slave/Data<8>/CEINV_2330 ;
  wire \blocspi_slave/Data<9>/DYMUX_2345 ;
  wire \blocspi_slave/Data<9>/CLKINV_2343 ;
  wire \blocspi_slave/Data<9>/CEINV_2342 ;
  wire \pwm_gene_R/clock_and0000 ;
  wire \pwm_gene_R/counter_and0000 ;
  wire \pwm_gene_L/counter<6>/DXMUX_2404 ;
  wire N2_pack_2;
  wire \pwm_gene_L/counter<6>/SRINV_2389 ;
  wire \pwm_gene_L/counter<6>/CLKINV_2388 ;
  wire \pwm_gene_L/counter<6>/CEINV_2387 ;
  wire \mux_sdhall_R/Switchs[4] ;
  wire \mux_sdhall_R/N10_pack_1 ;
  wire \rising_edg2/flipflop_ris/output/DYMUX_2441 ;
  wire \rising_edg2/flipflop_ris/output/BYINV_2440 ;
  wire \rising_edg2/flipflop_ris/output/SRINV_2439 ;
  wire \rising_edg2/flipflop_ris/output/CLKINV_2438 ;
  wire \mux_freq_0/end_freq<1>/DXMUX_2456 ;
  wire \mux_freq_0/end_freq<1>/REVUSED_2454 ;
  wire \mux_freq_0/end_freq<1>/SRINV_2452 ;
  wire \mux_freq_0/end_freq<1>/CLKINV_2451 ;
  wire \mux_freq_0/end_freq<2>/DXMUX_2486 ;
  wire \mux_freq_0/end_freq<2>/DYMUX_2480 ;
  wire \mux_freq_0/Mrom_end_freq_mux00023 ;
  wire \mux_freq_0/end_freq<2>/SRINV_2470 ;
  wire \mux_freq_0/end_freq<2>/CLKINV_2469 ;
  wire \mux_sdhall_L/Switchs[4] ;
  wire \mux_sdhall_L/N10_pack_1 ;
  wire \traitement_spi/sigstart_R_cmp_eq0000 ;
  wire \traitement_spi/sigpwm_dc_L_0_cmp_eq0000 ;
  wire \traitement_spi/sigdir_L/DYMUX_2546 ;
  wire \traitement_spi/sigdir_L/CLKINV_2544 ;
  wire \traitement_spi/sigdir_L/CEINV_2543 ;
  wire \traitement_spi/sigdir_R/DYMUX_2558 ;
  wire \traitement_spi/sigdir_R/CLKINV_2556 ;
  wire \traitement_spi/sigdir_R/CEINV_2555 ;
  wire \pwm_gene_L/clock_sub0000<3>_bdd0 ;
  wire \pwm_gene_R/counter<4>/DXMUX_2605 ;
  wire \pwm_gene_R/Result<4>1_2602 ;
  wire \pwm_gene_R/N4_pack_2 ;
  wire \pwm_gene_R/counter<4>/SRINV_2588 ;
  wire \pwm_gene_R/counter<4>/CLKINV_2587 ;
  wire \pwm_gene_R/counter<4>/CEINV_2586 ;
  wire \rising_edg2/flipflop_ris/output_and0000_inv ;
  wire \blocspi_slave/Data<10>/DYMUX_2630 ;
  wire \blocspi_slave/Data<10>/CLKINV_2628 ;
  wire \blocspi_slave/Data<10>/CEINV_2627 ;
  wire \blocspi_slave/Data<11>/DYMUX_2642 ;
  wire \blocspi_slave/Data<11>/CLKINV_2640 ;
  wire \blocspi_slave/Data<11>/CEINV_2639 ;
  wire \blocspi_slave/Data<12>/DYMUX_2654 ;
  wire \blocspi_slave/Data<12>/CLKINV_2652 ;
  wire \blocspi_slave/Data<12>/CEINV_2651 ;
  wire \blocspi_slave/Data<13>/DYMUX_2666 ;
  wire \blocspi_slave/Data<13>/CLKINV_2664 ;
  wire \blocspi_slave/Data<13>/CEINV_2663 ;
  wire \blocspi_slave/Data<14>/DYMUX_2678 ;
  wire \blocspi_slave/Data<14>/CLKINV_2676 ;
  wire \blocspi_slave/Data<14>/CEINV_2675 ;
  wire \blocspi_slave/Data<15>/DYMUX_2690 ;
  wire \blocspi_slave/Data<15>/CLKINV_2688 ;
  wire \blocspi_slave/Data<15>/CEINV_2687 ;
  wire \mux_sdhall_L/result_5_mux0001 ;
  wire \mux_sdhall_L/N9_pack_1 ;
  wire \blocspi_slave/test_data<1>/DXMUX_2731 ;
  wire \blocspi_slave/test_data<1>/DYMUX_2726 ;
  wire \blocspi_slave/test_data<1>/CLKINV_2724 ;
  wire \blocspi_slave/test_data<3>/DXMUX_2747 ;
  wire \blocspi_slave/test_data<3>/DYMUX_2742 ;
  wire \blocspi_slave/test_data<3>/CLKINV_2740 ;
  wire \blocspi_slave/test_data<5>/DXMUX_2763 ;
  wire \blocspi_slave/test_data<5>/DYMUX_2758 ;
  wire \blocspi_slave/test_data<5>/CLKINV_2756 ;
  wire \blocspi_slave/test_data<7>/DXMUX_2779 ;
  wire \blocspi_slave/test_data<7>/DYMUX_2774 ;
  wire \blocspi_slave/test_data<7>/CLKINV_2772 ;
  wire \blocspi_slave/test_data<9>/DXMUX_2795 ;
  wire \blocspi_slave/test_data<9>/DYMUX_2790 ;
  wire \blocspi_slave/test_data<9>/CLKINV_2788 ;
  wire \pwm_gene_R/counter<6>/DXMUX_2829 ;
  wire N01_pack_2;
  wire \pwm_gene_R/counter<6>/SRINV_2814 ;
  wire \pwm_gene_R/counter<6>/CLKINV_2813 ;
  wire \pwm_gene_R/counter<6>/CEINV_2812 ;
  wire \blocspi_slave/i<31>/DXMUX_2868 ;
  wire \blocspi_slave/i<31>/XORF_2866 ;
  wire \blocspi_slave/i<31>/CYINIT_2865 ;
  wire \blocspi_slave/data_inter_not0001 ;
  wire \blocspi_slave/i<31>/SRINV_2848 ;
  wire \blocspi_slave/i<31>/CLKINV_2847 ;
  wire \blocspi_slave/i<31>/CEINV_2846 ;
  wire \pwm_gene_R/clock<4>/DXMUX_2904 ;
  wire \pwm_gene_R/Result<3>_bdd0_pack_2 ;
  wire \pwm_gene_R/clock<4>/SRINV_2887 ;
  wire \pwm_gene_R/clock<4>/CLKINV_2886 ;
  wire \pwm_gene_R/clock<4>/CEINVNOT ;
  wire \traitement_spi/sigfreq_recue<1>/DXMUX_2936 ;
  wire \traitement_spi/sigfreq_recue_1_mux0000 ;
  wire \traitement_spi/N01_pack_2 ;
  wire \traitement_spi/sigfreq_recue<1>/CLKINV_2919 ;
  wire \blocspi_slave/data_inter<11>/DXMUX_2955 ;
  wire \blocspi_slave/data_inter<11>/DYMUX_2949 ;
  wire \blocspi_slave/data_inter<11>/CLKINV_2947 ;
  wire \blocspi_slave/data_inter<11>/CEINV_2946 ;
  wire \blocspi_slave/data_inter<13>/DXMUX_2975 ;
  wire \blocspi_slave/data_inter<13>/DYMUX_2969 ;
  wire \blocspi_slave/data_inter<13>/CLKINV_2967 ;
  wire \blocspi_slave/data_inter<13>/CEINV_2966 ;
  wire \blocspi_slave/data_inter<15>/DXMUX_2995 ;
  wire \blocspi_slave/data_inter<15>/DYMUX_2989 ;
  wire \blocspi_slave/data_inter<15>/CLKINV_2987 ;
  wire \blocspi_slave/data_inter<15>/CEINV_2986 ;
  wire \mux_sdhall_L/Switchs[2] ;
  wire \mux_sdhall_L/Switchs[0] ;
  wire \pwm_gene_R/counter<0>/DXMUX_3051 ;
  wire \pwm_gene_R/counter<0>/DYMUX_3044 ;
  wire \pwm_gene_R/Result<1>1 ;
  wire \pwm_gene_R/counter<0>/SRINV_3034 ;
  wire \pwm_gene_R/counter<0>/CLKINV_3033 ;
  wire \pwm_gene_R/counter<0>/CEINV_3032 ;
  wire \blocspi_slave/Data_15_not0001_3078 ;
  wire N4_pack_1;
  wire \rising_edg2/flipflop_sys/Q/DYMUX_3086 ;
  wire \rising_edg2/flipflop_sys/Q/CLKINV_3084 ;
  wire \pwm_gene_L/counter<4>/DXMUX_3120 ;
  wire \pwm_gene_L/Result<4>1_3117 ;
  wire \pwm_gene_L/N4_pack_2 ;
  wire \pwm_gene_L/counter<4>/SRINV_3103 ;
  wire \pwm_gene_L/counter<4>/CLKINV_3102 ;
  wire \pwm_gene_L/counter<4>/CEINV_3101 ;
  wire \pwm_gene_L/clock<0>/DXMUX_3153 ;
  wire \pwm_gene_L/clock<0>/DYMUX_3146 ;
  wire \pwm_gene_L/clock<0>/SRINV_3136 ;
  wire \pwm_gene_L/clock<0>/CLKINV_3135 ;
  wire \pwm_gene_L/clock<0>/CEINVNOT ;
  wire \blocspi_slave/data_inter<1>/DXMUX_3174 ;
  wire \blocspi_slave/data_inter<1>/DYMUX_3168 ;
  wire \blocspi_slave/data_inter<1>/CLKINV_3166 ;
  wire \blocspi_slave/data_inter<1>/CEINV_3165 ;
  wire \blocspi_slave/data_inter<3>/DXMUX_3194 ;
  wire \blocspi_slave/data_inter<3>/DYMUX_3188 ;
  wire \blocspi_slave/data_inter<3>/CLKINV_3186 ;
  wire \blocspi_slave/data_inter<3>/CEINV_3185 ;
  wire \blocspi_slave/data_inter<5>/DXMUX_3214 ;
  wire \blocspi_slave/data_inter<5>/DYMUX_3208 ;
  wire \blocspi_slave/data_inter<5>/CLKINV_3206 ;
  wire \blocspi_slave/data_inter<5>/CEINV_3205 ;
  wire \blocspi_slave/data_inter<7>/DXMUX_3234 ;
  wire \blocspi_slave/data_inter<7>/DYMUX_3228 ;
  wire \blocspi_slave/data_inter<7>/CLKINV_3226 ;
  wire \blocspi_slave/data_inter<7>/CEINV_3225 ;
  wire \blocspi_slave/data_inter<9>/DXMUX_3254 ;
  wire \blocspi_slave/data_inter<9>/DYMUX_3248 ;
  wire \blocspi_slave/data_inter<9>/CLKINV_3246 ;
  wire \blocspi_slave/data_inter<9>/CEINV_3245 ;
  wire \mux_sdhall_R/result_5_mux0001 ;
  wire \mux_sdhall_R/N9_pack_1 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<1>/CYINIT_3311 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<1>/CYSELF_3305 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<1>/BXINV_3303 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<1>/CYMUXG_3302 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[0] ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<1>/LOGIC_ZERO_3300 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<1>/CYSELG_3294 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/CYSELF_3335 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/CYMUXFAST_3334 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/CYAND_3333 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/FASTCARRY_3332 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/CYMUXG2_3331 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/CYMUXF2_3330 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/LOGIC_ZERO_3329 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/CYSELG_3323 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/CYSELF_3365 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/CYMUXFAST_3364 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/CYAND_3363 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/FASTCARRY_3362 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/CYMUXG2_3361 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/CYMUXF2_3360 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/LOGIC_ZERO_3359 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/CYSELG_3353 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/CYSELF_3395 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/CYMUXFAST_3394 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/CYAND_3393 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/FASTCARRY_3392 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/CYMUXG2_3391 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/CYMUXF2_3390 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/LOGIC_ZERO_3389 ;
  wire \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/CYSELG_3382 ;
  wire \blocspi_slave/i<0>/CYINIT_3449 ;
  wire \blocspi_slave/i<0>/CY0F_3448 ;
  wire \blocspi_slave/i<0>/DYMUX_3433 ;
  wire \blocspi_slave/i<0>/XORG_3431 ;
  wire \blocspi_slave/i<0>/CYSELF_3430 ;
  wire \blocspi_slave/i<0>/CYMUXFAST_3429 ;
  wire \blocspi_slave/i<0>/CYAND_3428 ;
  wire \blocspi_slave/i<0>/FASTCARRY_3427 ;
  wire \blocspi_slave/i<0>/CYMUXG2_3426 ;
  wire \blocspi_slave/i<0>/CYMUXF2_3425 ;
  wire \blocspi_slave/i<0>/LOGIC_ONE_3424 ;
  wire \blocspi_slave/i<0>/CYSELG_3416 ;
  wire \blocspi_slave/i<0>/SRINV_3414 ;
  wire \blocspi_slave/i<0>/CLKINV_3413 ;
  wire \blocspi_slave/i<0>/CEINV_3412 ;
  wire \blocspi_slave/i<1>/DXMUX_3500 ;
  wire \blocspi_slave/i<1>/XORF_3498 ;
  wire \blocspi_slave/i<1>/CYINIT_3497 ;
  wire \blocspi_slave/i<1>/DYMUX_3483 ;
  wire \blocspi_slave/i<1>/XORG_3481 ;
  wire \blocspi_slave/i<1>/CYSELF_3479 ;
  wire \blocspi_slave/i<1>/CYMUXFAST_3478 ;
  wire \blocspi_slave/i<1>/CYAND_3477 ;
  wire \blocspi_slave/i<1>/FASTCARRY_3476 ;
  wire \blocspi_slave/i<1>/CYMUXG2_3475 ;
  wire \blocspi_slave/i<1>/CYMUXF2_3474 ;
  wire \blocspi_slave/i<1>/LOGIC_ONE_3473 ;
  wire \blocspi_slave/i<1>/CYSELG_3465 ;
  wire \blocspi_slave/i<1>/SRINV_3463 ;
  wire \blocspi_slave/i<1>/CLKINV_3462 ;
  wire \blocspi_slave/i<1>/CEINV_3461 ;
  wire \blocspi_slave/i<3>/DXMUX_3556 ;
  wire \blocspi_slave/i<3>/XORF_3554 ;
  wire \blocspi_slave/i<3>/CYINIT_3553 ;
  wire \blocspi_slave/i<3>/DYMUX_3539 ;
  wire \blocspi_slave/i<3>/XORG_3537 ;
  wire \blocspi_slave/i<3>/CYSELF_3535 ;
  wire \blocspi_slave/i<3>/CYMUXFAST_3534 ;
  wire \blocspi_slave/i<3>/CYAND_3533 ;
  wire \blocspi_slave/i<3>/FASTCARRY_3532 ;
  wire \blocspi_slave/i<3>/CYMUXG2_3531 ;
  wire \blocspi_slave/i<3>/CYMUXF2_3530 ;
  wire \blocspi_slave/i<3>/LOGIC_ONE_3529 ;
  wire \blocspi_slave/i<3>/CYSELG_3521 ;
  wire \blocspi_slave/i<3>/SRINV_3519 ;
  wire \blocspi_slave/i<3>/CLKINV_3518 ;
  wire \blocspi_slave/i<3>/CEINV_3517 ;
  wire \blocspi_slave/i<5>/DXMUX_3612 ;
  wire \blocspi_slave/i<5>/XORF_3610 ;
  wire \blocspi_slave/i<5>/CYINIT_3609 ;
  wire \blocspi_slave/i<5>/DYMUX_3595 ;
  wire \blocspi_slave/i<5>/XORG_3593 ;
  wire \blocspi_slave/i<5>/CYSELF_3591 ;
  wire \blocspi_slave/i<5>/CYMUXFAST_3590 ;
  wire \blocspi_slave/i<5>/CYAND_3589 ;
  wire \blocspi_slave/i<5>/FASTCARRY_3588 ;
  wire \blocspi_slave/i<5>/CYMUXG2_3587 ;
  wire \blocspi_slave/i<5>/CYMUXF2_3586 ;
  wire \blocspi_slave/i<5>/LOGIC_ONE_3585 ;
  wire \blocspi_slave/i<5>/CYSELG_3577 ;
  wire \blocspi_slave/i<5>/SRINV_3575 ;
  wire \blocspi_slave/i<5>/CLKINV_3574 ;
  wire \blocspi_slave/i<5>/CEINV_3573 ;
  wire \blocspi_slave/i<7>/DXMUX_3668 ;
  wire \blocspi_slave/i<7>/XORF_3666 ;
  wire \blocspi_slave/i<7>/CYINIT_3665 ;
  wire \blocspi_slave/i<7>/DYMUX_3651 ;
  wire \blocspi_slave/i<7>/XORG_3649 ;
  wire \blocspi_slave/i<7>/CYSELF_3647 ;
  wire \blocspi_slave/i<7>/CYMUXFAST_3646 ;
  wire \blocspi_slave/i<7>/CYAND_3645 ;
  wire \blocspi_slave/i<7>/FASTCARRY_3644 ;
  wire \blocspi_slave/i<7>/CYMUXG2_3643 ;
  wire \blocspi_slave/i<7>/CYMUXF2_3642 ;
  wire \blocspi_slave/i<7>/LOGIC_ONE_3641 ;
  wire \blocspi_slave/i<7>/CYSELG_3633 ;
  wire \blocspi_slave/i<7>/SRINV_3631 ;
  wire \blocspi_slave/i<7>/CLKINV_3630 ;
  wire \blocspi_slave/i<7>/CEINV_3629 ;
  wire \blocspi_slave/i<9>/DXMUX_3724 ;
  wire \blocspi_slave/i<9>/XORF_3722 ;
  wire \blocspi_slave/i<9>/CYINIT_3721 ;
  wire \blocspi_slave/i<9>/DYMUX_3707 ;
  wire \blocspi_slave/i<9>/XORG_3705 ;
  wire \blocspi_slave/i<9>/CYSELF_3703 ;
  wire \blocspi_slave/i<9>/CYMUXFAST_3702 ;
  wire \blocspi_slave/i<9>/CYAND_3701 ;
  wire \blocspi_slave/i<9>/FASTCARRY_3700 ;
  wire \blocspi_slave/i<9>/CYMUXG2_3699 ;
  wire \blocspi_slave/i<9>/CYMUXF2_3698 ;
  wire \blocspi_slave/i<9>/LOGIC_ONE_3697 ;
  wire \blocspi_slave/i<9>/CYSELG_3689 ;
  wire \blocspi_slave/i<9>/SRINV_3687 ;
  wire \blocspi_slave/i<9>/CLKINV_3686 ;
  wire \blocspi_slave/i<9>/CEINV_3685 ;
  wire \blocspi_slave/i<11>/DXMUX_3780 ;
  wire \blocspi_slave/i<11>/XORF_3778 ;
  wire \blocspi_slave/i<11>/CYINIT_3777 ;
  wire \blocspi_slave/i<11>/DYMUX_3763 ;
  wire \blocspi_slave/i<11>/XORG_3761 ;
  wire \blocspi_slave/i<11>/CYSELF_3759 ;
  wire \blocspi_slave/i<11>/CYMUXFAST_3758 ;
  wire \blocspi_slave/i<11>/CYAND_3757 ;
  wire \blocspi_slave/i<11>/FASTCARRY_3756 ;
  wire \blocspi_slave/i<11>/CYMUXG2_3755 ;
  wire \blocspi_slave/i<11>/CYMUXF2_3754 ;
  wire \blocspi_slave/i<11>/LOGIC_ONE_3753 ;
  wire \blocspi_slave/i<11>/CYSELG_3745 ;
  wire \blocspi_slave/i<11>/SRINV_3743 ;
  wire \blocspi_slave/i<11>/CLKINV_3742 ;
  wire \blocspi_slave/i<11>/CEINV_3741 ;
  wire \blocspi_slave/i<13>/DXMUX_3836 ;
  wire \blocspi_slave/i<13>/XORF_3834 ;
  wire \blocspi_slave/i<13>/CYINIT_3833 ;
  wire \blocspi_slave/i<13>/DYMUX_3819 ;
  wire \blocspi_slave/i<13>/XORG_3817 ;
  wire \blocspi_slave/i<13>/CYSELF_3815 ;
  wire \blocspi_slave/i<13>/CYMUXFAST_3814 ;
  wire \blocspi_slave/i<13>/CYAND_3813 ;
  wire \blocspi_slave/i<13>/FASTCARRY_3812 ;
  wire \blocspi_slave/i<13>/CYMUXG2_3811 ;
  wire \blocspi_slave/i<13>/CYMUXF2_3810 ;
  wire \blocspi_slave/i<13>/LOGIC_ONE_3809 ;
  wire \blocspi_slave/i<13>/CYSELG_3801 ;
  wire \blocspi_slave/i<13>/SRINV_3799 ;
  wire \blocspi_slave/i<13>/CLKINV_3798 ;
  wire \blocspi_slave/i<13>/CEINV_3797 ;
  wire \blocspi_slave/i<15>/DXMUX_3892 ;
  wire \blocspi_slave/i<15>/XORF_3890 ;
  wire \blocspi_slave/i<15>/CYINIT_3889 ;
  wire \blocspi_slave/i<15>/DYMUX_3875 ;
  wire \blocspi_slave/i<15>/XORG_3873 ;
  wire \blocspi_slave/i<15>/CYSELF_3871 ;
  wire \blocspi_slave/i<15>/CYMUXFAST_3870 ;
  wire \blocspi_slave/i<15>/CYAND_3869 ;
  wire \blocspi_slave/i<15>/FASTCARRY_3868 ;
  wire \blocspi_slave/i<15>/CYMUXG2_3867 ;
  wire \blocspi_slave/i<15>/CYMUXF2_3866 ;
  wire \blocspi_slave/i<15>/LOGIC_ONE_3865 ;
  wire \blocspi_slave/i<15>/CYSELG_3857 ;
  wire \blocspi_slave/i<15>/SRINV_3855 ;
  wire \blocspi_slave/i<15>/CLKINV_3854 ;
  wire \blocspi_slave/i<15>/CEINV_3853 ;
  wire \blocspi_slave/i<17>/DXMUX_3948 ;
  wire \blocspi_slave/i<17>/XORF_3946 ;
  wire \blocspi_slave/i<17>/CYINIT_3945 ;
  wire \blocspi_slave/i<17>/DYMUX_3931 ;
  wire \blocspi_slave/i<17>/XORG_3929 ;
  wire \blocspi_slave/i<17>/CYSELF_3927 ;
  wire \blocspi_slave/i<17>/CYMUXFAST_3926 ;
  wire \blocspi_slave/i<17>/CYAND_3925 ;
  wire \blocspi_slave/i<17>/FASTCARRY_3924 ;
  wire \blocspi_slave/i<17>/CYMUXG2_3923 ;
  wire \blocspi_slave/i<17>/CYMUXF2_3922 ;
  wire \blocspi_slave/i<17>/LOGIC_ONE_3921 ;
  wire \blocspi_slave/i<17>/CYSELG_3913 ;
  wire \blocspi_slave/i<17>/SRINV_3911 ;
  wire \blocspi_slave/i<17>/CLKINV_3910 ;
  wire \blocspi_slave/i<17>/CEINV_3909 ;
  wire \blocspi_slave/i<19>/DXMUX_4004 ;
  wire \blocspi_slave/i<19>/XORF_4002 ;
  wire \blocspi_slave/i<19>/CYINIT_4001 ;
  wire \blocspi_slave/i<19>/DYMUX_3987 ;
  wire \blocspi_slave/i<19>/XORG_3985 ;
  wire \blocspi_slave/i<19>/CYSELF_3983 ;
  wire \blocspi_slave/i<19>/CYMUXFAST_3982 ;
  wire \blocspi_slave/i<19>/CYAND_3981 ;
  wire \blocspi_slave/i<19>/FASTCARRY_3980 ;
  wire \blocspi_slave/i<19>/CYMUXG2_3979 ;
  wire \blocspi_slave/i<19>/CYMUXF2_3978 ;
  wire \blocspi_slave/i<19>/LOGIC_ONE_3977 ;
  wire \blocspi_slave/i<19>/CYSELG_3969 ;
  wire \blocspi_slave/i<19>/SRINV_3967 ;
  wire \blocspi_slave/i<19>/CLKINV_3966 ;
  wire \blocspi_slave/i<19>/CEINV_3965 ;
  wire \blocspi_slave/i<21>/DXMUX_4060 ;
  wire \blocspi_slave/i<21>/XORF_4058 ;
  wire \blocspi_slave/i<21>/CYINIT_4057 ;
  wire \blocspi_slave/i<21>/DYMUX_4043 ;
  wire \blocspi_slave/i<21>/XORG_4041 ;
  wire \blocspi_slave/i<21>/CYSELF_4039 ;
  wire \blocspi_slave/i<21>/CYMUXFAST_4038 ;
  wire \blocspi_slave/i<21>/CYAND_4037 ;
  wire \blocspi_slave/i<21>/FASTCARRY_4036 ;
  wire \blocspi_slave/i<21>/CYMUXG2_4035 ;
  wire \blocspi_slave/i<21>/CYMUXF2_4034 ;
  wire \blocspi_slave/i<21>/LOGIC_ONE_4033 ;
  wire \blocspi_slave/i<21>/CYSELG_4025 ;
  wire \blocspi_slave/i<21>/SRINV_4023 ;
  wire \blocspi_slave/i<21>/CLKINV_4022 ;
  wire \blocspi_slave/i<21>/CEINV_4021 ;
  wire \blocspi_slave/i<23>/DXMUX_4116 ;
  wire \blocspi_slave/i<23>/XORF_4114 ;
  wire \blocspi_slave/i<23>/CYINIT_4113 ;
  wire \blocspi_slave/i<23>/DYMUX_4099 ;
  wire \blocspi_slave/i<23>/XORG_4097 ;
  wire \blocspi_slave/i<23>/CYSELF_4095 ;
  wire \blocspi_slave/i<23>/CYMUXFAST_4094 ;
  wire \blocspi_slave/i<23>/CYAND_4093 ;
  wire \blocspi_slave/i<23>/FASTCARRY_4092 ;
  wire \blocspi_slave/i<23>/CYMUXG2_4091 ;
  wire \blocspi_slave/i<23>/CYMUXF2_4090 ;
  wire \blocspi_slave/i<23>/LOGIC_ONE_4089 ;
  wire \blocspi_slave/i<23>/CYSELG_4081 ;
  wire \blocspi_slave/i<23>/SRINV_4079 ;
  wire \blocspi_slave/i<23>/CLKINV_4078 ;
  wire \blocspi_slave/i<23>/CEINV_4077 ;
  wire \blocspi_slave/i<25>/DXMUX_4172 ;
  wire \blocspi_slave/i<25>/XORF_4170 ;
  wire \blocspi_slave/i<25>/CYINIT_4169 ;
  wire \blocspi_slave/i<25>/DYMUX_4155 ;
  wire \blocspi_slave/i<25>/XORG_4153 ;
  wire \blocspi_slave/i<25>/CYSELF_4151 ;
  wire \blocspi_slave/i<25>/CYMUXFAST_4150 ;
  wire \blocspi_slave/i<25>/CYAND_4149 ;
  wire \blocspi_slave/i<25>/FASTCARRY_4148 ;
  wire \blocspi_slave/i<25>/CYMUXG2_4147 ;
  wire \blocspi_slave/i<25>/CYMUXF2_4146 ;
  wire \blocspi_slave/i<25>/LOGIC_ONE_4145 ;
  wire \blocspi_slave/i<25>/CYSELG_4137 ;
  wire \blocspi_slave/i<25>/SRINV_4135 ;
  wire \blocspi_slave/i<25>/CLKINV_4134 ;
  wire \blocspi_slave/i<25>/CEINV_4133 ;
  wire \blocspi_slave/i<27>/DXMUX_4228 ;
  wire \blocspi_slave/i<27>/XORF_4226 ;
  wire \blocspi_slave/i<27>/CYINIT_4225 ;
  wire \blocspi_slave/i<27>/DYMUX_4211 ;
  wire \blocspi_slave/i<27>/XORG_4209 ;
  wire \blocspi_slave/i<27>/CYSELF_4207 ;
  wire \blocspi_slave/i<27>/CYMUXFAST_4206 ;
  wire \blocspi_slave/i<27>/CYAND_4205 ;
  wire \blocspi_slave/i<27>/FASTCARRY_4204 ;
  wire \blocspi_slave/i<27>/CYMUXG2_4203 ;
  wire \blocspi_slave/i<27>/CYMUXF2_4202 ;
  wire \blocspi_slave/i<27>/LOGIC_ONE_4201 ;
  wire \blocspi_slave/i<27>/CYSELG_4193 ;
  wire \blocspi_slave/i<27>/SRINV_4191 ;
  wire \blocspi_slave/i<27>/CLKINV_4190 ;
  wire \blocspi_slave/i<27>/CEINV_4189 ;
  wire \blocspi_slave/i<29>/DXMUX_4284 ;
  wire \blocspi_slave/i<29>/XORF_4282 ;
  wire \blocspi_slave/i<29>/CYINIT_4281 ;
  wire \blocspi_slave/i<29>/DYMUX_4267 ;
  wire \blocspi_slave/i<29>/XORG_4265 ;
  wire \blocspi_slave/i<29>/CYSELF_4263 ;
  wire \blocspi_slave/i<29>/CYMUXFAST_4262 ;
  wire \blocspi_slave/i<29>/CYAND_4261 ;
  wire \blocspi_slave/i<29>/FASTCARRY_4260 ;
  wire \blocspi_slave/i<29>/CYMUXG2_4259 ;
  wire \blocspi_slave/i<29>/CYMUXF2_4258 ;
  wire \blocspi_slave/i<29>/LOGIC_ONE_4257 ;
  wire \blocspi_slave/i<29>/CYSELG_4249 ;
  wire \blocspi_slave/i<29>/SRINV_4247 ;
  wire \blocspi_slave/i<29>/CLKINV_4246 ;
  wire \blocspi_slave/i<29>/CEINV_4245 ;
  wire \blocspi_slave/Data_0_not00011_wg_cy<1>/CYINIT_4318 ;
  wire \blocspi_slave/Data_0_not00011_wg_cy<1>/CYSELF_4309 ;
  wire \blocspi_slave/Data_0_not00011_wg_cy<1>/BXINV_4307 ;
  wire \blocspi_slave/Data_0_not00011_wg_cy<1>/CYMUXG_4306 ;
  wire \blocspi_slave/Data_0_not00011_wg_cy[0] ;
  wire \blocspi_slave/Data_0_not00011_wg_cy<1>/LOGIC_ZERO_4304 ;
  wire \blocspi_slave/Data_0_not00011_wg_cy<1>/CYSELG_4298 ;
  wire \blocspi_slave/Data_0_not00011_wg_cy<3>/CYSELF_4342 ;
  wire \blocspi_slave/Data_0_not00011_wg_cy<3>/CYMUXFAST_4341 ;
  wire \blocspi_slave/Data_0_not00011_wg_cy<3>/CYAND_4340 ;
  wire \blocspi_slave/Data_0_not00011_wg_cy<3>/FASTCARRY_4339 ;
  wire \blocspi_slave/Data_0_not00011_wg_cy<3>/CYMUXG2_4338 ;
  wire \blocspi_slave/Data_0_not00011_wg_cy<3>/CYMUXF2_4337 ;
  wire \blocspi_slave/Data_0_not00011_wg_cy<3>/LOGIC_ZERO_4336 ;
  wire \blocspi_slave/Data_0_not00011_wg_cy<3>/CYSELG_4330 ;
  wire \blocspi_slave/Data_0_not00011_wg_cy<5>/CYSELF_4372 ;
  wire \blocspi_slave/Data_0_not00011_wg_cy<5>/CYMUXFAST_4371 ;
  wire \blocspi_slave/Data_0_not00011_wg_cy<5>/CYAND_4370 ;
  wire \blocspi_slave/Data_0_not00011_wg_cy<5>/FASTCARRY_4369 ;
  wire \blocspi_slave/Data_0_not00011_wg_cy<5>/CYMUXG2_4368 ;
  wire \blocspi_slave/Data_0_not00011_wg_cy<5>/CYMUXF2_4367 ;
  wire \blocspi_slave/Data_0_not00011_wg_cy<5>/LOGIC_ZERO_4366 ;
  wire \blocspi_slave/Data_0_not00011_wg_cy<5>/CYSELG_4360 ;
  wire \blocspi_slave/Data_0_not00011_wg_cy<7>/CYSELF_4402 ;
  wire \blocspi_slave/Data_0_not00011_wg_cy<7>/CYMUXFAST_4401 ;
  wire \blocspi_slave/Data_0_not00011_wg_cy<7>/CYAND_4400 ;
  wire \blocspi_slave/Data_0_not00011_wg_cy<7>/FASTCARRY_4399 ;
  wire \blocspi_slave/Data_0_not00011_wg_cy<7>/CYMUXG2_4398 ;
  wire \blocspi_slave/Data_0_not00011_wg_cy<7>/CYMUXF2_4397 ;
  wire \blocspi_slave/Data_0_not00011_wg_cy<7>/LOGIC_ZERO_4396 ;
  wire \blocspi_slave/Data_0_not00011_wg_cy<7>/CYSELG_4390 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYINIT_4438 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<1>/CY0F_4437 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYSELF_4429 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<1>/BXINV_4427 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYMUXG_4426 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy[0] ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<1>/CY0G_4424 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYSELG_4416 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CY0F_4469 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYSELF_4460 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYMUXFAST_4459 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYAND_4458 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/FASTCARRY_4457 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYMUXG2_4456 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYMUXF2_4455 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CY0G_4454 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYSELG_4446 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CY0F_4500 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYSELF_4491 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYMUXFAST_4490 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYAND_4489 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/FASTCARRY_4488 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYMUXG2_4487 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYMUXF2_4486 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CY0G_4485 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYSELG_4477 ;
  wire \pwm_gene_L/out_pwm/CYINIT_4540 ;
  wire \pwm_gene_L/out_pwm/CY0F_4539 ;
  wire \pwm_gene_L/out_pwm/CYSELF_4531 ;
  wire \pwm_gene_L/out_pwm/DYMUX_4524 ;
  wire \pwm_gene_L/out_pwm/XORG_4522 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy[6] ;
  wire \pwm_gene_L/out_pwm/G ;
  wire \pwm_gene_L/out_pwm/SRINV_4510 ;
  wire \pwm_gene_L/out_pwm/CLKINV_4509 ;
  wire \pwm_gene_L/out_pwm/CEINV_4508 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYINIT_4570 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<1>/CY0F_4569 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYSELF_4561 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<1>/BXINV_4559 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYMUXG_4558 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy[0] ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<1>/CY0G_4556 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYSELG_4548 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CY0F_4601 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYSELF_4592 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYMUXFAST_4591 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYAND_4590 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/FASTCARRY_4589 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYMUXG2_4588 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYMUXF2_4587 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CY0G_4586 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYSELG_4578 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CY0F_4632 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYSELF_4623 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYMUXFAST_4622 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYAND_4621 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/FASTCARRY_4620 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYMUXG2_4619 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYMUXF2_4618 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CY0G_4617 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYSELG_4609 ;
  wire \pwm_gene_R/out_pwm/CYINIT_4672 ;
  wire \pwm_gene_R/out_pwm/CY0F_4671 ;
  wire \pwm_gene_R/out_pwm/CYSELF_4663 ;
  wire \pwm_gene_R/out_pwm/DYMUX_4656 ;
  wire \pwm_gene_R/out_pwm/XORG_4654 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy[6] ;
  wire \pwm_gene_R/out_pwm/G ;
  wire \pwm_gene_R/out_pwm/SRINV_4642 ;
  wire \pwm_gene_R/out_pwm/CLKINV_4641 ;
  wire \pwm_gene_R/out_pwm/CEINV_4640 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYINIT_4702 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<1>/CY0F_4701 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYSELF_4693 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<1>/BXINV_4691 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYMUXG_4690 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<1>/CY0G_4688 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYSELG_4681 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CY0F_4733 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYSELF_4726 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYMUXFAST_4725 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYAND_4724 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/FASTCARRY_4723 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYMUXG2_4722 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYMUXF2_4721 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CY0G_4720 ;
  wire \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYSELG_4713 ;
  wire \pwm_gene_L/out_pwm_cmp_ge0000/CY0F_4764 ;
  wire \pwm_gene_L/out_pwm_cmp_ge0000/CYSELF_4756 ;
  wire \pwm_gene_L/out_pwm_cmp_ge0000/CYMUXFAST_4755 ;
  wire \pwm_gene_L/out_pwm_cmp_ge0000/CYAND_4754 ;
  wire \pwm_gene_L/out_pwm_cmp_ge0000/FASTCARRY_4753 ;
  wire \pwm_gene_L/out_pwm_cmp_ge0000/CYMUXG2_4752 ;
  wire \pwm_gene_L/out_pwm_cmp_ge0000/CYMUXF2_4751 ;
  wire \pwm_gene_L/out_pwm_cmp_ge0000/CY0G_4750 ;
  wire \pwm_gene_L/out_pwm_cmp_ge0000/CYSELG_4743 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYINIT_4794 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<1>/CY0F_4793 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYSELF_4785 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<1>/BXINV_4783 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYMUXG_4782 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<1>/CY0G_4780 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYSELG_4773 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CY0F_4825 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYSELF_4818 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYMUXFAST_4817 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYAND_4816 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/FASTCARRY_4815 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYMUXG2_4814 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYMUXF2_4813 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CY0G_4812 ;
  wire \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYSELG_4805 ;
  wire \pwm_gene_R/out_pwm_cmp_ge0000/CY0F_4856 ;
  wire \pwm_gene_R/out_pwm_cmp_ge0000/CYSELF_4848 ;
  wire \pwm_gene_R/out_pwm_cmp_ge0000/CYMUXFAST_4847 ;
  wire \pwm_gene_R/out_pwm_cmp_ge0000/CYAND_4846 ;
  wire \pwm_gene_R/out_pwm_cmp_ge0000/FASTCARRY_4845 ;
  wire \pwm_gene_R/out_pwm_cmp_ge0000/CYMUXG2_4844 ;
  wire \pwm_gene_R/out_pwm_cmp_ge0000/CYMUXF2_4843 ;
  wire \pwm_gene_R/out_pwm_cmp_ge0000/CY0G_4842 ;
  wire \pwm_gene_R/out_pwm_cmp_ge0000/CYSELG_4835 ;
  wire \clk/INBUF ;
  wire \sclk/INBUF ;
  wire \simo/INBUF ;
  wire \ssel/INBUF ;
  wire \th1_L/O ;
  wire \th2_L/O ;
  wire \th1_R/O ;
  wire \th3_L/O ;
  wire \th2_R/O ;
  wire \th3_R/O ;
  wire \tl1_L/O ;
  wire \tl2_L/O ;
  wire \tl1_R/O ;
  wire \tl3_L/O ;
  wire \tl2_R/O ;
  wire \tl3_R/O ;
  wire \H3H2H1_L<0>/INBUF ;
  wire \H3H2H1_L<1>/INBUF ;
  wire \H3H2H1_L<2>/INBUF ;
  wire \H3H2H1_R<0>/INBUF ;
  wire \H3H2H1_R<1>/INBUF ;
  wire \H3H2H1_R<2>/INBUF ;
  wire \reset/INBUF ;
  wire \test_data<0>/O ;
  wire \test_data<1>/O ;
  wire \test_data<2>/O ;
  wire \test_data<3>/O ;
  wire \test_data<4>/O ;
  wire \test_data<5>/O ;
  wire \test_data<6>/O ;
  wire \test_data<7>/O ;
  wire \test_data<8>/O ;
  wire \test_data<9>/O ;
  wire \Test_PWM_L/O ;
  wire \Test_PWM_R/O ;
  wire \test_data<10>/O ;
  wire \test_data<11>/O ;
  wire \test_data<12>/O ;
  wire \test_data<13>/O ;
  wire \test_data<14>/O ;
  wire \test_data<15>/O ;
  wire \simo_out/O ;
  wire \clk_BUFGP/BUFG/S_INVNOT ;
  wire \clk_BUFGP/BUFG/I0_INV ;
  wire \reset_IBUF_BUFG/S_INVNOT ;
  wire \reset_IBUF_BUFG/I0_INV ;
  wire N6;
  wire \pwm_gene_R/counter_and00003/O_pack_1 ;
  wire N8;
  wire \pwm_gene_L/counter_and00003/O_pack_1 ;
  wire \blocspi_slave/Data_7_not0001 ;
  wire \blocspi_slave/N4_pack_1 ;
  wire \blocspi_slave/Data_8_not0001 ;
  wire \blocspi_slave/N2_pack_1 ;
  wire \blocspi_slave/Data_9_not0001 ;
  wire \blocspi_slave/N3_pack_1 ;
  wire \pwm_gene_L/counter<3>/DXMUX_5433 ;
  wire \pwm_gene_L/Result<3>1 ;
  wire \pwm_gene_L/counter<3>/DYMUX_5420 ;
  wire \pwm_gene_L/Result<2>1 ;
  wire \pwm_gene_L/counter<3>/SRINV_5411 ;
  wire \pwm_gene_L/counter<3>/CLKINV_5410 ;
  wire \pwm_gene_L/counter<3>/CEINV_5409 ;
  wire \pwm_gene_L/counter<5>/DYMUX_5457 ;
  wire \pwm_gene_L/Result<5>1_5454 ;
  wire \pwm_gene_L/counter<5>/SRINV_5449 ;
  wire \pwm_gene_L/counter<5>/CLKINV_5448 ;
  wire \pwm_gene_L/counter<5>/CEINV_5447 ;
  wire \pwm_gene_R/clock<3>/DXMUX_5499 ;
  wire \pwm_gene_R/clock<3>/DYMUX_5486 ;
  wire \pwm_gene_R/clock<3>/SRINV_5477 ;
  wire \pwm_gene_R/clock<3>/CLKINV_5476 ;
  wire \pwm_gene_R/clock<3>/CEINVNOT ;
  wire \pwm_gene_R/clock<5>/DYMUX_5523 ;
  wire \pwm_gene_R/clock<5>/SRINV_5515 ;
  wire \pwm_gene_R/clock<5>/CLKINV_5514 ;
  wire \pwm_gene_R/clock<5>/CEINVNOT ;
  wire \stab/sclk2/DYMUX_5554 ;
  wire \stab/Mshreg_sclk2 ;
  wire \stab/sclk2/DIG_MUX_5543 ;
  wire \stab/sclk2/CLKINV_5541 ;
  wire \stab/sclk2/WSG ;
  wire \stab/sclk2/SRINV_5537 ;
  wire \stab/simo2/DYMUX_5583 ;
  wire \stab/Mshreg_simo2 ;
  wire \stab/simo2/DIG_MUX_5572 ;
  wire \stab/simo2/CLKINV_5570 ;
  wire \stab/simo2/WSG ;
  wire \stab/simo2/SRINV_5566 ;
  wire \stab/ssel2/DYMUX_5612 ;
  wire \stab/Mshreg_ssel2 ;
  wire \stab/ssel2/DIG_MUX_5601 ;
  wire \stab/ssel2/CLKINV_5599 ;
  wire \stab/ssel2/WSG ;
  wire \stab/ssel2/SRINV_5595 ;
  wire \mux_freq_0/end_freq<0>/DYMUX_5632 ;
  wire \mux_freq_0/Mrom_end_freq_mux0002 ;
  wire \mux_freq_0/end_freq<0>/SRINV_5622 ;
  wire \mux_freq_0/end_freq<0>/CLKINV_5621 ;
  wire \traitement_spi/sigfreq_recue<0>/DYMUX_5651 ;
  wire \traitement_spi/sigfreq_recue_0_mux0000 ;
  wire \traitement_spi/sigfreq_recue<0>/CLKINV_5642 ;
  wire \pwm_gene_R/counter<3>/DXMUX_5691 ;
  wire \pwm_gene_R/Result<3>1 ;
  wire \pwm_gene_R/counter<3>/DYMUX_5678 ;
  wire \pwm_gene_R/Result<2>1 ;
  wire \pwm_gene_R/counter<3>/SRINV_5669 ;
  wire \pwm_gene_R/counter<3>/CLKINV_5668 ;
  wire \pwm_gene_R/counter<3>/CEINV_5667 ;
  wire \pwm_gene_R/counter<5>/DYMUX_5715 ;
  wire \pwm_gene_R/Result<5>1_5712 ;
  wire \pwm_gene_R/counter<5>/SRINV_5707 ;
  wire \pwm_gene_R/counter<5>/CLKINV_5706 ;
  wire \pwm_gene_R/counter<5>/CEINV_5705 ;
  wire \pwm_gene_L/clock<3>/DXMUX_5757 ;
  wire \pwm_gene_L/clock<3>/DYMUX_5744 ;
  wire \pwm_gene_L/clock<3>/SRINV_5735 ;
  wire \pwm_gene_L/clock<3>/CLKINV_5734 ;
  wire \pwm_gene_L/clock<3>/CEINVNOT ;
  wire \pwm_gene_L/clock<5>/DYMUX_5781 ;
  wire \pwm_gene_L/clock<5>/SRINV_5773 ;
  wire \pwm_gene_L/clock<5>/CLKINV_5772 ;
  wire \pwm_gene_L/clock<5>/CEINVNOT ;
  wire \traitement_spi/sigpwm_dc_L<1>/DXMUX_5802 ;
  wire \traitement_spi/sigpwm_dc_L<1>/DYMUX_5796 ;
  wire \traitement_spi/sigpwm_dc_L<1>/CLKINV_5794 ;
  wire \traitement_spi/sigpwm_dc_L<1>/CEINV_5793 ;
  wire \traitement_spi/sigpwm_dc_L<3>/DXMUX_5822 ;
  wire \traitement_spi/sigpwm_dc_L<3>/DYMUX_5816 ;
  wire \traitement_spi/sigpwm_dc_L<3>/CLKINV_5814 ;
  wire \traitement_spi/sigpwm_dc_L<3>/CEINV_5813 ;
  wire \traitement_spi/sigpwm_dc_L<5>/DXMUX_5842 ;
  wire \traitement_spi/sigpwm_dc_L<5>/DYMUX_5836 ;
  wire \traitement_spi/sigpwm_dc_L<5>/CLKINV_5834 ;
  wire \traitement_spi/sigpwm_dc_L<5>/CEINV_5833 ;
  wire \th1_L/OUTPUT/OFF/O1INV_4892 ;
  wire \th1_L/OUTPUT/OTCLK1INV_4889 ;
  wire \th2_L/OUTPUT/OFF/O1INV_4908 ;
  wire \th2_L/OUTPUT/OTCLK1INV_4905 ;
  wire \th1_R/OUTPUT/OFF/O1INV_4924 ;
  wire \th1_R/OUTPUT/OTCLK1INV_4921 ;
  wire \th3_L/OUTPUT/OFF/O1INV_4940 ;
  wire \th3_L/OUTPUT/OTCLK1INV_4937 ;
  wire \th2_R/OUTPUT/OFF/O1INV_4956 ;
  wire \th2_R/OUTPUT/OTCLK1INV_4953 ;
  wire \th3_R/OUTPUT/OFF/O1INV_4972 ;
  wire \th3_R/OUTPUT/OTCLK1INV_4969 ;
  wire \tl1_L/OUTPUT/OFF/O1INV_4988 ;
  wire \tl1_L/OUTPUT/OTCLK1INV_4985 ;
  wire \tl2_L/OUTPUT/OFF/O1INV_5004 ;
  wire \tl2_L/OUTPUT/OTCLK1INV_5001 ;
  wire \tl1_R/OUTPUT/OFF/O1INV_5020 ;
  wire \tl1_R/OUTPUT/OTCLK1INV_5017 ;
  wire \tl3_L/OUTPUT/OFF/O1INV_5036 ;
  wire \tl3_L/OUTPUT/OTCLK1INV_5033 ;
  wire \tl2_R/OUTPUT/OFF/O1INV_5052 ;
  wire \tl2_R/OUTPUT/OTCLK1INV_5049 ;
  wire \tl3_R/OUTPUT/OFF/O1INV_5068 ;
  wire \tl3_R/OUTPUT/OTCLK1INV_5065 ;
  wire VCC;
  wire GND;
  wire \NLW_stab/Mshreg_sclk2/SRL16E_Q15_UNCONNECTED ;
  wire \NLW_stab/Mshreg_simo2/SRL16E_Q15_UNCONNECTED ;
  wire \NLW_stab/Mshreg_ssel2/SRL16E_Q15_UNCONNECTED ;
  wire \NlwInverterSignal_mux_sdhall_L/result_4/CLK ;
  wire \NlwInverterSignal_mux_sdhall_L/result_2/CLK ;
  wire \NlwInverterSignal_mux_sdhall_R/result_4/CLK ;
  wire \NlwInverterSignal_mux_sdhall_L/result_0/CLK ;
  wire \NlwInverterSignal_mux_sdhall_R/result_2/CLK ;
  wire \NlwInverterSignal_mux_sdhall_R/result_0/CLK ;
  wire \NlwInverterSignal_mux_sdhall_L/result_5/CLK ;
  wire \NlwInverterSignal_mux_sdhall_L/result_3/CLK ;
  wire \NlwInverterSignal_mux_sdhall_R/result_5/CLK ;
  wire \NlwInverterSignal_mux_sdhall_L/result_1/CLK ;
  wire \NlwInverterSignal_mux_sdhall_R/result_3/CLK ;
  wire \NlwInverterSignal_mux_sdhall_R/result_1/CLK ;
  wire [15 : 0] \blocspi_slave/test_data ;
  wire [6 : 0] \traitement_spi/sigpwm_dc_L ;
  wire [6 : 0] \traitement_spi/sigpwm_dc_R ;
  wire [15 : 0] \blocspi_slave/data_inter ;
  wire [31 : 0] \blocspi_slave/i ;
  wire [6 : 0] \pwm_gene_L/counter ;
  wire [5 : 0] \pwm_gene_R/clock ;
  wire [5 : 0] \pwm_gene_L/clock ;
  wire [15 : 0] \blocspi_slave/Data ;
  wire [6 : 0] \pwm_gene_R/counter ;
  wire [1 : 0] \traitement_spi/sigfreq_recue ;
  wire [29 : 0] \blocspi_slave/Mcount_i_cy ;
  wire [6 : 1] \pwm_gene_R/Result ;
  wire [6 : 1] \pwm_gene_L/Result ;
  wire [31 : 0] \blocspi_slave/Mcount_i_lut ;
  wire [8 : 0] \blocspi_slave/Mcompar_data_inter_cmp_gt0000_lut ;
  wire [7 : 0] \blocspi_slave/Data_0_not00011_wg_lut ;
  wire [6 : 0] \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_lut ;
  wire [6 : 0] \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_lut ;
  wire [5 : 0] \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_lut ;
  wire [0 : 0] \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy ;
  wire [5 : 0] \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_lut ;
  wire [0 : 0] \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy ;
  wire [5 : 0] \mux_sdhall_L/result ;
  wire [5 : 0] \mux_sdhall_R/result ;
  initial $sdf_annotate("netgen/par/cmde_moteurs_timesim.sdf");
  X_BUF #(
    .LOC ( "SLICE_X14Y35" ))
  \traitement_spi/sigpwm_dc_L<6>/DYMUX  (
    .I(\blocspi_slave/test_data [7]),
    .O(\traitement_spi/sigpwm_dc_L<6>/DYMUX_1691 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y35" ))
  \traitement_spi/sigpwm_dc_L<6>/CLKINV  (
    .I(clk_BUFGP),
    .O(\traitement_spi/sigpwm_dc_L<6>/CLKINV_1689 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y35" ))
  \traitement_spi/sigpwm_dc_L<6>/CEINV  (
    .I(\traitement_spi/sigpwm_dc_L_0_cmp_eq0000_0 ),
    .O(\traitement_spi/sigpwm_dc_L<6>/CEINV_1688 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y39" ))
  \traitement_spi/sigstart_L/DYMUX  (
    .I(\blocspi_slave/test_data [1]),
    .O(\traitement_spi/sigstart_L/DYMUX_1703 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y39" ))
  \traitement_spi/sigstart_L/CLKINV  (
    .I(clk_BUFGP),
    .O(\traitement_spi/sigstart_L/CLKINV_1701 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y39" ))
  \traitement_spi/sigstart_L/CEINV  (
    .I(\traitement_spi/sigstart_L_cmp_eq0000 ),
    .O(\traitement_spi/sigstart_L/CEINV_1700 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y40" ))
  \traitement_spi/sigstart_R/DYMUX  (
    .I(\blocspi_slave/test_data [1]),
    .O(\traitement_spi/sigstart_R/DYMUX_1715 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y40" ))
  \traitement_spi/sigstart_R/CLKINV  (
    .I(clk_BUFGP),
    .O(\traitement_spi/sigstart_R/CLKINV_1713 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y40" ))
  \traitement_spi/sigstart_R/CEINV  (
    .I(\traitement_spi/sigstart_R_cmp_eq0000 ),
    .O(\traitement_spi/sigstart_R/CEINV_1712 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y32" ))
  \traitement_spi/sigpwm_dc_R<1>/DXMUX  (
    .I(\blocspi_slave/test_data [2]),
    .O(\traitement_spi/sigpwm_dc_R<1>/DXMUX_1735 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y32" ))
  \traitement_spi/sigpwm_dc_R<1>/DYMUX  (
    .I(\blocspi_slave/test_data [1]),
    .O(\traitement_spi/sigpwm_dc_R<1>/DYMUX_1729 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y32" ))
  \traitement_spi/sigpwm_dc_R<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\traitement_spi/sigpwm_dc_R<1>/CLKINV_1727 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y32" ))
  \traitement_spi/sigpwm_dc_R<1>/CEINV  (
    .I(\traitement_spi/sigpwm_dc_R_0_cmp_eq0000_0 ),
    .O(\traitement_spi/sigpwm_dc_R<1>/CEINV_1726 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y33" ))
  \traitement_spi/sigpwm_dc_R<3>/DXMUX  (
    .I(\blocspi_slave/test_data [4]),
    .O(\traitement_spi/sigpwm_dc_R<3>/DXMUX_1755 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y33" ))
  \traitement_spi/sigpwm_dc_R<3>/DYMUX  (
    .I(\blocspi_slave/test_data [3]),
    .O(\traitement_spi/sigpwm_dc_R<3>/DYMUX_1749 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y33" ))
  \traitement_spi/sigpwm_dc_R<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\traitement_spi/sigpwm_dc_R<3>/CLKINV_1747 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y33" ))
  \traitement_spi/sigpwm_dc_R<3>/CEINV  (
    .I(\traitement_spi/sigpwm_dc_R_0_cmp_eq0000_0 ),
    .O(\traitement_spi/sigpwm_dc_R<3>/CEINV_1746 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y34" ))
  \traitement_spi/sigpwm_dc_R<5>/DXMUX  (
    .I(\blocspi_slave/test_data [6]),
    .O(\traitement_spi/sigpwm_dc_R<5>/DXMUX_1775 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y34" ))
  \traitement_spi/sigpwm_dc_R<5>/DYMUX  (
    .I(\blocspi_slave/test_data [5]),
    .O(\traitement_spi/sigpwm_dc_R<5>/DYMUX_1769 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y34" ))
  \traitement_spi/sigpwm_dc_R<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\traitement_spi/sigpwm_dc_R<5>/CLKINV_1767 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y34" ))
  \traitement_spi/sigpwm_dc_R<5>/CEINV  (
    .I(\traitement_spi/sigpwm_dc_R_0_cmp_eq0000_0 ),
    .O(\traitement_spi/sigpwm_dc_R<5>/CEINV_1766 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y34" ))
  \traitement_spi/sigpwm_dc_R<6>/DYMUX  (
    .I(\blocspi_slave/test_data [7]),
    .O(\traitement_spi/sigpwm_dc_R<6>/DYMUX_1787 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y34" ))
  \traitement_spi/sigpwm_dc_R<6>/CLKINV  (
    .I(clk_BUFGP),
    .O(\traitement_spi/sigpwm_dc_R<6>/CLKINV_1785 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y34" ))
  \traitement_spi/sigpwm_dc_R<6>/CEINV  (
    .I(\traitement_spi/sigpwm_dc_R_0_cmp_eq0000_0 ),
    .O(\traitement_spi/sigpwm_dc_R<6>/CEINV_1784 )
  );
  X_BUF #(
    .LOC ( "SLICE_X11Y28" ))
  \blocspi_slave/test_data<11>/DXMUX  (
    .I(\blocspi_slave/data_inter [11]),
    .O(\blocspi_slave/test_data<11>/DXMUX_1804 )
  );
  X_BUF #(
    .LOC ( "SLICE_X11Y28" ))
  \blocspi_slave/test_data<11>/DYMUX  (
    .I(\blocspi_slave/data_inter [10]),
    .O(\blocspi_slave/test_data<11>/DYMUX_1799 )
  );
  X_BUF #(
    .LOC ( "SLICE_X11Y28" ))
  \blocspi_slave/test_data<11>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/test_data<11>/CLKINV_1797 )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y27" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/test_data_12  (
    .I(\blocspi_slave/test_data<13>/DYMUX_1815 ),
    .CE(VCC),
    .CLK(\blocspi_slave/test_data<13>/CLKINV_1813 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/test_data [12])
  );
  X_FF #(
    .LOC ( "SLICE_X3Y27" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/test_data_13  (
    .I(\blocspi_slave/test_data<13>/DXMUX_1820 ),
    .CE(VCC),
    .CLK(\blocspi_slave/test_data<13>/CLKINV_1813 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/test_data [13])
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y27" ))
  \blocspi_slave/test_data<13>/DXMUX  (
    .I(\blocspi_slave/data_inter [13]),
    .O(\blocspi_slave/test_data<13>/DXMUX_1820 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y27" ))
  \blocspi_slave/test_data<13>/DYMUX  (
    .I(\blocspi_slave/data_inter [12]),
    .O(\blocspi_slave/test_data<13>/DYMUX_1815 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y27" ))
  \blocspi_slave/test_data<13>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/test_data<13>/CLKINV_1813 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y28" ))
  \blocspi_slave/test_data<15>/DXMUX  (
    .I(\blocspi_slave/data_inter [15]),
    .O(\blocspi_slave/test_data<15>/DXMUX_1836 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y28" ))
  \blocspi_slave/test_data<15>/DYMUX  (
    .I(\blocspi_slave/data_inter [14]),
    .O(\blocspi_slave/test_data<15>/DYMUX_1831 )
  );
  X_BUF #(
    .LOC ( "SLICE_X0Y28" ))
  \blocspi_slave/test_data<15>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/test_data<15>/CLKINV_1829 )
  );
  X_LUT4 #(
    .INIT ( 16'h0100 ),
    .LOC ( "SLICE_X8Y25" ))
  \blocspi_slave/Data_0_not00011  (
    .ADR0(\blocspi_slave/i [3]),
    .ADR1(\blocspi_slave/i [1]),
    .ADR2(\blocspi_slave/i [2]),
    .ADR3(\blocspi_slave/N2 ),
    .O(\blocspi_slave/Data_0_not0001 )
  );
  X_INV #(
    .LOC ( "SLICE_X23Y27" ))
  \pwm_gene_L/counter<0>/DXMUX  (
    .I(\pwm_gene_L/counter [0]),
    .O(\pwm_gene_L/counter<0>/DXMUX_1939 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y27" ))
  \pwm_gene_L/counter<0>/DYMUX  (
    .I(\pwm_gene_L/Result<1>1 ),
    .O(\pwm_gene_L/counter<0>/DYMUX_1932 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y27" ))
  \pwm_gene_L/counter<0>/SRINV  (
    .I(\pwm_gene_L/counter_and0000_0 ),
    .O(\pwm_gene_L/counter<0>/SRINV_1922 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y27" ))
  \pwm_gene_L/counter<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\pwm_gene_L/counter<0>/CLKINV_1921 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y27" ))
  \pwm_gene_L/counter<0>/CEINV  (
    .I(\pwm_gene_L/clock_and0000_0 ),
    .O(\pwm_gene_L/counter<0>/CEINV_1920 )
  );
  X_INV #(
    .LOC ( "SLICE_X27Y23" ))
  \pwm_gene_R/clock<0>/DXMUX  (
    .I(\pwm_gene_R/clock [0]),
    .O(\pwm_gene_R/clock<0>/DXMUX_1972 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y23" ))
  \pwm_gene_R/clock<0>/DYMUX  (
    .I(\pwm_gene_R/Result [1]),
    .O(\pwm_gene_R/clock<0>/DYMUX_1965 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y23" ))
  \pwm_gene_R/clock<0>/SRINV  (
    .I(\pwm_gene_R/clock_and0000_0 ),
    .O(\pwm_gene_R/clock<0>/SRINV_1955 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y23" ))
  \pwm_gene_R/clock<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\pwm_gene_R/clock<0>/CLKINV_1954 )
  );
  X_INV #(
    .LOC ( "SLICE_X27Y23" ))
  \pwm_gene_R/clock<0>/CEINV  (
    .I(reset_IBUF1),
    .O(\pwm_gene_R/clock<0>/CEINVNOT )
  );
  X_SFF #(
    .LOC ( "SLICE_X27Y23" ),
    .INIT ( 1'b0 ))
  \pwm_gene_R/clock_0  (
    .I(\pwm_gene_R/clock<0>/DXMUX_1972 ),
    .CE(\pwm_gene_R/clock<0>/CEINVNOT ),
    .CLK(\pwm_gene_R/clock<0>/CLKINV_1954 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\pwm_gene_R/clock<0>/SRINV_1955 ),
    .O(\pwm_gene_R/clock [0])
  );
  X_LUT4 #(
    .INIT ( 16'hFEBF ),
    .LOC ( "SLICE_X12Y46" ))
  \mux_sdhall_R/result_3_mux00011  (
    .ADR0(\mux_sdhall_R/N9 ),
    .ADR1(H3H2H1_R_1_IBUF_1494),
    .ADR2(\traitement_spi/sigdir_R_1495 ),
    .ADR3(H3H2H1_R_2_IBUF_1493),
    .O(\mux_sdhall_R/result_3_mux0001 )
  );
  X_LUT4 #(
    .INIT ( 16'hEFFD ),
    .LOC ( "SLICE_X12Y46" ))
  \mux_sdhall_R/result_1_mux00011  (
    .ADR0(H3H2H1_R_0_IBUF_1497),
    .ADR1(\mux_sdhall_R/N9 ),
    .ADR2(\traitement_spi/sigdir_R_1495 ),
    .ADR3(H3H2H1_R_2_IBUF_1493),
    .O(\mux_sdhall_R/result_1_mux0001 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y26" ))
  \pwm_gene_L/clock_and0000/XUSED  (
    .I(\pwm_gene_L/clock_and0000 ),
    .O(\pwm_gene_L/clock_and0000_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y26" ))
  \pwm_gene_L/clock_and0000/YUSED  (
    .I(\pwm_gene_L/counter_and0000 ),
    .O(\pwm_gene_L/counter_and0000_0 )
  );
  X_LUT4 #(
    .INIT ( 16'h0800 ),
    .LOC ( "SLICE_X8Y24" ))
  \blocspi_slave/Data_10_not00011  (
    .ADR0(\blocspi_slave/i [3]),
    .ADR1(\blocspi_slave/i [1]),
    .ADR2(\blocspi_slave/i [2]),
    .ADR3(\blocspi_slave/N2 ),
    .O(\blocspi_slave/Data_10_not0001 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y24" ))
  \pwm_gene_L/clock<4>/DXMUX  (
    .I(\pwm_gene_L/Result [4]),
    .O(\pwm_gene_L/clock<4>/DXMUX_2152 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y24" ))
  \pwm_gene_L/clock<4>/YUSED  (
    .I(\pwm_gene_L/Result<3>_bdd0_pack_2 ),
    .O(\pwm_gene_L/Result<3>_bdd0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y24" ))
  \pwm_gene_L/clock<4>/SRINV  (
    .I(\pwm_gene_L/clock_and0000_0 ),
    .O(\pwm_gene_L/clock<4>/SRINV_2135 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y24" ))
  \pwm_gene_L/clock<4>/CLKINV  (
    .I(clk_BUFGP),
    .O(\pwm_gene_L/clock<4>/CLKINV_2134 )
  );
  X_INV #(
    .LOC ( "SLICE_X27Y24" ))
  \pwm_gene_L/clock<4>/CEINV  (
    .I(reset_IBUF1),
    .O(\pwm_gene_L/clock<4>/CEINVNOT )
  );
  X_LUT4 #(
    .INIT ( 16'h1000 ),
    .LOC ( "SLICE_X19Y39" ))
  \traitement_spi/sigdir_L_cmp_eq00001  (
    .ADR0(\blocspi_slave/test_data [8]),
    .ADR1(\blocspi_slave/test_data [10]),
    .ADR2(\blocspi_slave/test_data [11]),
    .ADR3(\blocspi_slave/test_data [9]),
    .O(\traitement_spi/sigdir_L_cmp_eq0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h0020 ),
    .LOC ( "SLICE_X19Y39" ))
  \traitement_spi/sigstart_L_cmp_eq00001  (
    .ADR0(\blocspi_slave/test_data [8]),
    .ADR1(\blocspi_slave/test_data [10]),
    .ADR2(\blocspi_slave/test_data [11]),
    .ADR3(\blocspi_slave/test_data [9]),
    .O(\traitement_spi/sigstart_L_cmp_eq0000 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y39" ))
  \traitement_spi/sigdir_R_cmp_eq0000/YUSED  (
    .I(\traitement_spi/sigpwm_dc_R_0_cmp_eq0000 ),
    .O(\traitement_spi/sigpwm_dc_R_0_cmp_eq0000_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X9Y25" ))
  \blocspi_slave/Data<0>/DYMUX  (
    .I(\stab/simo2_1526 ),
    .O(\blocspi_slave/Data<0>/DYMUX_2237 )
  );
  X_BUF #(
    .LOC ( "SLICE_X9Y25" ))
  \blocspi_slave/Data<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/Data<0>/CLKINV_2235 )
  );
  X_BUF #(
    .LOC ( "SLICE_X9Y25" ))
  \blocspi_slave/Data<0>/CEINV  (
    .I(\blocspi_slave/Data_0_not0001 ),
    .O(\blocspi_slave/Data<0>/CEINV_2234 )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y26" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/Data_1  (
    .I(\blocspi_slave/Data<1>/DYMUX_2249 ),
    .CE(\blocspi_slave/Data<1>/CEINV_2246 ),
    .CLK(\blocspi_slave/Data<1>/CLKINV_2247 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/Data [1])
  );
  X_BUF #(
    .LOC ( "SLICE_X9Y26" ))
  \blocspi_slave/Data<1>/DYMUX  (
    .I(\stab/simo2_1526 ),
    .O(\blocspi_slave/Data<1>/DYMUX_2249 )
  );
  X_BUF #(
    .LOC ( "SLICE_X9Y26" ))
  \blocspi_slave/Data<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/Data<1>/CLKINV_2247 )
  );
  X_BUF #(
    .LOC ( "SLICE_X9Y26" ))
  \blocspi_slave/Data<1>/CEINV  (
    .I(\blocspi_slave/Data_1_not0001 ),
    .O(\blocspi_slave/Data<1>/CEINV_2246 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y26" ))
  \blocspi_slave/Data<2>/DYMUX  (
    .I(\stab/simo2_1526 ),
    .O(\blocspi_slave/Data<2>/DYMUX_2261 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y26" ))
  \blocspi_slave/Data<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/Data<2>/CLKINV_2259 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y26" ))
  \blocspi_slave/Data<2>/CEINV  (
    .I(\blocspi_slave/Data_2_not0001 ),
    .O(\blocspi_slave/Data<2>/CEINV_2258 )
  );
  X_BUF #(
    .LOC ( "SLICE_X11Y24" ))
  \blocspi_slave/Data<3>/DYMUX  (
    .I(\stab/simo2_1526 ),
    .O(\blocspi_slave/Data<3>/DYMUX_2273 )
  );
  X_BUF #(
    .LOC ( "SLICE_X11Y24" ))
  \blocspi_slave/Data<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/Data<3>/CLKINV_2271 )
  );
  X_BUF #(
    .LOC ( "SLICE_X11Y24" ))
  \blocspi_slave/Data<3>/CEINV  (
    .I(\blocspi_slave/Data_3_not0001 ),
    .O(\blocspi_slave/Data<3>/CEINV_2270 )
  );
  X_BUF #(
    .LOC ( "SLICE_X7Y31" ))
  \blocspi_slave/Data<4>/DYMUX  (
    .I(\stab/simo2_1526 ),
    .O(\blocspi_slave/Data<4>/DYMUX_2285 )
  );
  X_BUF #(
    .LOC ( "SLICE_X7Y31" ))
  \blocspi_slave/Data<4>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/Data<4>/CLKINV_2283 )
  );
  X_BUF #(
    .LOC ( "SLICE_X7Y31" ))
  \blocspi_slave/Data<4>/CEINV  (
    .I(\blocspi_slave/Data_4_not0001 ),
    .O(\blocspi_slave/Data<4>/CEINV_2282 )
  );
  X_BUF #(
    .LOC ( "SLICE_X5Y25" ))
  \blocspi_slave/Data<5>/DYMUX  (
    .I(\stab/simo2_1526 ),
    .O(\blocspi_slave/Data<5>/DYMUX_2297 )
  );
  X_BUF #(
    .LOC ( "SLICE_X5Y25" ))
  \blocspi_slave/Data<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/Data<5>/CLKINV_2295 )
  );
  X_BUF #(
    .LOC ( "SLICE_X5Y25" ))
  \blocspi_slave/Data<5>/CEINV  (
    .I(\blocspi_slave/Data_5_not0001 ),
    .O(\blocspi_slave/Data<5>/CEINV_2294 )
  );
  X_BUF #(
    .LOC ( "SLICE_X5Y26" ))
  \blocspi_slave/Data<6>/DYMUX  (
    .I(\stab/simo2_1526 ),
    .O(\blocspi_slave/Data<6>/DYMUX_2309 )
  );
  X_BUF #(
    .LOC ( "SLICE_X5Y26" ))
  \blocspi_slave/Data<6>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/Data<6>/CLKINV_2307 )
  );
  X_BUF #(
    .LOC ( "SLICE_X5Y26" ))
  \blocspi_slave/Data<6>/CEINV  (
    .I(\blocspi_slave/Data_6_not0001 ),
    .O(\blocspi_slave/Data<6>/CEINV_2306 )
  );
  X_BUF #(
    .LOC ( "SLICE_X9Y27" ))
  \blocspi_slave/Data<7>/DYMUX  (
    .I(\stab/simo2_1526 ),
    .O(\blocspi_slave/Data<7>/DYMUX_2321 )
  );
  X_BUF #(
    .LOC ( "SLICE_X9Y27" ))
  \blocspi_slave/Data<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/Data<7>/CLKINV_2319 )
  );
  X_BUF #(
    .LOC ( "SLICE_X9Y27" ))
  \blocspi_slave/Data<7>/CEINV  (
    .I(\blocspi_slave/Data_7_not0001 ),
    .O(\blocspi_slave/Data<7>/CEINV_2318 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y27" ))
  \blocspi_slave/Data<8>/DYMUX  (
    .I(\stab/simo2_1526 ),
    .O(\blocspi_slave/Data<8>/DYMUX_2333 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y27" ))
  \blocspi_slave/Data<8>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/Data<8>/CLKINV_2331 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y27" ))
  \blocspi_slave/Data<8>/CEINV  (
    .I(\blocspi_slave/Data_8_not0001 ),
    .O(\blocspi_slave/Data<8>/CEINV_2330 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y29" ))
  \blocspi_slave/Data<9>/DYMUX  (
    .I(\stab/simo2_1526 ),
    .O(\blocspi_slave/Data<9>/DYMUX_2345 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y29" ))
  \blocspi_slave/Data<9>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/Data<9>/CLKINV_2343 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y29" ))
  \blocspi_slave/Data<9>/CEINV  (
    .I(\blocspi_slave/Data_9_not0001 ),
    .O(\blocspi_slave/Data<9>/CEINV_2342 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y26" ))
  \pwm_gene_R/clock_and0000/XUSED  (
    .I(\pwm_gene_R/clock_and0000 ),
    .O(\pwm_gene_R/clock_and0000_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y26" ))
  \pwm_gene_R/clock_and0000/YUSED  (
    .I(\pwm_gene_R/counter_and0000 ),
    .O(\pwm_gene_R/counter_and0000_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y27" ))
  \pwm_gene_L/counter<6>/DXMUX  (
    .I(\pwm_gene_L/Result [6]),
    .O(\pwm_gene_L/counter<6>/DXMUX_2404 )
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y27" ))
  \pwm_gene_L/counter<6>/YUSED  (
    .I(N2_pack_2),
    .O(N2)
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y27" ))
  \pwm_gene_L/counter<6>/SRINV  (
    .I(\pwm_gene_L/counter_and0000_0 ),
    .O(\pwm_gene_L/counter<6>/SRINV_2389 )
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y27" ))
  \pwm_gene_L/counter<6>/CLKINV  (
    .I(clk_BUFGP),
    .O(\pwm_gene_L/counter<6>/CLKINV_2388 )
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y27" ))
  \pwm_gene_L/counter<6>/CEINV  (
    .I(\pwm_gene_L/clock_and0000_0 ),
    .O(\pwm_gene_L/counter<6>/CEINV_2387 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y47" ))
  \mux_sdhall_R/Switchs<4>/YUSED  (
    .I(\mux_sdhall_R/N10_pack_1 ),
    .O(\mux_sdhall_R/N10 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y39" ))
  \rising_edg2/flipflop_ris/output/DYMUX  (
    .I(\rising_edg2/flipflop_ris/output/BYINV_2440 ),
    .O(\rising_edg2/flipflop_ris/output/DYMUX_2441 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y39" ))
  \rising_edg2/flipflop_ris/output/BYINV  (
    .I(1'b1),
    .O(\rising_edg2/flipflop_ris/output/BYINV_2440 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y39" ))
  \rising_edg2/flipflop_ris/output/SRINV  (
    .I(\rising_edg2/flipflop_ris/output_and0000_inv ),
    .O(\rising_edg2/flipflop_ris/output/SRINV_2439 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y39" ))
  \rising_edg2/flipflop_ris/output/CLKINV  (
    .I(clk_BUFGP),
    .O(\rising_edg2/flipflop_ris/output/CLKINV_2438 )
  );
  X_INV #(
    .LOC ( "SLICE_X24Y29" ))
  \mux_freq_0/end_freq<1>/DXMUX  (
    .I(\traitement_spi/sigfreq_recue [0]),
    .O(\mux_freq_0/end_freq<1>/DXMUX_2456 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y29" ))
  \mux_freq_0/end_freq<1>/REVUSED  (
    .I(\traitement_spi/sigfreq_recue [1]),
    .O(\mux_freq_0/end_freq<1>/REVUSED_2454 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y29" ))
  \mux_freq_0/end_freq<1>/SRINV  (
    .I(reset_IBUF1),
    .O(\mux_freq_0/end_freq<1>/SRINV_2452 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y29" ))
  \mux_freq_0/end_freq<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\mux_freq_0/end_freq<1>/CLKINV_2451 )
  );
  X_INV #(
    .LOC ( "SLICE_X23Y28" ))
  \mux_freq_0/end_freq<2>/DXMUX  (
    .I(\traitement_spi/sigfreq_recue [1]),
    .O(\mux_freq_0/end_freq<2>/DXMUX_2486 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y28" ))
  \mux_freq_0/end_freq<2>/DYMUX  (
    .I(\mux_freq_0/Mrom_end_freq_mux00023 ),
    .O(\mux_freq_0/end_freq<2>/DYMUX_2480 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y28" ))
  \mux_freq_0/end_freq<2>/SRINV  (
    .I(reset_IBUF1),
    .O(\mux_freq_0/end_freq<2>/SRINV_2470 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y28" ))
  \mux_freq_0/end_freq<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\mux_freq_0/end_freq<2>/CLKINV_2469 )
  );
  X_BUF #(
    .LOC ( "SLICE_X29Y46" ))
  \mux_sdhall_L/Switchs<4>/YUSED  (
    .I(\mux_sdhall_L/N10_pack_1 ),
    .O(\mux_sdhall_L/N10 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y38" ))
  \traitement_spi/sigstart_R_cmp_eq0000/YUSED  (
    .I(\traitement_spi/sigpwm_dc_L_0_cmp_eq0000 ),
    .O(\traitement_spi/sigpwm_dc_L_0_cmp_eq0000_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y41" ))
  \traitement_spi/sigdir_L/DYMUX  (
    .I(\blocspi_slave/test_data [1]),
    .O(\traitement_spi/sigdir_L/DYMUX_2546 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y41" ))
  \traitement_spi/sigdir_L/CLKINV  (
    .I(clk_BUFGP),
    .O(\traitement_spi/sigdir_L/CLKINV_2544 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y41" ))
  \traitement_spi/sigdir_L/CEINV  (
    .I(\traitement_spi/sigdir_L_cmp_eq0000 ),
    .O(\traitement_spi/sigdir_L/CEINV_2543 )
  );
  X_BUF #(
    .LOC ( "SLICE_X11Y43" ))
  \traitement_spi/sigdir_R/DYMUX  (
    .I(\blocspi_slave/test_data [1]),
    .O(\traitement_spi/sigdir_R/DYMUX_2558 )
  );
  X_BUF #(
    .LOC ( "SLICE_X11Y43" ))
  \traitement_spi/sigdir_R/CLKINV  (
    .I(clk_BUFGP),
    .O(\traitement_spi/sigdir_R/CLKINV_2556 )
  );
  X_BUF #(
    .LOC ( "SLICE_X11Y43" ))
  \traitement_spi/sigdir_R/CEINV  (
    .I(\traitement_spi/sigdir_R_cmp_eq0000 ),
    .O(\traitement_spi/sigdir_R/CEINV_2555 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y27" ))
  \pwm_gene_L/clock_sub0000<3>_bdd0/XUSED  (
    .I(\pwm_gene_L/clock_sub0000<3>_bdd0 ),
    .O(\pwm_gene_L/clock_sub0000<3>_bdd0_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y27" ))
  \pwm_gene_R/counter<4>/DXMUX  (
    .I(\pwm_gene_R/Result<4>1_2602 ),
    .O(\pwm_gene_R/counter<4>/DXMUX_2605 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y27" ))
  \pwm_gene_R/counter<4>/YUSED  (
    .I(\pwm_gene_R/N4_pack_2 ),
    .O(\pwm_gene_R/N4 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y27" ))
  \pwm_gene_R/counter<4>/SRINV  (
    .I(\pwm_gene_R/counter_and0000_0 ),
    .O(\pwm_gene_R/counter<4>/SRINV_2588 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y27" ))
  \pwm_gene_R/counter<4>/CLKINV  (
    .I(clk_BUFGP),
    .O(\pwm_gene_R/counter<4>/CLKINV_2587 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y27" ))
  \pwm_gene_R/counter<4>/CEINV  (
    .I(\pwm_gene_R/clock_and0000_0 ),
    .O(\pwm_gene_R/counter<4>/CEINV_2586 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y25" ))
  \blocspi_slave/Data<10>/DYMUX  (
    .I(\stab/simo2_1526 ),
    .O(\blocspi_slave/Data<10>/DYMUX_2630 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y25" ))
  \blocspi_slave/Data<10>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/Data<10>/CLKINV_2628 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y25" ))
  \blocspi_slave/Data<10>/CEINV  (
    .I(\blocspi_slave/Data_10_not0001 ),
    .O(\blocspi_slave/Data<10>/CEINV_2627 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y26" ))
  \blocspi_slave/Data<11>/DYMUX  (
    .I(\stab/simo2_1526 ),
    .O(\blocspi_slave/Data<11>/DYMUX_2642 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y26" ))
  \blocspi_slave/Data<11>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/Data<11>/CLKINV_2640 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y26" ))
  \blocspi_slave/Data<11>/CEINV  (
    .I(\blocspi_slave/Data_11_not0001 ),
    .O(\blocspi_slave/Data<11>/CEINV_2639 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y25" ))
  \blocspi_slave/Data<12>/DYMUX  (
    .I(\stab/simo2_1526 ),
    .O(\blocspi_slave/Data<12>/DYMUX_2654 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y25" ))
  \blocspi_slave/Data<12>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/Data<12>/CLKINV_2652 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y25" ))
  \blocspi_slave/Data<12>/CEINV  (
    .I(\blocspi_slave/Data_12_not0001 ),
    .O(\blocspi_slave/Data<12>/CEINV_2651 )
  );
  X_BUF #(
    .LOC ( "SLICE_X4Y26" ))
  \blocspi_slave/Data<13>/DYMUX  (
    .I(\stab/simo2_1526 ),
    .O(\blocspi_slave/Data<13>/DYMUX_2666 )
  );
  X_BUF #(
    .LOC ( "SLICE_X4Y26" ))
  \blocspi_slave/Data<13>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/Data<13>/CLKINV_2664 )
  );
  X_BUF #(
    .LOC ( "SLICE_X4Y26" ))
  \blocspi_slave/Data<13>/CEINV  (
    .I(\blocspi_slave/Data_13_not0001 ),
    .O(\blocspi_slave/Data<13>/CEINV_2663 )
  );
  X_BUF #(
    .LOC ( "SLICE_X4Y30" ))
  \blocspi_slave/Data<14>/DYMUX  (
    .I(\stab/simo2_1526 ),
    .O(\blocspi_slave/Data<14>/DYMUX_2678 )
  );
  X_BUF #(
    .LOC ( "SLICE_X4Y30" ))
  \blocspi_slave/Data<14>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/Data<14>/CLKINV_2676 )
  );
  X_BUF #(
    .LOC ( "SLICE_X4Y30" ))
  \blocspi_slave/Data<14>/CEINV  (
    .I(\blocspi_slave/Data_14_not0001 ),
    .O(\blocspi_slave/Data<14>/CEINV_2675 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y28" ))
  \blocspi_slave/Data<15>/DYMUX  (
    .I(\stab/simo2_1526 ),
    .O(\blocspi_slave/Data<15>/DYMUX_2690 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y28" ))
  \blocspi_slave/Data<15>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/Data<15>/CLKINV_2688 )
  );
  X_BUF #(
    .LOC ( "SLICE_X2Y28" ))
  \blocspi_slave/Data<15>/CEINV  (
    .I(\blocspi_slave/Data_15_not0001_3078 ),
    .O(\blocspi_slave/Data<15>/CEINV_2687 )
  );
  X_BUF #(
    .LOC ( "SLICE_X28Y47" ))
  \mux_sdhall_L/result_5_mux0001/YUSED  (
    .I(\mux_sdhall_L/N9_pack_1 ),
    .O(\mux_sdhall_L/N9 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y32" ))
  \blocspi_slave/test_data<1>/DXMUX  (
    .I(\blocspi_slave/data_inter [1]),
    .O(\blocspi_slave/test_data<1>/DXMUX_2731 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y32" ))
  \blocspi_slave/test_data<1>/DYMUX  (
    .I(\blocspi_slave/data_inter [0]),
    .O(\blocspi_slave/test_data<1>/DYMUX_2726 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y32" ))
  \blocspi_slave/test_data<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/test_data<1>/CLKINV_2724 )
  );
  X_BUF #(
    .LOC ( "SLICE_X11Y32" ))
  \blocspi_slave/test_data<3>/DXMUX  (
    .I(\blocspi_slave/data_inter [3]),
    .O(\blocspi_slave/test_data<3>/DXMUX_2747 )
  );
  X_BUF #(
    .LOC ( "SLICE_X11Y32" ))
  \blocspi_slave/test_data<3>/DYMUX  (
    .I(\blocspi_slave/data_inter [2]),
    .O(\blocspi_slave/test_data<3>/DYMUX_2742 )
  );
  X_BUF #(
    .LOC ( "SLICE_X11Y32" ))
  \blocspi_slave/test_data<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/test_data<3>/CLKINV_2740 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y33" ))
  \blocspi_slave/test_data<5>/DXMUX  (
    .I(\blocspi_slave/data_inter [5]),
    .O(\blocspi_slave/test_data<5>/DXMUX_2763 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y33" ))
  \blocspi_slave/test_data<5>/DYMUX  (
    .I(\blocspi_slave/data_inter [4]),
    .O(\blocspi_slave/test_data<5>/DYMUX_2758 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y33" ))
  \blocspi_slave/test_data<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/test_data<5>/CLKINV_2756 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y34" ))
  \blocspi_slave/test_data<7>/DXMUX  (
    .I(\blocspi_slave/data_inter [7]),
    .O(\blocspi_slave/test_data<7>/DXMUX_2779 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y34" ))
  \blocspi_slave/test_data<7>/DYMUX  (
    .I(\blocspi_slave/data_inter [6]),
    .O(\blocspi_slave/test_data<7>/DYMUX_2774 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y34" ))
  \blocspi_slave/test_data<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/test_data<7>/CLKINV_2772 )
  );
  X_BUF #(
    .LOC ( "SLICE_X11Y31" ))
  \blocspi_slave/test_data<9>/DXMUX  (
    .I(\blocspi_slave/data_inter [9]),
    .O(\blocspi_slave/test_data<9>/DXMUX_2795 )
  );
  X_BUF #(
    .LOC ( "SLICE_X11Y31" ))
  \blocspi_slave/test_data<9>/DYMUX  (
    .I(\blocspi_slave/data_inter [8]),
    .O(\blocspi_slave/test_data<9>/DYMUX_2790 )
  );
  X_BUF #(
    .LOC ( "SLICE_X11Y31" ))
  \blocspi_slave/test_data<9>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/test_data<9>/CLKINV_2788 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y27" ))
  \pwm_gene_R/counter<6>/DXMUX  (
    .I(\pwm_gene_R/Result [6]),
    .O(\pwm_gene_R/counter<6>/DXMUX_2829 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y27" ))
  \pwm_gene_R/counter<6>/YUSED  (
    .I(N01_pack_2),
    .O(N01)
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y27" ))
  \pwm_gene_R/counter<6>/SRINV  (
    .I(\pwm_gene_R/counter_and0000_0 ),
    .O(\pwm_gene_R/counter<6>/SRINV_2814 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y27" ))
  \pwm_gene_R/counter<6>/CLKINV  (
    .I(clk_BUFGP),
    .O(\pwm_gene_R/counter<6>/CLKINV_2813 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y27" ))
  \pwm_gene_R/counter<6>/CEINV  (
    .I(\pwm_gene_R/clock_and0000_0 ),
    .O(\pwm_gene_R/counter<6>/CEINV_2812 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y36" ))
  \blocspi_slave/i<31>/DXMUX  (
    .I(\blocspi_slave/i<31>/XORF_2866 ),
    .O(\blocspi_slave/i<31>/DXMUX_2868 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y36" ))
  \blocspi_slave/i<31>/XORF  (
    .I0(\blocspi_slave/i<31>/CYINIT_2865 ),
    .I1(\blocspi_slave/Mcount_i_lut [31]),
    .O(\blocspi_slave/i<31>/XORF_2866 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y36" ))
  \blocspi_slave/i<31>/CYINIT  (
    .I(\blocspi_slave/i<29>/CYMUXFAST_4262 ),
    .O(\blocspi_slave/i<31>/CYINIT_2865 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y36" ))
  \blocspi_slave/i<31>/YUSED  (
    .I(\blocspi_slave/data_inter_not0001 ),
    .O(\blocspi_slave/data_inter_not0001_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y36" ))
  \blocspi_slave/i<31>/SRINV  (
    .I(\stab/ssel2_1592 ),
    .O(\blocspi_slave/i<31>/SRINV_2848 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y36" ))
  \blocspi_slave/i<31>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/i<31>/CLKINV_2847 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y36" ))
  \blocspi_slave/i<31>/CEINV  (
    .I(\rising_edg2/flipflop_ris/output_1552 ),
    .O(\blocspi_slave/i<31>/CEINV_2846 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y23" ))
  \pwm_gene_R/clock<4>/DXMUX  (
    .I(\pwm_gene_R/Result [4]),
    .O(\pwm_gene_R/clock<4>/DXMUX_2904 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y23" ))
  \pwm_gene_R/clock<4>/YUSED  (
    .I(\pwm_gene_R/Result<3>_bdd0_pack_2 ),
    .O(\pwm_gene_R/Result<3>_bdd0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y23" ))
  \pwm_gene_R/clock<4>/SRINV  (
    .I(\pwm_gene_R/clock_and0000_0 ),
    .O(\pwm_gene_R/clock<4>/SRINV_2887 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y23" ))
  \pwm_gene_R/clock<4>/CLKINV  (
    .I(clk_BUFGP),
    .O(\pwm_gene_R/clock<4>/CLKINV_2886 )
  );
  X_INV #(
    .LOC ( "SLICE_X24Y23" ))
  \pwm_gene_R/clock<4>/CEINV  (
    .I(reset_IBUF1),
    .O(\pwm_gene_R/clock<4>/CEINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y28" ))
  \traitement_spi/sigfreq_recue<1>/DXMUX  (
    .I(\traitement_spi/sigfreq_recue_1_mux0000 ),
    .O(\traitement_spi/sigfreq_recue<1>/DXMUX_2936 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y28" ))
  \traitement_spi/sigfreq_recue<1>/YUSED  (
    .I(\traitement_spi/N01_pack_2 ),
    .O(\traitement_spi/N01 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y28" ))
  \traitement_spi/sigfreq_recue<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\traitement_spi/sigfreq_recue<1>/CLKINV_2919 )
  );
  X_BUF #(
    .LOC ( "SLICE_X11Y29" ))
  \blocspi_slave/data_inter<11>/DXMUX  (
    .I(\blocspi_slave/Data [11]),
    .O(\blocspi_slave/data_inter<11>/DXMUX_2955 )
  );
  X_BUF #(
    .LOC ( "SLICE_X11Y29" ))
  \blocspi_slave/data_inter<11>/DYMUX  (
    .I(\blocspi_slave/Data [10]),
    .O(\blocspi_slave/data_inter<11>/DYMUX_2949 )
  );
  X_BUF #(
    .LOC ( "SLICE_X11Y29" ))
  \blocspi_slave/data_inter<11>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/data_inter<11>/CLKINV_2947 )
  );
  X_BUF #(
    .LOC ( "SLICE_X11Y29" ))
  \blocspi_slave/data_inter<11>/CEINV  (
    .I(\blocspi_slave/data_inter_not0001_0 ),
    .O(\blocspi_slave/data_inter<11>/CEINV_2946 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y26" ))
  \blocspi_slave/data_inter<13>/DXMUX  (
    .I(\blocspi_slave/Data [13]),
    .O(\blocspi_slave/data_inter<13>/DXMUX_2975 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y26" ))
  \blocspi_slave/data_inter<13>/DYMUX  (
    .I(\blocspi_slave/Data [12]),
    .O(\blocspi_slave/data_inter<13>/DYMUX_2969 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y26" ))
  \blocspi_slave/data_inter<13>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/data_inter<13>/CLKINV_2967 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y26" ))
  \blocspi_slave/data_inter<13>/CEINV  (
    .I(\blocspi_slave/data_inter_not0001_0 ),
    .O(\blocspi_slave/data_inter<13>/CEINV_2966 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y29" ))
  \blocspi_slave/data_inter<15>/DXMUX  (
    .I(\blocspi_slave/Data [15]),
    .O(\blocspi_slave/data_inter<15>/DXMUX_2995 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y29" ))
  \blocspi_slave/data_inter<15>/DYMUX  (
    .I(\blocspi_slave/Data [14]),
    .O(\blocspi_slave/data_inter<15>/DYMUX_2989 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y29" ))
  \blocspi_slave/data_inter<15>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/data_inter<15>/CLKINV_2987 )
  );
  X_BUF #(
    .LOC ( "SLICE_X3Y29" ))
  \blocspi_slave/data_inter<15>/CEINV  (
    .I(\blocspi_slave/data_inter_not0001_0 ),
    .O(\blocspi_slave/data_inter<15>/CEINV_2986 )
  );
  X_INV #(
    .LOC ( "SLICE_X18Y26" ))
  \pwm_gene_R/counter<0>/DXMUX  (
    .I(\pwm_gene_R/counter [0]),
    .O(\pwm_gene_R/counter<0>/DXMUX_3051 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y26" ))
  \pwm_gene_R/counter<0>/DYMUX  (
    .I(\pwm_gene_R/Result<1>1 ),
    .O(\pwm_gene_R/counter<0>/DYMUX_3044 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y26" ))
  \pwm_gene_R/counter<0>/SRINV  (
    .I(\pwm_gene_R/counter_and0000_0 ),
    .O(\pwm_gene_R/counter<0>/SRINV_3034 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y26" ))
  \pwm_gene_R/counter<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\pwm_gene_R/counter<0>/CLKINV_3033 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y26" ))
  \pwm_gene_R/counter<0>/CEINV  (
    .I(\pwm_gene_R/clock_and0000_0 ),
    .O(\pwm_gene_R/counter<0>/CEINV_3032 )
  );
  X_BUF #(
    .LOC ( "SLICE_X7Y27" ))
  \blocspi_slave/Data_15_not0001/YUSED  (
    .I(N4_pack_1),
    .O(N4)
  );
  X_BUF #(
    .LOC ( "SLICE_X9Y38" ))
  \rising_edg2/flipflop_sys/Q/DYMUX  (
    .I(\stab/sclk2_1568 ),
    .O(\rising_edg2/flipflop_sys/Q/DYMUX_3086 )
  );
  X_BUF #(
    .LOC ( "SLICE_X9Y38" ))
  \rising_edg2/flipflop_sys/Q/CLKINV  (
    .I(clk_BUFGP),
    .O(\rising_edg2/flipflop_sys/Q/CLKINV_3084 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y25" ))
  \pwm_gene_L/counter<4>/DXMUX  (
    .I(\pwm_gene_L/Result<4>1_3117 ),
    .O(\pwm_gene_L/counter<4>/DXMUX_3120 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y25" ))
  \pwm_gene_L/counter<4>/YUSED  (
    .I(\pwm_gene_L/N4_pack_2 ),
    .O(\pwm_gene_L/N4 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y25" ))
  \pwm_gene_L/counter<4>/SRINV  (
    .I(\pwm_gene_L/counter_and0000_0 ),
    .O(\pwm_gene_L/counter<4>/SRINV_3103 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y25" ))
  \pwm_gene_L/counter<4>/CLKINV  (
    .I(clk_BUFGP),
    .O(\pwm_gene_L/counter<4>/CLKINV_3102 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y25" ))
  \pwm_gene_L/counter<4>/CEINV  (
    .I(\pwm_gene_L/clock_and0000_0 ),
    .O(\pwm_gene_L/counter<4>/CEINV_3101 )
  );
  X_INV #(
    .LOC ( "SLICE_X26Y25" ))
  \pwm_gene_L/clock<0>/DXMUX  (
    .I(\pwm_gene_L/clock [0]),
    .O(\pwm_gene_L/clock<0>/DXMUX_3153 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y25" ))
  \pwm_gene_L/clock<0>/DYMUX  (
    .I(\pwm_gene_L/Result [1]),
    .O(\pwm_gene_L/clock<0>/DYMUX_3146 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y25" ))
  \pwm_gene_L/clock<0>/SRINV  (
    .I(\pwm_gene_L/clock_and0000_0 ),
    .O(\pwm_gene_L/clock<0>/SRINV_3136 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y25" ))
  \pwm_gene_L/clock<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\pwm_gene_L/clock<0>/CLKINV_3135 )
  );
  X_INV #(
    .LOC ( "SLICE_X26Y25" ))
  \pwm_gene_L/clock<0>/CEINV  (
    .I(reset_IBUF1),
    .O(\pwm_gene_L/clock<0>/CEINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y33" ))
  \blocspi_slave/data_inter<1>/DXMUX  (
    .I(\blocspi_slave/Data [1]),
    .O(\blocspi_slave/data_inter<1>/DXMUX_3174 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y33" ))
  \blocspi_slave/data_inter<1>/DYMUX  (
    .I(\blocspi_slave/Data [0]),
    .O(\blocspi_slave/data_inter<1>/DYMUX_3168 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y33" ))
  \blocspi_slave/data_inter<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/data_inter<1>/CLKINV_3166 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y33" ))
  \blocspi_slave/data_inter<1>/CEINV  (
    .I(\blocspi_slave/data_inter_not0001_0 ),
    .O(\blocspi_slave/data_inter<1>/CEINV_3165 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y28" ))
  \blocspi_slave/data_inter<3>/DXMUX  (
    .I(\blocspi_slave/Data [3]),
    .O(\blocspi_slave/data_inter<3>/DXMUX_3194 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y28" ))
  \blocspi_slave/data_inter<3>/DYMUX  (
    .I(\blocspi_slave/Data [2]),
    .O(\blocspi_slave/data_inter<3>/DYMUX_3188 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y28" ))
  \blocspi_slave/data_inter<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/data_inter<3>/CLKINV_3186 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y28" ))
  \blocspi_slave/data_inter<3>/CEINV  (
    .I(\blocspi_slave/data_inter_not0001_0 ),
    .O(\blocspi_slave/data_inter<3>/CEINV_3185 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y30" ))
  \blocspi_slave/data_inter<5>/DXMUX  (
    .I(\blocspi_slave/Data [5]),
    .O(\blocspi_slave/data_inter<5>/DXMUX_3214 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y30" ))
  \blocspi_slave/data_inter<5>/DYMUX  (
    .I(\blocspi_slave/Data [4]),
    .O(\blocspi_slave/data_inter<5>/DYMUX_3208 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y30" ))
  \blocspi_slave/data_inter<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/data_inter<5>/CLKINV_3206 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y30" ))
  \blocspi_slave/data_inter<5>/CEINV  (
    .I(\blocspi_slave/data_inter_not0001_0 ),
    .O(\blocspi_slave/data_inter<5>/CEINV_3205 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y31" ))
  \blocspi_slave/data_inter<7>/DXMUX  (
    .I(\blocspi_slave/Data [7]),
    .O(\blocspi_slave/data_inter<7>/DXMUX_3234 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y31" ))
  \blocspi_slave/data_inter<7>/DYMUX  (
    .I(\blocspi_slave/Data [6]),
    .O(\blocspi_slave/data_inter<7>/DYMUX_3228 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y31" ))
  \blocspi_slave/data_inter<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/data_inter<7>/CLKINV_3226 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y31" ))
  \blocspi_slave/data_inter<7>/CEINV  (
    .I(\blocspi_slave/data_inter_not0001_0 ),
    .O(\blocspi_slave/data_inter<7>/CEINV_3225 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y31" ))
  \blocspi_slave/data_inter<9>/DXMUX  (
    .I(\blocspi_slave/Data [9]),
    .O(\blocspi_slave/data_inter<9>/DXMUX_3254 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y31" ))
  \blocspi_slave/data_inter<9>/DYMUX  (
    .I(\blocspi_slave/Data [8]),
    .O(\blocspi_slave/data_inter<9>/DYMUX_3248 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y31" ))
  \blocspi_slave/data_inter<9>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/data_inter<9>/CLKINV_3246 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y31" ))
  \blocspi_slave/data_inter<9>/CEINV  (
    .I(\blocspi_slave/data_inter_not0001_0 ),
    .O(\blocspi_slave/data_inter<9>/CEINV_3245 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y46" ))
  \mux_sdhall_R/result_5_mux0001/YUSED  (
    .I(\mux_sdhall_R/N9_pack_1 ),
    .O(\mux_sdhall_R/N9 )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X6Y16" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_lut<0>  (
    .ADR0(\blocspi_slave/i [0]),
    .ADR1(\blocspi_slave/i [1]),
    .ADR2(\blocspi_slave/i [3]),
    .ADR3(\blocspi_slave/i [2]),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_lut [0])
  );
  X_ZERO #(
    .LOC ( "SLICE_X6Y16" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<1>/LOGIC_ZERO  (
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<1>/LOGIC_ZERO_3300 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y16" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<1>/CYMUXF  (
    .IA(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<1>/LOGIC_ZERO_3300 ),
    .IB(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<1>/CYINIT_3311 ),
    .SEL(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<1>/CYSELF_3305 ),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[0] )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y16" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<1>/CYINIT  (
    .I(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<1>/BXINV_3303 ),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<1>/CYINIT_3311 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y16" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<1>/CYSELF  (
    .I(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_lut [0]),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<1>/CYSELF_3305 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y16" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<1>/BXINV  (
    .I(1'b1),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<1>/BXINV_3303 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y16" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<1>/CYMUXG  (
    .IA(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<1>/LOGIC_ZERO_3300 ),
    .IB(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[0] ),
    .SEL(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<1>/CYSELG_3294 ),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<1>/CYMUXG_3302 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y16" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<1>/CYSELG  (
    .I(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_lut [1]),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<1>/CYSELG_3294 )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X6Y16" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_lut<1>  (
    .ADR0(\blocspi_slave/i [4]),
    .ADR1(\blocspi_slave/i [6]),
    .ADR2(\blocspi_slave/i [7]),
    .ADR3(\blocspi_slave/i [5]),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_lut [1])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X6Y17" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_lut<2>  (
    .ADR0(\blocspi_slave/i [11]),
    .ADR1(\blocspi_slave/i [9]),
    .ADR2(\blocspi_slave/i [10]),
    .ADR3(\blocspi_slave/i [8]),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_lut [2])
  );
  X_ZERO #(
    .LOC ( "SLICE_X6Y17" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/LOGIC_ZERO  (
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/LOGIC_ZERO_3329 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y17" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/CYMUXF2  (
    .IA(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/LOGIC_ZERO_3329 ),
    .IB(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/LOGIC_ZERO_3329 ),
    .SEL(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/CYSELF_3335 ),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/CYMUXF2_3330 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y17" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/CYSELF  (
    .I(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_lut [2]),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/CYSELF_3335 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y17" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/FASTCARRY  (
    .I(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<1>/CYMUXG_3302 ),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/FASTCARRY_3332 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X6Y17" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/CYAND  (
    .I0(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/CYSELG_3323 ),
    .I1(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/CYSELF_3335 ),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/CYAND_3333 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y17" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/CYMUXFAST  (
    .IA(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/CYMUXG2_3331 ),
    .IB(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/FASTCARRY_3332 ),
    .SEL(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/CYAND_3333 ),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/CYMUXFAST_3334 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y17" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/CYMUXG2  (
    .IA(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/LOGIC_ZERO_3329 ),
    .IB(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/CYMUXF2_3330 ),
    .SEL(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/CYSELG_3323 ),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/CYMUXG2_3331 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y17" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/CYSELG  (
    .I(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_lut [3]),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/CYSELG_3323 )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X6Y17" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_lut<3>  (
    .ADR0(\blocspi_slave/i [14]),
    .ADR1(\blocspi_slave/i [13]),
    .ADR2(\blocspi_slave/i [12]),
    .ADR3(\blocspi_slave/i [15]),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_lut [3])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X6Y18" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_lut<4>  (
    .ADR0(\blocspi_slave/i [18]),
    .ADR1(\blocspi_slave/i [16]),
    .ADR2(\blocspi_slave/i [19]),
    .ADR3(\blocspi_slave/i [17]),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_lut [4])
  );
  X_ZERO #(
    .LOC ( "SLICE_X6Y18" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/LOGIC_ZERO  (
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/LOGIC_ZERO_3359 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y18" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/CYMUXF2  (
    .IA(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/LOGIC_ZERO_3359 ),
    .IB(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/LOGIC_ZERO_3359 ),
    .SEL(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/CYSELF_3365 ),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/CYMUXF2_3360 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y18" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/CYSELF  (
    .I(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_lut [4]),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/CYSELF_3365 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y18" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/FASTCARRY  (
    .I(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<3>/CYMUXFAST_3334 ),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/FASTCARRY_3362 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X6Y18" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/CYAND  (
    .I0(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/CYSELG_3353 ),
    .I1(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/CYSELF_3365 ),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/CYAND_3363 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y18" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/CYMUXFAST  (
    .IA(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/CYMUXG2_3361 ),
    .IB(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/FASTCARRY_3362 ),
    .SEL(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/CYAND_3363 ),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/CYMUXFAST_3364 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y18" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/CYMUXG2  (
    .IA(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/LOGIC_ZERO_3359 ),
    .IB(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/CYMUXF2_3360 ),
    .SEL(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/CYSELG_3353 ),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/CYMUXG2_3361 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y18" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/CYSELG  (
    .I(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_lut [5]),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/CYSELG_3353 )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X6Y18" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_lut<5>  (
    .ADR0(\blocspi_slave/i [23]),
    .ADR1(\blocspi_slave/i [22]),
    .ADR2(\blocspi_slave/i [21]),
    .ADR3(\blocspi_slave/i [20]),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_lut [5])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X6Y19" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_lut<6>  (
    .ADR0(\blocspi_slave/i [25]),
    .ADR1(\blocspi_slave/i [26]),
    .ADR2(\blocspi_slave/i [27]),
    .ADR3(\blocspi_slave/i [24]),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_lut [6])
  );
  X_ZERO #(
    .LOC ( "SLICE_X6Y19" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/LOGIC_ZERO  (
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/LOGIC_ZERO_3389 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y19" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/CYMUXF2  (
    .IA(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/LOGIC_ZERO_3389 ),
    .IB(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/LOGIC_ZERO_3389 ),
    .SEL(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/CYSELF_3395 ),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/CYMUXF2_3390 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y19" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/CYSELF  (
    .I(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_lut [6]),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/CYSELF_3395 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y19" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/COUTUSED  (
    .I(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/CYMUXFAST_3394 ),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[7] )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y19" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/FASTCARRY  (
    .I(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<5>/CYMUXFAST_3364 ),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/FASTCARRY_3392 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X6Y19" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/CYAND  (
    .I0(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/CYSELG_3382 ),
    .I1(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/CYSELF_3395 ),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/CYAND_3393 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y19" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/CYMUXFAST  (
    .IA(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/CYMUXG2_3391 ),
    .IB(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/FASTCARRY_3392 ),
    .SEL(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/CYAND_3393 ),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/CYMUXFAST_3394 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y19" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/CYMUXG2  (
    .IA(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/LOGIC_ZERO_3389 ),
    .IB(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/CYMUXF2_3390 ),
    .SEL(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/CYSELG_3382 ),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/CYMUXG2_3391 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y19" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/CYSELG  (
    .I(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_lut [7]),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy<7>/CYSELG_3382 )
  );
  X_LUT4 #(
    .INIT ( 16'h0003 ),
    .LOC ( "SLICE_X6Y19" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_lut<7>  (
    .ADR0(VCC),
    .ADR1(\blocspi_slave/i [30]),
    .ADR2(\blocspi_slave/i [29]),
    .ADR3(\blocspi_slave/i [28]),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_lut [7])
  );
  X_LUT4 #(
    .INIT ( 16'hF5F5 ),
    .LOC ( "SLICE_X6Y20" ))
  \blocspi_slave/Mcount_i_lut<0>  (
    .ADR0(\blocspi_slave/i [0]),
    .ADR1(VCC),
    .ADR2(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .ADR3(VCC),
    .O(\blocspi_slave/Mcount_i_lut [0])
  );
  X_ONE #(
    .LOC ( "SLICE_X6Y20" ))
  \blocspi_slave/i<0>/LOGIC_ONE  (
    .O(\blocspi_slave/i<0>/LOGIC_ONE_3424 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y20" ))
  \blocspi_slave/i<0>/CYMUXF  (
    .IA(\blocspi_slave/i<0>/CY0F_3448 ),
    .IB(\blocspi_slave/i<0>/CYINIT_3449 ),
    .SEL(\blocspi_slave/i<0>/CYSELF_3430 ),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y20" ))
  \blocspi_slave/i<0>/CYMUXF2  (
    .IA(\blocspi_slave/i<0>/CY0F_3448 ),
    .IB(\blocspi_slave/i<0>/CY0F_3448 ),
    .SEL(\blocspi_slave/i<0>/CYSELF_3430 ),
    .O(\blocspi_slave/i<0>/CYMUXF2_3425 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y20" ))
  \blocspi_slave/i<0>/CYINIT  (
    .I(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[7] ),
    .O(\blocspi_slave/i<0>/CYINIT_3449 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y20" ))
  \blocspi_slave/i<0>/CY0F  (
    .I(\blocspi_slave/i [31]),
    .O(\blocspi_slave/i<0>/CY0F_3448 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y20" ))
  \blocspi_slave/i<0>/CYSELF  (
    .I(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_lut [8]),
    .O(\blocspi_slave/i<0>/CYSELF_3430 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y20" ))
  \blocspi_slave/i<0>/DYMUX  (
    .I(\blocspi_slave/i<0>/XORG_3431 ),
    .O(\blocspi_slave/i<0>/DYMUX_3433 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y20" ))
  \blocspi_slave/i<0>/XORG  (
    .I0(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .I1(\blocspi_slave/Mcount_i_lut [0]),
    .O(\blocspi_slave/i<0>/XORG_3431 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y20" ))
  \blocspi_slave/i<0>/COUTUSED  (
    .I(\blocspi_slave/i<0>/CYMUXFAST_3429 ),
    .O(\blocspi_slave/Mcount_i_cy [0])
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y20" ))
  \blocspi_slave/i<0>/FASTCARRY  (
    .I(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[7] ),
    .O(\blocspi_slave/i<0>/FASTCARRY_3427 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X6Y20" ))
  \blocspi_slave/i<0>/CYAND  (
    .I0(\blocspi_slave/i<0>/CYSELG_3416 ),
    .I1(\blocspi_slave/i<0>/CYSELF_3430 ),
    .O(\blocspi_slave/i<0>/CYAND_3428 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y20" ))
  \blocspi_slave/i<0>/CYMUXFAST  (
    .IA(\blocspi_slave/i<0>/CYMUXG2_3426 ),
    .IB(\blocspi_slave/i<0>/FASTCARRY_3427 ),
    .SEL(\blocspi_slave/i<0>/CYAND_3428 ),
    .O(\blocspi_slave/i<0>/CYMUXFAST_3429 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y20" ))
  \blocspi_slave/i<0>/CYMUXG2  (
    .IA(\blocspi_slave/i<0>/LOGIC_ONE_3424 ),
    .IB(\blocspi_slave/i<0>/CYMUXF2_3425 ),
    .SEL(\blocspi_slave/i<0>/CYSELG_3416 ),
    .O(\blocspi_slave/i<0>/CYMUXG2_3426 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y20" ))
  \blocspi_slave/i<0>/CYSELG  (
    .I(\blocspi_slave/Mcount_i_lut [0]),
    .O(\blocspi_slave/i<0>/CYSELG_3416 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y20" ))
  \blocspi_slave/i<0>/SRINV  (
    .I(\stab/ssel2_1592 ),
    .O(\blocspi_slave/i<0>/SRINV_3414 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y20" ))
  \blocspi_slave/i<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/i<0>/CLKINV_3413 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y20" ))
  \blocspi_slave/i<0>/CEINV  (
    .I(\rising_edg2/flipflop_ris/output_1552 ),
    .O(\blocspi_slave/i<0>/CEINV_3412 )
  );
  X_ONE #(
    .LOC ( "SLICE_X6Y21" ))
  \blocspi_slave/i<1>/LOGIC_ONE  (
    .O(\blocspi_slave/i<1>/LOGIC_ONE_3473 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y21" ))
  \blocspi_slave/i<1>/DXMUX  (
    .I(\blocspi_slave/i<1>/XORF_3498 ),
    .O(\blocspi_slave/i<1>/DXMUX_3500 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y21" ))
  \blocspi_slave/i<1>/XORF  (
    .I0(\blocspi_slave/i<1>/CYINIT_3497 ),
    .I1(\blocspi_slave/Mcount_i_lut [1]),
    .O(\blocspi_slave/i<1>/XORF_3498 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y21" ))
  \blocspi_slave/i<1>/CYMUXF  (
    .IA(\blocspi_slave/i<1>/LOGIC_ONE_3473 ),
    .IB(\blocspi_slave/i<1>/CYINIT_3497 ),
    .SEL(\blocspi_slave/i<1>/CYSELF_3479 ),
    .O(\blocspi_slave/Mcount_i_cy [1])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y21" ))
  \blocspi_slave/i<1>/CYMUXF2  (
    .IA(\blocspi_slave/i<1>/LOGIC_ONE_3473 ),
    .IB(\blocspi_slave/i<1>/LOGIC_ONE_3473 ),
    .SEL(\blocspi_slave/i<1>/CYSELF_3479 ),
    .O(\blocspi_slave/i<1>/CYMUXF2_3474 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y21" ))
  \blocspi_slave/i<1>/CYINIT  (
    .I(\blocspi_slave/Mcount_i_cy [0]),
    .O(\blocspi_slave/i<1>/CYINIT_3497 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y21" ))
  \blocspi_slave/i<1>/CYSELF  (
    .I(\blocspi_slave/Mcount_i_lut [1]),
    .O(\blocspi_slave/i<1>/CYSELF_3479 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y21" ))
  \blocspi_slave/i<1>/DYMUX  (
    .I(\blocspi_slave/i<1>/XORG_3481 ),
    .O(\blocspi_slave/i<1>/DYMUX_3483 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y21" ))
  \blocspi_slave/i<1>/XORG  (
    .I0(\blocspi_slave/Mcount_i_cy [1]),
    .I1(\blocspi_slave/Mcount_i_lut [2]),
    .O(\blocspi_slave/i<1>/XORG_3481 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y21" ))
  \blocspi_slave/i<1>/COUTUSED  (
    .I(\blocspi_slave/i<1>/CYMUXFAST_3478 ),
    .O(\blocspi_slave/Mcount_i_cy [2])
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y21" ))
  \blocspi_slave/i<1>/FASTCARRY  (
    .I(\blocspi_slave/Mcount_i_cy [0]),
    .O(\blocspi_slave/i<1>/FASTCARRY_3476 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X6Y21" ))
  \blocspi_slave/i<1>/CYAND  (
    .I0(\blocspi_slave/i<1>/CYSELG_3465 ),
    .I1(\blocspi_slave/i<1>/CYSELF_3479 ),
    .O(\blocspi_slave/i<1>/CYAND_3477 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y21" ))
  \blocspi_slave/i<1>/CYMUXFAST  (
    .IA(\blocspi_slave/i<1>/CYMUXG2_3475 ),
    .IB(\blocspi_slave/i<1>/FASTCARRY_3476 ),
    .SEL(\blocspi_slave/i<1>/CYAND_3477 ),
    .O(\blocspi_slave/i<1>/CYMUXFAST_3478 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y21" ))
  \blocspi_slave/i<1>/CYMUXG2  (
    .IA(\blocspi_slave/i<1>/LOGIC_ONE_3473 ),
    .IB(\blocspi_slave/i<1>/CYMUXF2_3474 ),
    .SEL(\blocspi_slave/i<1>/CYSELG_3465 ),
    .O(\blocspi_slave/i<1>/CYMUXG2_3475 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y21" ))
  \blocspi_slave/i<1>/CYSELG  (
    .I(\blocspi_slave/Mcount_i_lut [2]),
    .O(\blocspi_slave/i<1>/CYSELG_3465 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y21" ))
  \blocspi_slave/i<1>/SRINV  (
    .I(\stab/ssel2_1592 ),
    .O(\blocspi_slave/i<1>/SRINV_3463 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y21" ))
  \blocspi_slave/i<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/i<1>/CLKINV_3462 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y21" ))
  \blocspi_slave/i<1>/CEINV  (
    .I(\rising_edg2/flipflop_ris/output_1552 ),
    .O(\blocspi_slave/i<1>/CEINV_3461 )
  );
  X_ONE #(
    .LOC ( "SLICE_X6Y22" ))
  \blocspi_slave/i<3>/LOGIC_ONE  (
    .O(\blocspi_slave/i<3>/LOGIC_ONE_3529 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y22" ))
  \blocspi_slave/i<3>/DXMUX  (
    .I(\blocspi_slave/i<3>/XORF_3554 ),
    .O(\blocspi_slave/i<3>/DXMUX_3556 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y22" ))
  \blocspi_slave/i<3>/XORF  (
    .I0(\blocspi_slave/i<3>/CYINIT_3553 ),
    .I1(\blocspi_slave/Mcount_i_lut [3]),
    .O(\blocspi_slave/i<3>/XORF_3554 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y22" ))
  \blocspi_slave/i<3>/CYMUXF  (
    .IA(\blocspi_slave/i<3>/LOGIC_ONE_3529 ),
    .IB(\blocspi_slave/i<3>/CYINIT_3553 ),
    .SEL(\blocspi_slave/i<3>/CYSELF_3535 ),
    .O(\blocspi_slave/Mcount_i_cy [3])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y22" ))
  \blocspi_slave/i<3>/CYMUXF2  (
    .IA(\blocspi_slave/i<3>/LOGIC_ONE_3529 ),
    .IB(\blocspi_slave/i<3>/LOGIC_ONE_3529 ),
    .SEL(\blocspi_slave/i<3>/CYSELF_3535 ),
    .O(\blocspi_slave/i<3>/CYMUXF2_3530 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y22" ))
  \blocspi_slave/i<3>/CYINIT  (
    .I(\blocspi_slave/Mcount_i_cy [2]),
    .O(\blocspi_slave/i<3>/CYINIT_3553 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y22" ))
  \blocspi_slave/i<3>/CYSELF  (
    .I(\blocspi_slave/Mcount_i_lut [3]),
    .O(\blocspi_slave/i<3>/CYSELF_3535 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y22" ))
  \blocspi_slave/i<3>/DYMUX  (
    .I(\blocspi_slave/i<3>/XORG_3537 ),
    .O(\blocspi_slave/i<3>/DYMUX_3539 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y22" ))
  \blocspi_slave/i<3>/XORG  (
    .I0(\blocspi_slave/Mcount_i_cy [3]),
    .I1(\blocspi_slave/Mcount_i_lut [4]),
    .O(\blocspi_slave/i<3>/XORG_3537 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y22" ))
  \blocspi_slave/i<3>/COUTUSED  (
    .I(\blocspi_slave/i<3>/CYMUXFAST_3534 ),
    .O(\blocspi_slave/Mcount_i_cy [4])
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y22" ))
  \blocspi_slave/i<3>/FASTCARRY  (
    .I(\blocspi_slave/Mcount_i_cy [2]),
    .O(\blocspi_slave/i<3>/FASTCARRY_3532 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X6Y22" ))
  \blocspi_slave/i<3>/CYAND  (
    .I0(\blocspi_slave/i<3>/CYSELG_3521 ),
    .I1(\blocspi_slave/i<3>/CYSELF_3535 ),
    .O(\blocspi_slave/i<3>/CYAND_3533 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y22" ))
  \blocspi_slave/i<3>/CYMUXFAST  (
    .IA(\blocspi_slave/i<3>/CYMUXG2_3531 ),
    .IB(\blocspi_slave/i<3>/FASTCARRY_3532 ),
    .SEL(\blocspi_slave/i<3>/CYAND_3533 ),
    .O(\blocspi_slave/i<3>/CYMUXFAST_3534 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y22" ))
  \blocspi_slave/i<3>/CYMUXG2  (
    .IA(\blocspi_slave/i<3>/LOGIC_ONE_3529 ),
    .IB(\blocspi_slave/i<3>/CYMUXF2_3530 ),
    .SEL(\blocspi_slave/i<3>/CYSELG_3521 ),
    .O(\blocspi_slave/i<3>/CYMUXG2_3531 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y22" ))
  \blocspi_slave/i<3>/CYSELG  (
    .I(\blocspi_slave/Mcount_i_lut [4]),
    .O(\blocspi_slave/i<3>/CYSELG_3521 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y22" ))
  \blocspi_slave/i<3>/SRINV  (
    .I(\stab/ssel2_1592 ),
    .O(\blocspi_slave/i<3>/SRINV_3519 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y22" ))
  \blocspi_slave/i<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/i<3>/CLKINV_3518 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y22" ))
  \blocspi_slave/i<3>/CEINV  (
    .I(\rising_edg2/flipflop_ris/output_1552 ),
    .O(\blocspi_slave/i<3>/CEINV_3517 )
  );
  X_ONE #(
    .LOC ( "SLICE_X6Y23" ))
  \blocspi_slave/i<5>/LOGIC_ONE  (
    .O(\blocspi_slave/i<5>/LOGIC_ONE_3585 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y23" ))
  \blocspi_slave/i<5>/DXMUX  (
    .I(\blocspi_slave/i<5>/XORF_3610 ),
    .O(\blocspi_slave/i<5>/DXMUX_3612 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y23" ))
  \blocspi_slave/i<5>/XORF  (
    .I0(\blocspi_slave/i<5>/CYINIT_3609 ),
    .I1(\blocspi_slave/Mcount_i_lut [5]),
    .O(\blocspi_slave/i<5>/XORF_3610 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y23" ))
  \blocspi_slave/i<5>/CYMUXF  (
    .IA(\blocspi_slave/i<5>/LOGIC_ONE_3585 ),
    .IB(\blocspi_slave/i<5>/CYINIT_3609 ),
    .SEL(\blocspi_slave/i<5>/CYSELF_3591 ),
    .O(\blocspi_slave/Mcount_i_cy [5])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y23" ))
  \blocspi_slave/i<5>/CYMUXF2  (
    .IA(\blocspi_slave/i<5>/LOGIC_ONE_3585 ),
    .IB(\blocspi_slave/i<5>/LOGIC_ONE_3585 ),
    .SEL(\blocspi_slave/i<5>/CYSELF_3591 ),
    .O(\blocspi_slave/i<5>/CYMUXF2_3586 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y23" ))
  \blocspi_slave/i<5>/CYINIT  (
    .I(\blocspi_slave/Mcount_i_cy [4]),
    .O(\blocspi_slave/i<5>/CYINIT_3609 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y23" ))
  \blocspi_slave/i<5>/CYSELF  (
    .I(\blocspi_slave/Mcount_i_lut [5]),
    .O(\blocspi_slave/i<5>/CYSELF_3591 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y23" ))
  \blocspi_slave/i<5>/DYMUX  (
    .I(\blocspi_slave/i<5>/XORG_3593 ),
    .O(\blocspi_slave/i<5>/DYMUX_3595 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y23" ))
  \blocspi_slave/i<5>/XORG  (
    .I0(\blocspi_slave/Mcount_i_cy [5]),
    .I1(\blocspi_slave/Mcount_i_lut [6]),
    .O(\blocspi_slave/i<5>/XORG_3593 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y23" ))
  \blocspi_slave/i<5>/COUTUSED  (
    .I(\blocspi_slave/i<5>/CYMUXFAST_3590 ),
    .O(\blocspi_slave/Mcount_i_cy [6])
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y23" ))
  \blocspi_slave/i<5>/FASTCARRY  (
    .I(\blocspi_slave/Mcount_i_cy [4]),
    .O(\blocspi_slave/i<5>/FASTCARRY_3588 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X6Y23" ))
  \blocspi_slave/i<5>/CYAND  (
    .I0(\blocspi_slave/i<5>/CYSELG_3577 ),
    .I1(\blocspi_slave/i<5>/CYSELF_3591 ),
    .O(\blocspi_slave/i<5>/CYAND_3589 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y23" ))
  \blocspi_slave/i<5>/CYMUXFAST  (
    .IA(\blocspi_slave/i<5>/CYMUXG2_3587 ),
    .IB(\blocspi_slave/i<5>/FASTCARRY_3588 ),
    .SEL(\blocspi_slave/i<5>/CYAND_3589 ),
    .O(\blocspi_slave/i<5>/CYMUXFAST_3590 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y23" ))
  \blocspi_slave/i<5>/CYMUXG2  (
    .IA(\blocspi_slave/i<5>/LOGIC_ONE_3585 ),
    .IB(\blocspi_slave/i<5>/CYMUXF2_3586 ),
    .SEL(\blocspi_slave/i<5>/CYSELG_3577 ),
    .O(\blocspi_slave/i<5>/CYMUXG2_3587 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y23" ))
  \blocspi_slave/i<5>/CYSELG  (
    .I(\blocspi_slave/Mcount_i_lut [6]),
    .O(\blocspi_slave/i<5>/CYSELG_3577 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y23" ))
  \blocspi_slave/i<5>/SRINV  (
    .I(\stab/ssel2_1592 ),
    .O(\blocspi_slave/i<5>/SRINV_3575 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y23" ))
  \blocspi_slave/i<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/i<5>/CLKINV_3574 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y23" ))
  \blocspi_slave/i<5>/CEINV  (
    .I(\rising_edg2/flipflop_ris/output_1552 ),
    .O(\blocspi_slave/i<5>/CEINV_3573 )
  );
  X_ONE #(
    .LOC ( "SLICE_X6Y24" ))
  \blocspi_slave/i<7>/LOGIC_ONE  (
    .O(\blocspi_slave/i<7>/LOGIC_ONE_3641 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y24" ))
  \blocspi_slave/i<7>/DXMUX  (
    .I(\blocspi_slave/i<7>/XORF_3666 ),
    .O(\blocspi_slave/i<7>/DXMUX_3668 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y24" ))
  \blocspi_slave/i<7>/XORF  (
    .I0(\blocspi_slave/i<7>/CYINIT_3665 ),
    .I1(\blocspi_slave/Mcount_i_lut [7]),
    .O(\blocspi_slave/i<7>/XORF_3666 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y24" ))
  \blocspi_slave/i<7>/CYMUXF  (
    .IA(\blocspi_slave/i<7>/LOGIC_ONE_3641 ),
    .IB(\blocspi_slave/i<7>/CYINIT_3665 ),
    .SEL(\blocspi_slave/i<7>/CYSELF_3647 ),
    .O(\blocspi_slave/Mcount_i_cy [7])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y24" ))
  \blocspi_slave/i<7>/CYMUXF2  (
    .IA(\blocspi_slave/i<7>/LOGIC_ONE_3641 ),
    .IB(\blocspi_slave/i<7>/LOGIC_ONE_3641 ),
    .SEL(\blocspi_slave/i<7>/CYSELF_3647 ),
    .O(\blocspi_slave/i<7>/CYMUXF2_3642 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y24" ))
  \blocspi_slave/i<7>/CYINIT  (
    .I(\blocspi_slave/Mcount_i_cy [6]),
    .O(\blocspi_slave/i<7>/CYINIT_3665 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y24" ))
  \blocspi_slave/i<7>/CYSELF  (
    .I(\blocspi_slave/Mcount_i_lut [7]),
    .O(\blocspi_slave/i<7>/CYSELF_3647 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y24" ))
  \blocspi_slave/i<7>/DYMUX  (
    .I(\blocspi_slave/i<7>/XORG_3649 ),
    .O(\blocspi_slave/i<7>/DYMUX_3651 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y24" ))
  \blocspi_slave/i<7>/XORG  (
    .I0(\blocspi_slave/Mcount_i_cy [7]),
    .I1(\blocspi_slave/Mcount_i_lut [8]),
    .O(\blocspi_slave/i<7>/XORG_3649 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y24" ))
  \blocspi_slave/i<7>/COUTUSED  (
    .I(\blocspi_slave/i<7>/CYMUXFAST_3646 ),
    .O(\blocspi_slave/Mcount_i_cy [8])
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y24" ))
  \blocspi_slave/i<7>/FASTCARRY  (
    .I(\blocspi_slave/Mcount_i_cy [6]),
    .O(\blocspi_slave/i<7>/FASTCARRY_3644 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X6Y24" ))
  \blocspi_slave/i<7>/CYAND  (
    .I0(\blocspi_slave/i<7>/CYSELG_3633 ),
    .I1(\blocspi_slave/i<7>/CYSELF_3647 ),
    .O(\blocspi_slave/i<7>/CYAND_3645 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y24" ))
  \blocspi_slave/i<7>/CYMUXFAST  (
    .IA(\blocspi_slave/i<7>/CYMUXG2_3643 ),
    .IB(\blocspi_slave/i<7>/FASTCARRY_3644 ),
    .SEL(\blocspi_slave/i<7>/CYAND_3645 ),
    .O(\blocspi_slave/i<7>/CYMUXFAST_3646 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y24" ))
  \blocspi_slave/i<7>/CYMUXG2  (
    .IA(\blocspi_slave/i<7>/LOGIC_ONE_3641 ),
    .IB(\blocspi_slave/i<7>/CYMUXF2_3642 ),
    .SEL(\blocspi_slave/i<7>/CYSELG_3633 ),
    .O(\blocspi_slave/i<7>/CYMUXG2_3643 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y24" ))
  \blocspi_slave/i<7>/CYSELG  (
    .I(\blocspi_slave/Mcount_i_lut [8]),
    .O(\blocspi_slave/i<7>/CYSELG_3633 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y24" ))
  \blocspi_slave/i<7>/SRINV  (
    .I(\stab/ssel2_1592 ),
    .O(\blocspi_slave/i<7>/SRINV_3631 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y24" ))
  \blocspi_slave/i<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/i<7>/CLKINV_3630 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y24" ))
  \blocspi_slave/i<7>/CEINV  (
    .I(\rising_edg2/flipflop_ris/output_1552 ),
    .O(\blocspi_slave/i<7>/CEINV_3629 )
  );
  X_ONE #(
    .LOC ( "SLICE_X6Y25" ))
  \blocspi_slave/i<9>/LOGIC_ONE  (
    .O(\blocspi_slave/i<9>/LOGIC_ONE_3697 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y25" ))
  \blocspi_slave/i<9>/DXMUX  (
    .I(\blocspi_slave/i<9>/XORF_3722 ),
    .O(\blocspi_slave/i<9>/DXMUX_3724 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y25" ))
  \blocspi_slave/i<9>/XORF  (
    .I0(\blocspi_slave/i<9>/CYINIT_3721 ),
    .I1(\blocspi_slave/Mcount_i_lut [9]),
    .O(\blocspi_slave/i<9>/XORF_3722 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y25" ))
  \blocspi_slave/i<9>/CYMUXF  (
    .IA(\blocspi_slave/i<9>/LOGIC_ONE_3697 ),
    .IB(\blocspi_slave/i<9>/CYINIT_3721 ),
    .SEL(\blocspi_slave/i<9>/CYSELF_3703 ),
    .O(\blocspi_slave/Mcount_i_cy [9])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y25" ))
  \blocspi_slave/i<9>/CYMUXF2  (
    .IA(\blocspi_slave/i<9>/LOGIC_ONE_3697 ),
    .IB(\blocspi_slave/i<9>/LOGIC_ONE_3697 ),
    .SEL(\blocspi_slave/i<9>/CYSELF_3703 ),
    .O(\blocspi_slave/i<9>/CYMUXF2_3698 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y25" ))
  \blocspi_slave/i<9>/CYINIT  (
    .I(\blocspi_slave/Mcount_i_cy [8]),
    .O(\blocspi_slave/i<9>/CYINIT_3721 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y25" ))
  \blocspi_slave/i<9>/CYSELF  (
    .I(\blocspi_slave/Mcount_i_lut [9]),
    .O(\blocspi_slave/i<9>/CYSELF_3703 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y25" ))
  \blocspi_slave/i<9>/DYMUX  (
    .I(\blocspi_slave/i<9>/XORG_3705 ),
    .O(\blocspi_slave/i<9>/DYMUX_3707 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y25" ))
  \blocspi_slave/i<9>/XORG  (
    .I0(\blocspi_slave/Mcount_i_cy [9]),
    .I1(\blocspi_slave/Mcount_i_lut [10]),
    .O(\blocspi_slave/i<9>/XORG_3705 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y25" ))
  \blocspi_slave/i<9>/COUTUSED  (
    .I(\blocspi_slave/i<9>/CYMUXFAST_3702 ),
    .O(\blocspi_slave/Mcount_i_cy [10])
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y25" ))
  \blocspi_slave/i<9>/FASTCARRY  (
    .I(\blocspi_slave/Mcount_i_cy [8]),
    .O(\blocspi_slave/i<9>/FASTCARRY_3700 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X6Y25" ))
  \blocspi_slave/i<9>/CYAND  (
    .I0(\blocspi_slave/i<9>/CYSELG_3689 ),
    .I1(\blocspi_slave/i<9>/CYSELF_3703 ),
    .O(\blocspi_slave/i<9>/CYAND_3701 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y25" ))
  \blocspi_slave/i<9>/CYMUXFAST  (
    .IA(\blocspi_slave/i<9>/CYMUXG2_3699 ),
    .IB(\blocspi_slave/i<9>/FASTCARRY_3700 ),
    .SEL(\blocspi_slave/i<9>/CYAND_3701 ),
    .O(\blocspi_slave/i<9>/CYMUXFAST_3702 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y25" ))
  \blocspi_slave/i<9>/CYMUXG2  (
    .IA(\blocspi_slave/i<9>/LOGIC_ONE_3697 ),
    .IB(\blocspi_slave/i<9>/CYMUXF2_3698 ),
    .SEL(\blocspi_slave/i<9>/CYSELG_3689 ),
    .O(\blocspi_slave/i<9>/CYMUXG2_3699 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y25" ))
  \blocspi_slave/i<9>/CYSELG  (
    .I(\blocspi_slave/Mcount_i_lut [10]),
    .O(\blocspi_slave/i<9>/CYSELG_3689 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y25" ))
  \blocspi_slave/i<9>/SRINV  (
    .I(\stab/ssel2_1592 ),
    .O(\blocspi_slave/i<9>/SRINV_3687 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y25" ))
  \blocspi_slave/i<9>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/i<9>/CLKINV_3686 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y25" ))
  \blocspi_slave/i<9>/CEINV  (
    .I(\rising_edg2/flipflop_ris/output_1552 ),
    .O(\blocspi_slave/i<9>/CEINV_3685 )
  );
  X_ONE #(
    .LOC ( "SLICE_X6Y26" ))
  \blocspi_slave/i<11>/LOGIC_ONE  (
    .O(\blocspi_slave/i<11>/LOGIC_ONE_3753 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y26" ))
  \blocspi_slave/i<11>/DXMUX  (
    .I(\blocspi_slave/i<11>/XORF_3778 ),
    .O(\blocspi_slave/i<11>/DXMUX_3780 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y26" ))
  \blocspi_slave/i<11>/XORF  (
    .I0(\blocspi_slave/i<11>/CYINIT_3777 ),
    .I1(\blocspi_slave/Mcount_i_lut [11]),
    .O(\blocspi_slave/i<11>/XORF_3778 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y26" ))
  \blocspi_slave/i<11>/CYMUXF  (
    .IA(\blocspi_slave/i<11>/LOGIC_ONE_3753 ),
    .IB(\blocspi_slave/i<11>/CYINIT_3777 ),
    .SEL(\blocspi_slave/i<11>/CYSELF_3759 ),
    .O(\blocspi_slave/Mcount_i_cy [11])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y26" ))
  \blocspi_slave/i<11>/CYMUXF2  (
    .IA(\blocspi_slave/i<11>/LOGIC_ONE_3753 ),
    .IB(\blocspi_slave/i<11>/LOGIC_ONE_3753 ),
    .SEL(\blocspi_slave/i<11>/CYSELF_3759 ),
    .O(\blocspi_slave/i<11>/CYMUXF2_3754 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y26" ))
  \blocspi_slave/i<11>/CYINIT  (
    .I(\blocspi_slave/Mcount_i_cy [10]),
    .O(\blocspi_slave/i<11>/CYINIT_3777 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y26" ))
  \blocspi_slave/i<11>/CYSELF  (
    .I(\blocspi_slave/Mcount_i_lut [11]),
    .O(\blocspi_slave/i<11>/CYSELF_3759 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y26" ))
  \blocspi_slave/i<11>/DYMUX  (
    .I(\blocspi_slave/i<11>/XORG_3761 ),
    .O(\blocspi_slave/i<11>/DYMUX_3763 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y26" ))
  \blocspi_slave/i<11>/XORG  (
    .I0(\blocspi_slave/Mcount_i_cy [11]),
    .I1(\blocspi_slave/Mcount_i_lut [12]),
    .O(\blocspi_slave/i<11>/XORG_3761 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y26" ))
  \blocspi_slave/i<11>/COUTUSED  (
    .I(\blocspi_slave/i<11>/CYMUXFAST_3758 ),
    .O(\blocspi_slave/Mcount_i_cy [12])
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y26" ))
  \blocspi_slave/i<11>/FASTCARRY  (
    .I(\blocspi_slave/Mcount_i_cy [10]),
    .O(\blocspi_slave/i<11>/FASTCARRY_3756 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X6Y26" ))
  \blocspi_slave/i<11>/CYAND  (
    .I0(\blocspi_slave/i<11>/CYSELG_3745 ),
    .I1(\blocspi_slave/i<11>/CYSELF_3759 ),
    .O(\blocspi_slave/i<11>/CYAND_3757 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y26" ))
  \blocspi_slave/i<11>/CYMUXFAST  (
    .IA(\blocspi_slave/i<11>/CYMUXG2_3755 ),
    .IB(\blocspi_slave/i<11>/FASTCARRY_3756 ),
    .SEL(\blocspi_slave/i<11>/CYAND_3757 ),
    .O(\blocspi_slave/i<11>/CYMUXFAST_3758 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y26" ))
  \blocspi_slave/i<11>/CYMUXG2  (
    .IA(\blocspi_slave/i<11>/LOGIC_ONE_3753 ),
    .IB(\blocspi_slave/i<11>/CYMUXF2_3754 ),
    .SEL(\blocspi_slave/i<11>/CYSELG_3745 ),
    .O(\blocspi_slave/i<11>/CYMUXG2_3755 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y26" ))
  \blocspi_slave/i<11>/CYSELG  (
    .I(\blocspi_slave/Mcount_i_lut [12]),
    .O(\blocspi_slave/i<11>/CYSELG_3745 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y26" ))
  \blocspi_slave/i<11>/SRINV  (
    .I(\stab/ssel2_1592 ),
    .O(\blocspi_slave/i<11>/SRINV_3743 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y26" ))
  \blocspi_slave/i<11>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/i<11>/CLKINV_3742 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y26" ))
  \blocspi_slave/i<11>/CEINV  (
    .I(\rising_edg2/flipflop_ris/output_1552 ),
    .O(\blocspi_slave/i<11>/CEINV_3741 )
  );
  X_ONE #(
    .LOC ( "SLICE_X6Y27" ))
  \blocspi_slave/i<13>/LOGIC_ONE  (
    .O(\blocspi_slave/i<13>/LOGIC_ONE_3809 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y27" ))
  \blocspi_slave/i<13>/DXMUX  (
    .I(\blocspi_slave/i<13>/XORF_3834 ),
    .O(\blocspi_slave/i<13>/DXMUX_3836 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y27" ))
  \blocspi_slave/i<13>/XORF  (
    .I0(\blocspi_slave/i<13>/CYINIT_3833 ),
    .I1(\blocspi_slave/Mcount_i_lut [13]),
    .O(\blocspi_slave/i<13>/XORF_3834 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y27" ))
  \blocspi_slave/i<13>/CYMUXF  (
    .IA(\blocspi_slave/i<13>/LOGIC_ONE_3809 ),
    .IB(\blocspi_slave/i<13>/CYINIT_3833 ),
    .SEL(\blocspi_slave/i<13>/CYSELF_3815 ),
    .O(\blocspi_slave/Mcount_i_cy [13])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y27" ))
  \blocspi_slave/i<13>/CYMUXF2  (
    .IA(\blocspi_slave/i<13>/LOGIC_ONE_3809 ),
    .IB(\blocspi_slave/i<13>/LOGIC_ONE_3809 ),
    .SEL(\blocspi_slave/i<13>/CYSELF_3815 ),
    .O(\blocspi_slave/i<13>/CYMUXF2_3810 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y27" ))
  \blocspi_slave/i<13>/CYINIT  (
    .I(\blocspi_slave/Mcount_i_cy [12]),
    .O(\blocspi_slave/i<13>/CYINIT_3833 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y27" ))
  \blocspi_slave/i<13>/CYSELF  (
    .I(\blocspi_slave/Mcount_i_lut [13]),
    .O(\blocspi_slave/i<13>/CYSELF_3815 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y27" ))
  \blocspi_slave/i<13>/DYMUX  (
    .I(\blocspi_slave/i<13>/XORG_3817 ),
    .O(\blocspi_slave/i<13>/DYMUX_3819 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y27" ))
  \blocspi_slave/i<13>/XORG  (
    .I0(\blocspi_slave/Mcount_i_cy [13]),
    .I1(\blocspi_slave/Mcount_i_lut [14]),
    .O(\blocspi_slave/i<13>/XORG_3817 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y27" ))
  \blocspi_slave/i<13>/COUTUSED  (
    .I(\blocspi_slave/i<13>/CYMUXFAST_3814 ),
    .O(\blocspi_slave/Mcount_i_cy [14])
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y27" ))
  \blocspi_slave/i<13>/FASTCARRY  (
    .I(\blocspi_slave/Mcount_i_cy [12]),
    .O(\blocspi_slave/i<13>/FASTCARRY_3812 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X6Y27" ))
  \blocspi_slave/i<13>/CYAND  (
    .I0(\blocspi_slave/i<13>/CYSELG_3801 ),
    .I1(\blocspi_slave/i<13>/CYSELF_3815 ),
    .O(\blocspi_slave/i<13>/CYAND_3813 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y27" ))
  \blocspi_slave/i<13>/CYMUXFAST  (
    .IA(\blocspi_slave/i<13>/CYMUXG2_3811 ),
    .IB(\blocspi_slave/i<13>/FASTCARRY_3812 ),
    .SEL(\blocspi_slave/i<13>/CYAND_3813 ),
    .O(\blocspi_slave/i<13>/CYMUXFAST_3814 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y27" ))
  \blocspi_slave/i<13>/CYMUXG2  (
    .IA(\blocspi_slave/i<13>/LOGIC_ONE_3809 ),
    .IB(\blocspi_slave/i<13>/CYMUXF2_3810 ),
    .SEL(\blocspi_slave/i<13>/CYSELG_3801 ),
    .O(\blocspi_slave/i<13>/CYMUXG2_3811 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y27" ))
  \blocspi_slave/i<13>/CYSELG  (
    .I(\blocspi_slave/Mcount_i_lut [14]),
    .O(\blocspi_slave/i<13>/CYSELG_3801 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y27" ))
  \blocspi_slave/i<13>/SRINV  (
    .I(\stab/ssel2_1592 ),
    .O(\blocspi_slave/i<13>/SRINV_3799 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y27" ))
  \blocspi_slave/i<13>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/i<13>/CLKINV_3798 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y27" ))
  \blocspi_slave/i<13>/CEINV  (
    .I(\rising_edg2/flipflop_ris/output_1552 ),
    .O(\blocspi_slave/i<13>/CEINV_3797 )
  );
  X_ONE #(
    .LOC ( "SLICE_X6Y28" ))
  \blocspi_slave/i<15>/LOGIC_ONE  (
    .O(\blocspi_slave/i<15>/LOGIC_ONE_3865 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y28" ))
  \blocspi_slave/i<15>/DXMUX  (
    .I(\blocspi_slave/i<15>/XORF_3890 ),
    .O(\blocspi_slave/i<15>/DXMUX_3892 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y28" ))
  \blocspi_slave/i<15>/XORF  (
    .I0(\blocspi_slave/i<15>/CYINIT_3889 ),
    .I1(\blocspi_slave/Mcount_i_lut [15]),
    .O(\blocspi_slave/i<15>/XORF_3890 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y28" ))
  \blocspi_slave/i<15>/CYMUXF  (
    .IA(\blocspi_slave/i<15>/LOGIC_ONE_3865 ),
    .IB(\blocspi_slave/i<15>/CYINIT_3889 ),
    .SEL(\blocspi_slave/i<15>/CYSELF_3871 ),
    .O(\blocspi_slave/Mcount_i_cy [15])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y28" ))
  \blocspi_slave/i<15>/CYMUXF2  (
    .IA(\blocspi_slave/i<15>/LOGIC_ONE_3865 ),
    .IB(\blocspi_slave/i<15>/LOGIC_ONE_3865 ),
    .SEL(\blocspi_slave/i<15>/CYSELF_3871 ),
    .O(\blocspi_slave/i<15>/CYMUXF2_3866 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y28" ))
  \blocspi_slave/i<15>/CYINIT  (
    .I(\blocspi_slave/Mcount_i_cy [14]),
    .O(\blocspi_slave/i<15>/CYINIT_3889 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y28" ))
  \blocspi_slave/i<15>/CYSELF  (
    .I(\blocspi_slave/Mcount_i_lut [15]),
    .O(\blocspi_slave/i<15>/CYSELF_3871 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y28" ))
  \blocspi_slave/i<15>/DYMUX  (
    .I(\blocspi_slave/i<15>/XORG_3873 ),
    .O(\blocspi_slave/i<15>/DYMUX_3875 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y28" ))
  \blocspi_slave/i<15>/XORG  (
    .I0(\blocspi_slave/Mcount_i_cy [15]),
    .I1(\blocspi_slave/Mcount_i_lut [16]),
    .O(\blocspi_slave/i<15>/XORG_3873 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y28" ))
  \blocspi_slave/i<15>/COUTUSED  (
    .I(\blocspi_slave/i<15>/CYMUXFAST_3870 ),
    .O(\blocspi_slave/Mcount_i_cy [16])
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y28" ))
  \blocspi_slave/i<15>/FASTCARRY  (
    .I(\blocspi_slave/Mcount_i_cy [14]),
    .O(\blocspi_slave/i<15>/FASTCARRY_3868 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X6Y28" ))
  \blocspi_slave/i<15>/CYAND  (
    .I0(\blocspi_slave/i<15>/CYSELG_3857 ),
    .I1(\blocspi_slave/i<15>/CYSELF_3871 ),
    .O(\blocspi_slave/i<15>/CYAND_3869 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y28" ))
  \blocspi_slave/i<15>/CYMUXFAST  (
    .IA(\blocspi_slave/i<15>/CYMUXG2_3867 ),
    .IB(\blocspi_slave/i<15>/FASTCARRY_3868 ),
    .SEL(\blocspi_slave/i<15>/CYAND_3869 ),
    .O(\blocspi_slave/i<15>/CYMUXFAST_3870 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y28" ))
  \blocspi_slave/i<15>/CYMUXG2  (
    .IA(\blocspi_slave/i<15>/LOGIC_ONE_3865 ),
    .IB(\blocspi_slave/i<15>/CYMUXF2_3866 ),
    .SEL(\blocspi_slave/i<15>/CYSELG_3857 ),
    .O(\blocspi_slave/i<15>/CYMUXG2_3867 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y28" ))
  \blocspi_slave/i<15>/CYSELG  (
    .I(\blocspi_slave/Mcount_i_lut [16]),
    .O(\blocspi_slave/i<15>/CYSELG_3857 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y28" ))
  \blocspi_slave/i<15>/SRINV  (
    .I(\stab/ssel2_1592 ),
    .O(\blocspi_slave/i<15>/SRINV_3855 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y28" ))
  \blocspi_slave/i<15>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/i<15>/CLKINV_3854 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y28" ))
  \blocspi_slave/i<15>/CEINV  (
    .I(\rising_edg2/flipflop_ris/output_1552 ),
    .O(\blocspi_slave/i<15>/CEINV_3853 )
  );
  X_ONE #(
    .LOC ( "SLICE_X6Y29" ))
  \blocspi_slave/i<17>/LOGIC_ONE  (
    .O(\blocspi_slave/i<17>/LOGIC_ONE_3921 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y29" ))
  \blocspi_slave/i<17>/DXMUX  (
    .I(\blocspi_slave/i<17>/XORF_3946 ),
    .O(\blocspi_slave/i<17>/DXMUX_3948 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y29" ))
  \blocspi_slave/i<17>/XORF  (
    .I0(\blocspi_slave/i<17>/CYINIT_3945 ),
    .I1(\blocspi_slave/Mcount_i_lut [17]),
    .O(\blocspi_slave/i<17>/XORF_3946 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y29" ))
  \blocspi_slave/i<17>/CYMUXF  (
    .IA(\blocspi_slave/i<17>/LOGIC_ONE_3921 ),
    .IB(\blocspi_slave/i<17>/CYINIT_3945 ),
    .SEL(\blocspi_slave/i<17>/CYSELF_3927 ),
    .O(\blocspi_slave/Mcount_i_cy [17])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y29" ))
  \blocspi_slave/i<17>/CYMUXF2  (
    .IA(\blocspi_slave/i<17>/LOGIC_ONE_3921 ),
    .IB(\blocspi_slave/i<17>/LOGIC_ONE_3921 ),
    .SEL(\blocspi_slave/i<17>/CYSELF_3927 ),
    .O(\blocspi_slave/i<17>/CYMUXF2_3922 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y29" ))
  \blocspi_slave/i<17>/CYINIT  (
    .I(\blocspi_slave/Mcount_i_cy [16]),
    .O(\blocspi_slave/i<17>/CYINIT_3945 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y29" ))
  \blocspi_slave/i<17>/CYSELF  (
    .I(\blocspi_slave/Mcount_i_lut [17]),
    .O(\blocspi_slave/i<17>/CYSELF_3927 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y29" ))
  \blocspi_slave/i<17>/DYMUX  (
    .I(\blocspi_slave/i<17>/XORG_3929 ),
    .O(\blocspi_slave/i<17>/DYMUX_3931 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y29" ))
  \blocspi_slave/i<17>/XORG  (
    .I0(\blocspi_slave/Mcount_i_cy [17]),
    .I1(\blocspi_slave/Mcount_i_lut [18]),
    .O(\blocspi_slave/i<17>/XORG_3929 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y29" ))
  \blocspi_slave/i<17>/COUTUSED  (
    .I(\blocspi_slave/i<17>/CYMUXFAST_3926 ),
    .O(\blocspi_slave/Mcount_i_cy [18])
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y29" ))
  \blocspi_slave/i<17>/FASTCARRY  (
    .I(\blocspi_slave/Mcount_i_cy [16]),
    .O(\blocspi_slave/i<17>/FASTCARRY_3924 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X6Y29" ))
  \blocspi_slave/i<17>/CYAND  (
    .I0(\blocspi_slave/i<17>/CYSELG_3913 ),
    .I1(\blocspi_slave/i<17>/CYSELF_3927 ),
    .O(\blocspi_slave/i<17>/CYAND_3925 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y29" ))
  \blocspi_slave/i<17>/CYMUXFAST  (
    .IA(\blocspi_slave/i<17>/CYMUXG2_3923 ),
    .IB(\blocspi_slave/i<17>/FASTCARRY_3924 ),
    .SEL(\blocspi_slave/i<17>/CYAND_3925 ),
    .O(\blocspi_slave/i<17>/CYMUXFAST_3926 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y29" ))
  \blocspi_slave/i<17>/CYMUXG2  (
    .IA(\blocspi_slave/i<17>/LOGIC_ONE_3921 ),
    .IB(\blocspi_slave/i<17>/CYMUXF2_3922 ),
    .SEL(\blocspi_slave/i<17>/CYSELG_3913 ),
    .O(\blocspi_slave/i<17>/CYMUXG2_3923 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y29" ))
  \blocspi_slave/i<17>/CYSELG  (
    .I(\blocspi_slave/Mcount_i_lut [18]),
    .O(\blocspi_slave/i<17>/CYSELG_3913 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y29" ))
  \blocspi_slave/i<17>/SRINV  (
    .I(\stab/ssel2_1592 ),
    .O(\blocspi_slave/i<17>/SRINV_3911 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y29" ))
  \blocspi_slave/i<17>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/i<17>/CLKINV_3910 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y29" ))
  \blocspi_slave/i<17>/CEINV  (
    .I(\rising_edg2/flipflop_ris/output_1552 ),
    .O(\blocspi_slave/i<17>/CEINV_3909 )
  );
  X_ONE #(
    .LOC ( "SLICE_X6Y30" ))
  \blocspi_slave/i<19>/LOGIC_ONE  (
    .O(\blocspi_slave/i<19>/LOGIC_ONE_3977 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y30" ))
  \blocspi_slave/i<19>/DXMUX  (
    .I(\blocspi_slave/i<19>/XORF_4002 ),
    .O(\blocspi_slave/i<19>/DXMUX_4004 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y30" ))
  \blocspi_slave/i<19>/XORF  (
    .I0(\blocspi_slave/i<19>/CYINIT_4001 ),
    .I1(\blocspi_slave/Mcount_i_lut [19]),
    .O(\blocspi_slave/i<19>/XORF_4002 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y30" ))
  \blocspi_slave/i<19>/CYMUXF  (
    .IA(\blocspi_slave/i<19>/LOGIC_ONE_3977 ),
    .IB(\blocspi_slave/i<19>/CYINIT_4001 ),
    .SEL(\blocspi_slave/i<19>/CYSELF_3983 ),
    .O(\blocspi_slave/Mcount_i_cy [19])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y30" ))
  \blocspi_slave/i<19>/CYMUXF2  (
    .IA(\blocspi_slave/i<19>/LOGIC_ONE_3977 ),
    .IB(\blocspi_slave/i<19>/LOGIC_ONE_3977 ),
    .SEL(\blocspi_slave/i<19>/CYSELF_3983 ),
    .O(\blocspi_slave/i<19>/CYMUXF2_3978 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y30" ))
  \blocspi_slave/i<19>/CYINIT  (
    .I(\blocspi_slave/Mcount_i_cy [18]),
    .O(\blocspi_slave/i<19>/CYINIT_4001 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y30" ))
  \blocspi_slave/i<19>/CYSELF  (
    .I(\blocspi_slave/Mcount_i_lut [19]),
    .O(\blocspi_slave/i<19>/CYSELF_3983 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y30" ))
  \blocspi_slave/i<19>/DYMUX  (
    .I(\blocspi_slave/i<19>/XORG_3985 ),
    .O(\blocspi_slave/i<19>/DYMUX_3987 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y30" ))
  \blocspi_slave/i<19>/XORG  (
    .I0(\blocspi_slave/Mcount_i_cy [19]),
    .I1(\blocspi_slave/Mcount_i_lut [20]),
    .O(\blocspi_slave/i<19>/XORG_3985 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y30" ))
  \blocspi_slave/i<19>/COUTUSED  (
    .I(\blocspi_slave/i<19>/CYMUXFAST_3982 ),
    .O(\blocspi_slave/Mcount_i_cy [20])
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y30" ))
  \blocspi_slave/i<19>/FASTCARRY  (
    .I(\blocspi_slave/Mcount_i_cy [18]),
    .O(\blocspi_slave/i<19>/FASTCARRY_3980 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X6Y30" ))
  \blocspi_slave/i<19>/CYAND  (
    .I0(\blocspi_slave/i<19>/CYSELG_3969 ),
    .I1(\blocspi_slave/i<19>/CYSELF_3983 ),
    .O(\blocspi_slave/i<19>/CYAND_3981 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y30" ))
  \blocspi_slave/i<19>/CYMUXFAST  (
    .IA(\blocspi_slave/i<19>/CYMUXG2_3979 ),
    .IB(\blocspi_slave/i<19>/FASTCARRY_3980 ),
    .SEL(\blocspi_slave/i<19>/CYAND_3981 ),
    .O(\blocspi_slave/i<19>/CYMUXFAST_3982 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y30" ))
  \blocspi_slave/i<19>/CYMUXG2  (
    .IA(\blocspi_slave/i<19>/LOGIC_ONE_3977 ),
    .IB(\blocspi_slave/i<19>/CYMUXF2_3978 ),
    .SEL(\blocspi_slave/i<19>/CYSELG_3969 ),
    .O(\blocspi_slave/i<19>/CYMUXG2_3979 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y30" ))
  \blocspi_slave/i<19>/CYSELG  (
    .I(\blocspi_slave/Mcount_i_lut [20]),
    .O(\blocspi_slave/i<19>/CYSELG_3969 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y30" ))
  \blocspi_slave/i<19>/SRINV  (
    .I(\stab/ssel2_1592 ),
    .O(\blocspi_slave/i<19>/SRINV_3967 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y30" ))
  \blocspi_slave/i<19>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/i<19>/CLKINV_3966 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y30" ))
  \blocspi_slave/i<19>/CEINV  (
    .I(\rising_edg2/flipflop_ris/output_1552 ),
    .O(\blocspi_slave/i<19>/CEINV_3965 )
  );
  X_ONE #(
    .LOC ( "SLICE_X6Y31" ))
  \blocspi_slave/i<21>/LOGIC_ONE  (
    .O(\blocspi_slave/i<21>/LOGIC_ONE_4033 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y31" ))
  \blocspi_slave/i<21>/DXMUX  (
    .I(\blocspi_slave/i<21>/XORF_4058 ),
    .O(\blocspi_slave/i<21>/DXMUX_4060 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y31" ))
  \blocspi_slave/i<21>/XORF  (
    .I0(\blocspi_slave/i<21>/CYINIT_4057 ),
    .I1(\blocspi_slave/Mcount_i_lut [21]),
    .O(\blocspi_slave/i<21>/XORF_4058 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y31" ))
  \blocspi_slave/i<21>/CYMUXF  (
    .IA(\blocspi_slave/i<21>/LOGIC_ONE_4033 ),
    .IB(\blocspi_slave/i<21>/CYINIT_4057 ),
    .SEL(\blocspi_slave/i<21>/CYSELF_4039 ),
    .O(\blocspi_slave/Mcount_i_cy [21])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y31" ))
  \blocspi_slave/i<21>/CYMUXF2  (
    .IA(\blocspi_slave/i<21>/LOGIC_ONE_4033 ),
    .IB(\blocspi_slave/i<21>/LOGIC_ONE_4033 ),
    .SEL(\blocspi_slave/i<21>/CYSELF_4039 ),
    .O(\blocspi_slave/i<21>/CYMUXF2_4034 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y31" ))
  \blocspi_slave/i<21>/CYINIT  (
    .I(\blocspi_slave/Mcount_i_cy [20]),
    .O(\blocspi_slave/i<21>/CYINIT_4057 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y31" ))
  \blocspi_slave/i<21>/CYSELF  (
    .I(\blocspi_slave/Mcount_i_lut [21]),
    .O(\blocspi_slave/i<21>/CYSELF_4039 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y31" ))
  \blocspi_slave/i<21>/DYMUX  (
    .I(\blocspi_slave/i<21>/XORG_4041 ),
    .O(\blocspi_slave/i<21>/DYMUX_4043 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y31" ))
  \blocspi_slave/i<21>/XORG  (
    .I0(\blocspi_slave/Mcount_i_cy [21]),
    .I1(\blocspi_slave/Mcount_i_lut [22]),
    .O(\blocspi_slave/i<21>/XORG_4041 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y31" ))
  \blocspi_slave/i<21>/COUTUSED  (
    .I(\blocspi_slave/i<21>/CYMUXFAST_4038 ),
    .O(\blocspi_slave/Mcount_i_cy [22])
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y31" ))
  \blocspi_slave/i<21>/FASTCARRY  (
    .I(\blocspi_slave/Mcount_i_cy [20]),
    .O(\blocspi_slave/i<21>/FASTCARRY_4036 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X6Y31" ))
  \blocspi_slave/i<21>/CYAND  (
    .I0(\blocspi_slave/i<21>/CYSELG_4025 ),
    .I1(\blocspi_slave/i<21>/CYSELF_4039 ),
    .O(\blocspi_slave/i<21>/CYAND_4037 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y31" ))
  \blocspi_slave/i<21>/CYMUXFAST  (
    .IA(\blocspi_slave/i<21>/CYMUXG2_4035 ),
    .IB(\blocspi_slave/i<21>/FASTCARRY_4036 ),
    .SEL(\blocspi_slave/i<21>/CYAND_4037 ),
    .O(\blocspi_slave/i<21>/CYMUXFAST_4038 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y31" ))
  \blocspi_slave/i<21>/CYMUXG2  (
    .IA(\blocspi_slave/i<21>/LOGIC_ONE_4033 ),
    .IB(\blocspi_slave/i<21>/CYMUXF2_4034 ),
    .SEL(\blocspi_slave/i<21>/CYSELG_4025 ),
    .O(\blocspi_slave/i<21>/CYMUXG2_4035 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y31" ))
  \blocspi_slave/i<21>/CYSELG  (
    .I(\blocspi_slave/Mcount_i_lut [22]),
    .O(\blocspi_slave/i<21>/CYSELG_4025 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y31" ))
  \blocspi_slave/i<21>/SRINV  (
    .I(\stab/ssel2_1592 ),
    .O(\blocspi_slave/i<21>/SRINV_4023 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y31" ))
  \blocspi_slave/i<21>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/i<21>/CLKINV_4022 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y31" ))
  \blocspi_slave/i<21>/CEINV  (
    .I(\rising_edg2/flipflop_ris/output_1552 ),
    .O(\blocspi_slave/i<21>/CEINV_4021 )
  );
  X_ONE #(
    .LOC ( "SLICE_X6Y32" ))
  \blocspi_slave/i<23>/LOGIC_ONE  (
    .O(\blocspi_slave/i<23>/LOGIC_ONE_4089 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y32" ))
  \blocspi_slave/i<23>/DXMUX  (
    .I(\blocspi_slave/i<23>/XORF_4114 ),
    .O(\blocspi_slave/i<23>/DXMUX_4116 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y32" ))
  \blocspi_slave/i<23>/XORF  (
    .I0(\blocspi_slave/i<23>/CYINIT_4113 ),
    .I1(\blocspi_slave/Mcount_i_lut [23]),
    .O(\blocspi_slave/i<23>/XORF_4114 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y32" ))
  \blocspi_slave/i<23>/CYMUXF  (
    .IA(\blocspi_slave/i<23>/LOGIC_ONE_4089 ),
    .IB(\blocspi_slave/i<23>/CYINIT_4113 ),
    .SEL(\blocspi_slave/i<23>/CYSELF_4095 ),
    .O(\blocspi_slave/Mcount_i_cy [23])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y32" ))
  \blocspi_slave/i<23>/CYMUXF2  (
    .IA(\blocspi_slave/i<23>/LOGIC_ONE_4089 ),
    .IB(\blocspi_slave/i<23>/LOGIC_ONE_4089 ),
    .SEL(\blocspi_slave/i<23>/CYSELF_4095 ),
    .O(\blocspi_slave/i<23>/CYMUXF2_4090 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y32" ))
  \blocspi_slave/i<23>/CYINIT  (
    .I(\blocspi_slave/Mcount_i_cy [22]),
    .O(\blocspi_slave/i<23>/CYINIT_4113 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y32" ))
  \blocspi_slave/i<23>/CYSELF  (
    .I(\blocspi_slave/Mcount_i_lut [23]),
    .O(\blocspi_slave/i<23>/CYSELF_4095 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y32" ))
  \blocspi_slave/i<23>/DYMUX  (
    .I(\blocspi_slave/i<23>/XORG_4097 ),
    .O(\blocspi_slave/i<23>/DYMUX_4099 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y32" ))
  \blocspi_slave/i<23>/XORG  (
    .I0(\blocspi_slave/Mcount_i_cy [23]),
    .I1(\blocspi_slave/Mcount_i_lut [24]),
    .O(\blocspi_slave/i<23>/XORG_4097 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y32" ))
  \blocspi_slave/i<23>/COUTUSED  (
    .I(\blocspi_slave/i<23>/CYMUXFAST_4094 ),
    .O(\blocspi_slave/Mcount_i_cy [24])
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y32" ))
  \blocspi_slave/i<23>/FASTCARRY  (
    .I(\blocspi_slave/Mcount_i_cy [22]),
    .O(\blocspi_slave/i<23>/FASTCARRY_4092 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X6Y32" ))
  \blocspi_slave/i<23>/CYAND  (
    .I0(\blocspi_slave/i<23>/CYSELG_4081 ),
    .I1(\blocspi_slave/i<23>/CYSELF_4095 ),
    .O(\blocspi_slave/i<23>/CYAND_4093 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y32" ))
  \blocspi_slave/i<23>/CYMUXFAST  (
    .IA(\blocspi_slave/i<23>/CYMUXG2_4091 ),
    .IB(\blocspi_slave/i<23>/FASTCARRY_4092 ),
    .SEL(\blocspi_slave/i<23>/CYAND_4093 ),
    .O(\blocspi_slave/i<23>/CYMUXFAST_4094 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y32" ))
  \blocspi_slave/i<23>/CYMUXG2  (
    .IA(\blocspi_slave/i<23>/LOGIC_ONE_4089 ),
    .IB(\blocspi_slave/i<23>/CYMUXF2_4090 ),
    .SEL(\blocspi_slave/i<23>/CYSELG_4081 ),
    .O(\blocspi_slave/i<23>/CYMUXG2_4091 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y32" ))
  \blocspi_slave/i<23>/CYSELG  (
    .I(\blocspi_slave/Mcount_i_lut [24]),
    .O(\blocspi_slave/i<23>/CYSELG_4081 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y32" ))
  \blocspi_slave/i<23>/SRINV  (
    .I(\stab/ssel2_1592 ),
    .O(\blocspi_slave/i<23>/SRINV_4079 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y32" ))
  \blocspi_slave/i<23>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/i<23>/CLKINV_4078 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y32" ))
  \blocspi_slave/i<23>/CEINV  (
    .I(\rising_edg2/flipflop_ris/output_1552 ),
    .O(\blocspi_slave/i<23>/CEINV_4077 )
  );
  X_ONE #(
    .LOC ( "SLICE_X6Y33" ))
  \blocspi_slave/i<25>/LOGIC_ONE  (
    .O(\blocspi_slave/i<25>/LOGIC_ONE_4145 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y33" ))
  \blocspi_slave/i<25>/DXMUX  (
    .I(\blocspi_slave/i<25>/XORF_4170 ),
    .O(\blocspi_slave/i<25>/DXMUX_4172 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y33" ))
  \blocspi_slave/i<25>/XORF  (
    .I0(\blocspi_slave/i<25>/CYINIT_4169 ),
    .I1(\blocspi_slave/Mcount_i_lut [25]),
    .O(\blocspi_slave/i<25>/XORF_4170 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y33" ))
  \blocspi_slave/i<25>/CYMUXF  (
    .IA(\blocspi_slave/i<25>/LOGIC_ONE_4145 ),
    .IB(\blocspi_slave/i<25>/CYINIT_4169 ),
    .SEL(\blocspi_slave/i<25>/CYSELF_4151 ),
    .O(\blocspi_slave/Mcount_i_cy [25])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y33" ))
  \blocspi_slave/i<25>/CYMUXF2  (
    .IA(\blocspi_slave/i<25>/LOGIC_ONE_4145 ),
    .IB(\blocspi_slave/i<25>/LOGIC_ONE_4145 ),
    .SEL(\blocspi_slave/i<25>/CYSELF_4151 ),
    .O(\blocspi_slave/i<25>/CYMUXF2_4146 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y33" ))
  \blocspi_slave/i<25>/CYINIT  (
    .I(\blocspi_slave/Mcount_i_cy [24]),
    .O(\blocspi_slave/i<25>/CYINIT_4169 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y33" ))
  \blocspi_slave/i<25>/CYSELF  (
    .I(\blocspi_slave/Mcount_i_lut [25]),
    .O(\blocspi_slave/i<25>/CYSELF_4151 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y33" ))
  \blocspi_slave/i<25>/DYMUX  (
    .I(\blocspi_slave/i<25>/XORG_4153 ),
    .O(\blocspi_slave/i<25>/DYMUX_4155 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y33" ))
  \blocspi_slave/i<25>/XORG  (
    .I0(\blocspi_slave/Mcount_i_cy [25]),
    .I1(\blocspi_slave/Mcount_i_lut [26]),
    .O(\blocspi_slave/i<25>/XORG_4153 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y33" ))
  \blocspi_slave/i<25>/COUTUSED  (
    .I(\blocspi_slave/i<25>/CYMUXFAST_4150 ),
    .O(\blocspi_slave/Mcount_i_cy [26])
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y33" ))
  \blocspi_slave/i<25>/FASTCARRY  (
    .I(\blocspi_slave/Mcount_i_cy [24]),
    .O(\blocspi_slave/i<25>/FASTCARRY_4148 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X6Y33" ))
  \blocspi_slave/i<25>/CYAND  (
    .I0(\blocspi_slave/i<25>/CYSELG_4137 ),
    .I1(\blocspi_slave/i<25>/CYSELF_4151 ),
    .O(\blocspi_slave/i<25>/CYAND_4149 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y33" ))
  \blocspi_slave/i<25>/CYMUXFAST  (
    .IA(\blocspi_slave/i<25>/CYMUXG2_4147 ),
    .IB(\blocspi_slave/i<25>/FASTCARRY_4148 ),
    .SEL(\blocspi_slave/i<25>/CYAND_4149 ),
    .O(\blocspi_slave/i<25>/CYMUXFAST_4150 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y33" ))
  \blocspi_slave/i<25>/CYMUXG2  (
    .IA(\blocspi_slave/i<25>/LOGIC_ONE_4145 ),
    .IB(\blocspi_slave/i<25>/CYMUXF2_4146 ),
    .SEL(\blocspi_slave/i<25>/CYSELG_4137 ),
    .O(\blocspi_slave/i<25>/CYMUXG2_4147 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y33" ))
  \blocspi_slave/i<25>/CYSELG  (
    .I(\blocspi_slave/Mcount_i_lut [26]),
    .O(\blocspi_slave/i<25>/CYSELG_4137 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y33" ))
  \blocspi_slave/i<25>/SRINV  (
    .I(\stab/ssel2_1592 ),
    .O(\blocspi_slave/i<25>/SRINV_4135 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y33" ))
  \blocspi_slave/i<25>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/i<25>/CLKINV_4134 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y33" ))
  \blocspi_slave/i<25>/CEINV  (
    .I(\rising_edg2/flipflop_ris/output_1552 ),
    .O(\blocspi_slave/i<25>/CEINV_4133 )
  );
  X_LUT4 #(
    .INIT ( 16'hF5F5 ),
    .LOC ( "SLICE_X6Y34" ))
  \blocspi_slave/Mcount_i_lut<27>  (
    .ADR0(\blocspi_slave/i [27]),
    .ADR1(VCC),
    .ADR2(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .ADR3(VCC),
    .O(\blocspi_slave/Mcount_i_lut [27])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y34" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/i_27  (
    .I(\blocspi_slave/i<27>/DXMUX_4228 ),
    .CE(\blocspi_slave/i<27>/CEINV_4189 ),
    .CLK(\blocspi_slave/i<27>/CLKINV_4190 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\blocspi_slave/i<27>/SRINV_4191 ),
    .O(\blocspi_slave/i [27])
  );
  X_ONE #(
    .LOC ( "SLICE_X6Y34" ))
  \blocspi_slave/i<27>/LOGIC_ONE  (
    .O(\blocspi_slave/i<27>/LOGIC_ONE_4201 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y34" ))
  \blocspi_slave/i<27>/DXMUX  (
    .I(\blocspi_slave/i<27>/XORF_4226 ),
    .O(\blocspi_slave/i<27>/DXMUX_4228 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y34" ))
  \blocspi_slave/i<27>/XORF  (
    .I0(\blocspi_slave/i<27>/CYINIT_4225 ),
    .I1(\blocspi_slave/Mcount_i_lut [27]),
    .O(\blocspi_slave/i<27>/XORF_4226 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y34" ))
  \blocspi_slave/i<27>/CYMUXF  (
    .IA(\blocspi_slave/i<27>/LOGIC_ONE_4201 ),
    .IB(\blocspi_slave/i<27>/CYINIT_4225 ),
    .SEL(\blocspi_slave/i<27>/CYSELF_4207 ),
    .O(\blocspi_slave/Mcount_i_cy [27])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y34" ))
  \blocspi_slave/i<27>/CYMUXF2  (
    .IA(\blocspi_slave/i<27>/LOGIC_ONE_4201 ),
    .IB(\blocspi_slave/i<27>/LOGIC_ONE_4201 ),
    .SEL(\blocspi_slave/i<27>/CYSELF_4207 ),
    .O(\blocspi_slave/i<27>/CYMUXF2_4202 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y34" ))
  \blocspi_slave/i<27>/CYINIT  (
    .I(\blocspi_slave/Mcount_i_cy [26]),
    .O(\blocspi_slave/i<27>/CYINIT_4225 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y34" ))
  \blocspi_slave/i<27>/CYSELF  (
    .I(\blocspi_slave/Mcount_i_lut [27]),
    .O(\blocspi_slave/i<27>/CYSELF_4207 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y34" ))
  \blocspi_slave/i<27>/DYMUX  (
    .I(\blocspi_slave/i<27>/XORG_4209 ),
    .O(\blocspi_slave/i<27>/DYMUX_4211 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y34" ))
  \blocspi_slave/i<27>/XORG  (
    .I0(\blocspi_slave/Mcount_i_cy [27]),
    .I1(\blocspi_slave/Mcount_i_lut [28]),
    .O(\blocspi_slave/i<27>/XORG_4209 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y34" ))
  \blocspi_slave/i<27>/COUTUSED  (
    .I(\blocspi_slave/i<27>/CYMUXFAST_4206 ),
    .O(\blocspi_slave/Mcount_i_cy [28])
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y34" ))
  \blocspi_slave/i<27>/FASTCARRY  (
    .I(\blocspi_slave/Mcount_i_cy [26]),
    .O(\blocspi_slave/i<27>/FASTCARRY_4204 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X6Y34" ))
  \blocspi_slave/i<27>/CYAND  (
    .I0(\blocspi_slave/i<27>/CYSELG_4193 ),
    .I1(\blocspi_slave/i<27>/CYSELF_4207 ),
    .O(\blocspi_slave/i<27>/CYAND_4205 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y34" ))
  \blocspi_slave/i<27>/CYMUXFAST  (
    .IA(\blocspi_slave/i<27>/CYMUXG2_4203 ),
    .IB(\blocspi_slave/i<27>/FASTCARRY_4204 ),
    .SEL(\blocspi_slave/i<27>/CYAND_4205 ),
    .O(\blocspi_slave/i<27>/CYMUXFAST_4206 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y34" ))
  \blocspi_slave/i<27>/CYMUXG2  (
    .IA(\blocspi_slave/i<27>/LOGIC_ONE_4201 ),
    .IB(\blocspi_slave/i<27>/CYMUXF2_4202 ),
    .SEL(\blocspi_slave/i<27>/CYSELG_4193 ),
    .O(\blocspi_slave/i<27>/CYMUXG2_4203 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y34" ))
  \blocspi_slave/i<27>/CYSELG  (
    .I(\blocspi_slave/Mcount_i_lut [28]),
    .O(\blocspi_slave/i<27>/CYSELG_4193 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y34" ))
  \blocspi_slave/i<27>/SRINV  (
    .I(\stab/ssel2_1592 ),
    .O(\blocspi_slave/i<27>/SRINV_4191 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y34" ))
  \blocspi_slave/i<27>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/i<27>/CLKINV_4190 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y34" ))
  \blocspi_slave/i<27>/CEINV  (
    .I(\rising_edg2/flipflop_ris/output_1552 ),
    .O(\blocspi_slave/i<27>/CEINV_4189 )
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y34" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/i_28  (
    .I(\blocspi_slave/i<27>/DYMUX_4211 ),
    .CE(\blocspi_slave/i<27>/CEINV_4189 ),
    .CLK(\blocspi_slave/i<27>/CLKINV_4190 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\blocspi_slave/i<27>/SRINV_4191 ),
    .O(\blocspi_slave/i [28])
  );
  X_LUT4 #(
    .INIT ( 16'hF3F3 ),
    .LOC ( "SLICE_X6Y35" ))
  \blocspi_slave/Mcount_i_lut<30>  (
    .ADR0(VCC),
    .ADR1(\blocspi_slave/i [30]),
    .ADR2(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .ADR3(VCC),
    .O(\blocspi_slave/Mcount_i_lut [30])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y35" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/i_30  (
    .I(\blocspi_slave/i<29>/DYMUX_4267 ),
    .CE(\blocspi_slave/i<29>/CEINV_4245 ),
    .CLK(\blocspi_slave/i<29>/CLKINV_4246 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\blocspi_slave/i<29>/SRINV_4247 ),
    .O(\blocspi_slave/i [30])
  );
  X_LUT4 #(
    .INIT ( 16'hF3F3 ),
    .LOC ( "SLICE_X6Y35" ))
  \blocspi_slave/Mcount_i_lut<29>  (
    .ADR0(VCC),
    .ADR1(\blocspi_slave/i [29]),
    .ADR2(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .ADR3(VCC),
    .O(\blocspi_slave/Mcount_i_lut [29])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y35" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/i_29  (
    .I(\blocspi_slave/i<29>/DXMUX_4284 ),
    .CE(\blocspi_slave/i<29>/CEINV_4245 ),
    .CLK(\blocspi_slave/i<29>/CLKINV_4246 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\blocspi_slave/i<29>/SRINV_4247 ),
    .O(\blocspi_slave/i [29])
  );
  X_ONE #(
    .LOC ( "SLICE_X6Y35" ))
  \blocspi_slave/i<29>/LOGIC_ONE  (
    .O(\blocspi_slave/i<29>/LOGIC_ONE_4257 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y35" ))
  \blocspi_slave/i<29>/DXMUX  (
    .I(\blocspi_slave/i<29>/XORF_4282 ),
    .O(\blocspi_slave/i<29>/DXMUX_4284 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y35" ))
  \blocspi_slave/i<29>/XORF  (
    .I0(\blocspi_slave/i<29>/CYINIT_4281 ),
    .I1(\blocspi_slave/Mcount_i_lut [29]),
    .O(\blocspi_slave/i<29>/XORF_4282 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y35" ))
  \blocspi_slave/i<29>/CYMUXF  (
    .IA(\blocspi_slave/i<29>/LOGIC_ONE_4257 ),
    .IB(\blocspi_slave/i<29>/CYINIT_4281 ),
    .SEL(\blocspi_slave/i<29>/CYSELF_4263 ),
    .O(\blocspi_slave/Mcount_i_cy [29])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y35" ))
  \blocspi_slave/i<29>/CYMUXF2  (
    .IA(\blocspi_slave/i<29>/LOGIC_ONE_4257 ),
    .IB(\blocspi_slave/i<29>/LOGIC_ONE_4257 ),
    .SEL(\blocspi_slave/i<29>/CYSELF_4263 ),
    .O(\blocspi_slave/i<29>/CYMUXF2_4258 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y35" ))
  \blocspi_slave/i<29>/CYINIT  (
    .I(\blocspi_slave/Mcount_i_cy [28]),
    .O(\blocspi_slave/i<29>/CYINIT_4281 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y35" ))
  \blocspi_slave/i<29>/CYSELF  (
    .I(\blocspi_slave/Mcount_i_lut [29]),
    .O(\blocspi_slave/i<29>/CYSELF_4263 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y35" ))
  \blocspi_slave/i<29>/DYMUX  (
    .I(\blocspi_slave/i<29>/XORG_4265 ),
    .O(\blocspi_slave/i<29>/DYMUX_4267 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X6Y35" ))
  \blocspi_slave/i<29>/XORG  (
    .I0(\blocspi_slave/Mcount_i_cy [29]),
    .I1(\blocspi_slave/Mcount_i_lut [30]),
    .O(\blocspi_slave/i<29>/XORG_4265 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y35" ))
  \blocspi_slave/i<29>/FASTCARRY  (
    .I(\blocspi_slave/Mcount_i_cy [28]),
    .O(\blocspi_slave/i<29>/FASTCARRY_4260 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X6Y35" ))
  \blocspi_slave/i<29>/CYAND  (
    .I0(\blocspi_slave/i<29>/CYSELG_4249 ),
    .I1(\blocspi_slave/i<29>/CYSELF_4263 ),
    .O(\blocspi_slave/i<29>/CYAND_4261 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y35" ))
  \blocspi_slave/i<29>/CYMUXFAST  (
    .IA(\blocspi_slave/i<29>/CYMUXG2_4259 ),
    .IB(\blocspi_slave/i<29>/FASTCARRY_4260 ),
    .SEL(\blocspi_slave/i<29>/CYAND_4261 ),
    .O(\blocspi_slave/i<29>/CYMUXFAST_4262 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y35" ))
  \blocspi_slave/i<29>/CYMUXG2  (
    .IA(\blocspi_slave/i<29>/LOGIC_ONE_4257 ),
    .IB(\blocspi_slave/i<29>/CYMUXF2_4258 ),
    .SEL(\blocspi_slave/i<29>/CYSELG_4249 ),
    .O(\blocspi_slave/i<29>/CYMUXG2_4259 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y35" ))
  \blocspi_slave/i<29>/CYSELG  (
    .I(\blocspi_slave/Mcount_i_lut [30]),
    .O(\blocspi_slave/i<29>/CYSELG_4249 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y35" ))
  \blocspi_slave/i<29>/SRINV  (
    .I(\stab/ssel2_1592 ),
    .O(\blocspi_slave/i<29>/SRINV_4247 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y35" ))
  \blocspi_slave/i<29>/CLKINV  (
    .I(clk_BUFGP),
    .O(\blocspi_slave/i<29>/CLKINV_4246 )
  );
  X_BUF #(
    .LOC ( "SLICE_X6Y35" ))
  \blocspi_slave/i<29>/CEINV  (
    .I(\rising_edg2/flipflop_ris/output_1552 ),
    .O(\blocspi_slave/i<29>/CEINV_4245 )
  );
  X_LUT4 #(
    .INIT ( 16'h0F0F ),
    .LOC ( "SLICE_X7Y20" ))
  \blocspi_slave/Data_0_not00011_wg_lut<0>_INV_0  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\blocspi_slave/i [26]),
    .ADR3(VCC),
    .O(\blocspi_slave/Data_0_not00011_wg_lut [0])
  );
  X_ZERO #(
    .LOC ( "SLICE_X7Y20" ))
  \blocspi_slave/Data_0_not00011_wg_cy<1>/LOGIC_ZERO  (
    .O(\blocspi_slave/Data_0_not00011_wg_cy<1>/LOGIC_ZERO_4304 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X7Y20" ))
  \blocspi_slave/Data_0_not00011_wg_cy<1>/CYMUXF  (
    .IA(\blocspi_slave/Data_0_not00011_wg_cy<1>/LOGIC_ZERO_4304 ),
    .IB(\blocspi_slave/Data_0_not00011_wg_cy<1>/CYINIT_4318 ),
    .SEL(\blocspi_slave/Data_0_not00011_wg_cy<1>/CYSELF_4309 ),
    .O(\blocspi_slave/Data_0_not00011_wg_cy[0] )
  );
  X_BUF #(
    .LOC ( "SLICE_X7Y20" ))
  \blocspi_slave/Data_0_not00011_wg_cy<1>/CYINIT  (
    .I(\blocspi_slave/Data_0_not00011_wg_cy<1>/BXINV_4307 ),
    .O(\blocspi_slave/Data_0_not00011_wg_cy<1>/CYINIT_4318 )
  );
  X_BUF #(
    .LOC ( "SLICE_X7Y20" ))
  \blocspi_slave/Data_0_not00011_wg_cy<1>/CYSELF  (
    .I(\blocspi_slave/Data_0_not00011_wg_lut [0]),
    .O(\blocspi_slave/Data_0_not00011_wg_cy<1>/CYSELF_4309 )
  );
  X_BUF #(
    .LOC ( "SLICE_X7Y20" ))
  \blocspi_slave/Data_0_not00011_wg_cy<1>/BXINV  (
    .I(1'b1),
    .O(\blocspi_slave/Data_0_not00011_wg_cy<1>/BXINV_4307 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X7Y20" ))
  \blocspi_slave/Data_0_not00011_wg_cy<1>/CYMUXG  (
    .IA(\blocspi_slave/Data_0_not00011_wg_cy<1>/LOGIC_ZERO_4304 ),
    .IB(\blocspi_slave/Data_0_not00011_wg_cy[0] ),
    .SEL(\blocspi_slave/Data_0_not00011_wg_cy<1>/CYSELG_4298 ),
    .O(\blocspi_slave/Data_0_not00011_wg_cy<1>/CYMUXG_4306 )
  );
  X_BUF #(
    .LOC ( "SLICE_X7Y20" ))
  \blocspi_slave/Data_0_not00011_wg_cy<1>/CYSELG  (
    .I(\blocspi_slave/Data_0_not00011_wg_lut [1]),
    .O(\blocspi_slave/Data_0_not00011_wg_cy<1>/CYSELG_4298 )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X7Y20" ))
  \blocspi_slave/Data_0_not00011_wg_lut<1>  (
    .ADR0(\blocspi_slave/i [25]),
    .ADR1(\blocspi_slave/i [27]),
    .ADR2(\blocspi_slave/i [24]),
    .ADR3(\blocspi_slave/i [23]),
    .O(\blocspi_slave/Data_0_not00011_wg_lut [1])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X7Y21" ))
  \blocspi_slave/Data_0_not00011_wg_lut<2>  (
    .ADR0(\blocspi_slave/i [28]),
    .ADR1(\blocspi_slave/i [19]),
    .ADR2(\blocspi_slave/i [22]),
    .ADR3(\blocspi_slave/i [21]),
    .O(\blocspi_slave/Data_0_not00011_wg_lut [2])
  );
  X_ZERO #(
    .LOC ( "SLICE_X7Y21" ))
  \blocspi_slave/Data_0_not00011_wg_cy<3>/LOGIC_ZERO  (
    .O(\blocspi_slave/Data_0_not00011_wg_cy<3>/LOGIC_ZERO_4336 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X7Y21" ))
  \blocspi_slave/Data_0_not00011_wg_cy<3>/CYMUXF2  (
    .IA(\blocspi_slave/Data_0_not00011_wg_cy<3>/LOGIC_ZERO_4336 ),
    .IB(\blocspi_slave/Data_0_not00011_wg_cy<3>/LOGIC_ZERO_4336 ),
    .SEL(\blocspi_slave/Data_0_not00011_wg_cy<3>/CYSELF_4342 ),
    .O(\blocspi_slave/Data_0_not00011_wg_cy<3>/CYMUXF2_4337 )
  );
  X_BUF #(
    .LOC ( "SLICE_X7Y21" ))
  \blocspi_slave/Data_0_not00011_wg_cy<3>/CYSELF  (
    .I(\blocspi_slave/Data_0_not00011_wg_lut [2]),
    .O(\blocspi_slave/Data_0_not00011_wg_cy<3>/CYSELF_4342 )
  );
  X_BUF #(
    .LOC ( "SLICE_X7Y21" ))
  \blocspi_slave/Data_0_not00011_wg_cy<3>/FASTCARRY  (
    .I(\blocspi_slave/Data_0_not00011_wg_cy<1>/CYMUXG_4306 ),
    .O(\blocspi_slave/Data_0_not00011_wg_cy<3>/FASTCARRY_4339 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X7Y21" ))
  \blocspi_slave/Data_0_not00011_wg_cy<3>/CYAND  (
    .I0(\blocspi_slave/Data_0_not00011_wg_cy<3>/CYSELG_4330 ),
    .I1(\blocspi_slave/Data_0_not00011_wg_cy<3>/CYSELF_4342 ),
    .O(\blocspi_slave/Data_0_not00011_wg_cy<3>/CYAND_4340 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X7Y21" ))
  \blocspi_slave/Data_0_not00011_wg_cy<3>/CYMUXFAST  (
    .IA(\blocspi_slave/Data_0_not00011_wg_cy<3>/CYMUXG2_4338 ),
    .IB(\blocspi_slave/Data_0_not00011_wg_cy<3>/FASTCARRY_4339 ),
    .SEL(\blocspi_slave/Data_0_not00011_wg_cy<3>/CYAND_4340 ),
    .O(\blocspi_slave/Data_0_not00011_wg_cy<3>/CYMUXFAST_4341 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X7Y21" ))
  \blocspi_slave/Data_0_not00011_wg_cy<3>/CYMUXG2  (
    .IA(\blocspi_slave/Data_0_not00011_wg_cy<3>/LOGIC_ZERO_4336 ),
    .IB(\blocspi_slave/Data_0_not00011_wg_cy<3>/CYMUXF2_4337 ),
    .SEL(\blocspi_slave/Data_0_not00011_wg_cy<3>/CYSELG_4330 ),
    .O(\blocspi_slave/Data_0_not00011_wg_cy<3>/CYMUXG2_4338 )
  );
  X_BUF #(
    .LOC ( "SLICE_X7Y21" ))
  \blocspi_slave/Data_0_not00011_wg_cy<3>/CYSELG  (
    .I(\blocspi_slave/Data_0_not00011_wg_lut [3]),
    .O(\blocspi_slave/Data_0_not00011_wg_cy<3>/CYSELG_4330 )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X7Y21" ))
  \blocspi_slave/Data_0_not00011_wg_lut<3>  (
    .ADR0(\blocspi_slave/i [18]),
    .ADR1(\blocspi_slave/i [29]),
    .ADR2(\blocspi_slave/i [20]),
    .ADR3(\blocspi_slave/i [17]),
    .O(\blocspi_slave/Data_0_not00011_wg_lut [3])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X7Y22" ))
  \blocspi_slave/Data_0_not00011_wg_lut<4>  (
    .ADR0(\blocspi_slave/i [16]),
    .ADR1(\blocspi_slave/i [12]),
    .ADR2(\blocspi_slave/i [30]),
    .ADR3(\blocspi_slave/i [15]),
    .O(\blocspi_slave/Data_0_not00011_wg_lut [4])
  );
  X_ZERO #(
    .LOC ( "SLICE_X7Y22" ))
  \blocspi_slave/Data_0_not00011_wg_cy<5>/LOGIC_ZERO  (
    .O(\blocspi_slave/Data_0_not00011_wg_cy<5>/LOGIC_ZERO_4366 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X7Y22" ))
  \blocspi_slave/Data_0_not00011_wg_cy<5>/CYMUXF2  (
    .IA(\blocspi_slave/Data_0_not00011_wg_cy<5>/LOGIC_ZERO_4366 ),
    .IB(\blocspi_slave/Data_0_not00011_wg_cy<5>/LOGIC_ZERO_4366 ),
    .SEL(\blocspi_slave/Data_0_not00011_wg_cy<5>/CYSELF_4372 ),
    .O(\blocspi_slave/Data_0_not00011_wg_cy<5>/CYMUXF2_4367 )
  );
  X_BUF #(
    .LOC ( "SLICE_X7Y22" ))
  \blocspi_slave/Data_0_not00011_wg_cy<5>/CYSELF  (
    .I(\blocspi_slave/Data_0_not00011_wg_lut [4]),
    .O(\blocspi_slave/Data_0_not00011_wg_cy<5>/CYSELF_4372 )
  );
  X_BUF #(
    .LOC ( "SLICE_X7Y22" ))
  \blocspi_slave/Data_0_not00011_wg_cy<5>/FASTCARRY  (
    .I(\blocspi_slave/Data_0_not00011_wg_cy<3>/CYMUXFAST_4341 ),
    .O(\blocspi_slave/Data_0_not00011_wg_cy<5>/FASTCARRY_4369 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X7Y22" ))
  \blocspi_slave/Data_0_not00011_wg_cy<5>/CYAND  (
    .I0(\blocspi_slave/Data_0_not00011_wg_cy<5>/CYSELG_4360 ),
    .I1(\blocspi_slave/Data_0_not00011_wg_cy<5>/CYSELF_4372 ),
    .O(\blocspi_slave/Data_0_not00011_wg_cy<5>/CYAND_4370 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X7Y22" ))
  \blocspi_slave/Data_0_not00011_wg_cy<5>/CYMUXFAST  (
    .IA(\blocspi_slave/Data_0_not00011_wg_cy<5>/CYMUXG2_4368 ),
    .IB(\blocspi_slave/Data_0_not00011_wg_cy<5>/FASTCARRY_4369 ),
    .SEL(\blocspi_slave/Data_0_not00011_wg_cy<5>/CYAND_4370 ),
    .O(\blocspi_slave/Data_0_not00011_wg_cy<5>/CYMUXFAST_4371 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X7Y22" ))
  \blocspi_slave/Data_0_not00011_wg_cy<5>/CYMUXG2  (
    .IA(\blocspi_slave/Data_0_not00011_wg_cy<5>/LOGIC_ZERO_4366 ),
    .IB(\blocspi_slave/Data_0_not00011_wg_cy<5>/CYMUXF2_4367 ),
    .SEL(\blocspi_slave/Data_0_not00011_wg_cy<5>/CYSELG_4360 ),
    .O(\blocspi_slave/Data_0_not00011_wg_cy<5>/CYMUXG2_4368 )
  );
  X_BUF #(
    .LOC ( "SLICE_X7Y22" ))
  \blocspi_slave/Data_0_not00011_wg_cy<5>/CYSELG  (
    .I(\blocspi_slave/Data_0_not00011_wg_lut [5]),
    .O(\blocspi_slave/Data_0_not00011_wg_cy<5>/CYSELG_4360 )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X7Y22" ))
  \blocspi_slave/Data_0_not00011_wg_lut<5>  (
    .ADR0(\blocspi_slave/i [14]),
    .ADR1(\blocspi_slave/i [11]),
    .ADR2(\blocspi_slave/i [13]),
    .ADR3(\blocspi_slave/i [31]),
    .O(\blocspi_slave/Data_0_not00011_wg_lut [5])
  );
  X_ZERO #(
    .LOC ( "SLICE_X7Y23" ))
  \blocspi_slave/Data_0_not00011_wg_cy<7>/LOGIC_ZERO  (
    .O(\blocspi_slave/Data_0_not00011_wg_cy<7>/LOGIC_ZERO_4396 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X7Y23" ))
  \blocspi_slave/Data_0_not00011_wg_cy<7>/CYMUXF2  (
    .IA(\blocspi_slave/Data_0_not00011_wg_cy<7>/LOGIC_ZERO_4396 ),
    .IB(\blocspi_slave/Data_0_not00011_wg_cy<7>/LOGIC_ZERO_4396 ),
    .SEL(\blocspi_slave/Data_0_not00011_wg_cy<7>/CYSELF_4402 ),
    .O(\blocspi_slave/Data_0_not00011_wg_cy<7>/CYMUXF2_4397 )
  );
  X_BUF #(
    .LOC ( "SLICE_X7Y23" ))
  \blocspi_slave/Data_0_not00011_wg_cy<7>/CYSELF  (
    .I(\blocspi_slave/Data_0_not00011_wg_lut [6]),
    .O(\blocspi_slave/Data_0_not00011_wg_cy<7>/CYSELF_4402 )
  );
  X_BUF #(
    .LOC ( "SLICE_X7Y23" ))
  \blocspi_slave/Data_0_not00011_wg_cy<7>/COUTUSED  (
    .I(\blocspi_slave/Data_0_not00011_wg_cy<7>/CYMUXFAST_4401 ),
    .O(\blocspi_slave/Data_0_not00011_wg_cy[7] )
  );
  X_BUF #(
    .LOC ( "SLICE_X7Y23" ))
  \blocspi_slave/Data_0_not00011_wg_cy<7>/FASTCARRY  (
    .I(\blocspi_slave/Data_0_not00011_wg_cy<5>/CYMUXFAST_4371 ),
    .O(\blocspi_slave/Data_0_not00011_wg_cy<7>/FASTCARRY_4399 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X7Y23" ))
  \blocspi_slave/Data_0_not00011_wg_cy<7>/CYAND  (
    .I0(\blocspi_slave/Data_0_not00011_wg_cy<7>/CYSELG_4390 ),
    .I1(\blocspi_slave/Data_0_not00011_wg_cy<7>/CYSELF_4402 ),
    .O(\blocspi_slave/Data_0_not00011_wg_cy<7>/CYAND_4400 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X7Y23" ))
  \blocspi_slave/Data_0_not00011_wg_cy<7>/CYMUXFAST  (
    .IA(\blocspi_slave/Data_0_not00011_wg_cy<7>/CYMUXG2_4398 ),
    .IB(\blocspi_slave/Data_0_not00011_wg_cy<7>/FASTCARRY_4399 ),
    .SEL(\blocspi_slave/Data_0_not00011_wg_cy<7>/CYAND_4400 ),
    .O(\blocspi_slave/Data_0_not00011_wg_cy<7>/CYMUXFAST_4401 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X7Y23" ))
  \blocspi_slave/Data_0_not00011_wg_cy<7>/CYMUXG2  (
    .IA(\blocspi_slave/Data_0_not00011_wg_cy<7>/LOGIC_ZERO_4396 ),
    .IB(\blocspi_slave/Data_0_not00011_wg_cy<7>/CYMUXF2_4397 ),
    .SEL(\blocspi_slave/Data_0_not00011_wg_cy<7>/CYSELG_4390 ),
    .O(\blocspi_slave/Data_0_not00011_wg_cy<7>/CYMUXG2_4398 )
  );
  X_BUF #(
    .LOC ( "SLICE_X7Y23" ))
  \blocspi_slave/Data_0_not00011_wg_cy<7>/CYSELG  (
    .I(\blocspi_slave/Data_0_not00011_wg_lut [7]),
    .O(\blocspi_slave/Data_0_not00011_wg_cy<7>/CYSELG_4390 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X23Y32" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYMUXF  (
    .IA(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<1>/CY0F_4437 ),
    .IB(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYINIT_4438 ),
    .SEL(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYSELF_4429 ),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy[0] )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y32" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYINIT  (
    .I(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<1>/BXINV_4427 ),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYINIT_4438 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y32" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<1>/CY0F  (
    .I(\pwm_gene_L/counter [0]),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<1>/CY0F_4437 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y32" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYSELF  (
    .I(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_lut [0]),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYSELF_4429 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y32" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<1>/BXINV  (
    .I(1'b1),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<1>/BXINV_4427 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X23Y32" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYMUXG  (
    .IA(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<1>/CY0G_4424 ),
    .IB(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy[0] ),
    .SEL(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYSELG_4416 ),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYMUXG_4426 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y32" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<1>/CY0G  (
    .I(\pwm_gene_L/counter [1]),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<1>/CY0G_4424 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y32" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYSELG  (
    .I(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_lut [1]),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYSELG_4416 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X23Y33" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYMUXF2  (
    .IA(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CY0F_4469 ),
    .IB(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CY0F_4469 ),
    .SEL(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYSELF_4460 ),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYMUXF2_4455 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y33" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CY0F  (
    .I(\pwm_gene_L/counter [2]),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CY0F_4469 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y33" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYSELF  (
    .I(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_lut [2]),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYSELF_4460 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y33" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/FASTCARRY  (
    .I(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYMUXG_4426 ),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/FASTCARRY_4457 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X23Y33" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYAND  (
    .I0(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYSELG_4446 ),
    .I1(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYSELF_4460 ),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYAND_4458 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X23Y33" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYMUXFAST  (
    .IA(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYMUXG2_4456 ),
    .IB(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/FASTCARRY_4457 ),
    .SEL(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYAND_4458 ),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYMUXFAST_4459 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X23Y33" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYMUXG2  (
    .IA(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CY0G_4454 ),
    .IB(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYMUXF2_4455 ),
    .SEL(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYSELG_4446 ),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYMUXG2_4456 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y33" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CY0G  (
    .I(\pwm_gene_L/counter [3]),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CY0G_4454 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y33" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYSELG  (
    .I(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_lut [3]),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYSELG_4446 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X23Y34" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYMUXF2  (
    .IA(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CY0F_4500 ),
    .IB(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CY0F_4500 ),
    .SEL(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYSELF_4491 ),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYMUXF2_4486 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y34" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CY0F  (
    .I(\pwm_gene_L/counter [4]),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CY0F_4500 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y34" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYSELF  (
    .I(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_lut [4]),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYSELF_4491 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y34" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/FASTCARRY  (
    .I(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYMUXFAST_4459 ),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/FASTCARRY_4488 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X23Y34" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYAND  (
    .I0(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYSELG_4477 ),
    .I1(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYSELF_4491 ),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYAND_4489 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X23Y34" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYMUXFAST  (
    .IA(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYMUXG2_4487 ),
    .IB(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/FASTCARRY_4488 ),
    .SEL(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYAND_4489 ),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYMUXFAST_4490 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X23Y34" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYMUXG2  (
    .IA(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CY0G_4485 ),
    .IB(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYMUXF2_4486 ),
    .SEL(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYSELG_4477 ),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYMUXG2_4487 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y34" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CY0G  (
    .I(\pwm_gene_L/counter [5]),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CY0G_4485 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y34" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYSELG  (
    .I(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_lut [5]),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYSELG_4477 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X23Y35" ))
  \pwm_gene_L/out_pwm/CYMUXF  (
    .IA(\pwm_gene_L/out_pwm/CY0F_4539 ),
    .IB(\pwm_gene_L/out_pwm/CYINIT_4540 ),
    .SEL(\pwm_gene_L/out_pwm/CYSELF_4531 ),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy[6] )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y35" ))
  \pwm_gene_L/out_pwm/CYINIT  (
    .I(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYMUXFAST_4490 ),
    .O(\pwm_gene_L/out_pwm/CYINIT_4540 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y35" ))
  \pwm_gene_L/out_pwm/CY0F  (
    .I(\pwm_gene_L/counter [6]),
    .O(\pwm_gene_L/out_pwm/CY0F_4539 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y35" ))
  \pwm_gene_L/out_pwm/CYSELF  (
    .I(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_lut [6]),
    .O(\pwm_gene_L/out_pwm/CYSELF_4531 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y35" ))
  \pwm_gene_L/out_pwm/DYMUX  (
    .I(\pwm_gene_L/out_pwm/XORG_4522 ),
    .O(\pwm_gene_L/out_pwm/DYMUX_4524 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X23Y35" ))
  \pwm_gene_L/out_pwm/XORG  (
    .I0(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_cy[6] ),
    .I1(\pwm_gene_L/out_pwm/G ),
    .O(\pwm_gene_L/out_pwm/XORG_4522 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y35" ))
  \pwm_gene_L/out_pwm/SRINV  (
    .I(reset_IBUF1),
    .O(\pwm_gene_L/out_pwm/SRINV_4510 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y35" ))
  \pwm_gene_L/out_pwm/CLKINV  (
    .I(clk_BUFGP),
    .O(\pwm_gene_L/out_pwm/CLKINV_4509 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y35" ))
  \pwm_gene_L/out_pwm/CEINV  (
    .I(\pwm_gene_L/out_pwm_cmp_ge0000 ),
    .O(\pwm_gene_L/out_pwm/CEINV_4508 )
  );
  X_LUT4 #(
    .INIT ( 16'hC3C3 ),
    .LOC ( "SLICE_X23Y35" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_lut<6>  (
    .ADR0(VCC),
    .ADR1(\pwm_gene_L/counter [6]),
    .ADR2(\traitement_spi/sigpwm_dc_L [6]),
    .ADR3(VCC),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_lut [6])
  );
  X_LUT4 #(
    .INIT ( 16'hCC33 ),
    .LOC ( "SLICE_X16Y32" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_lut<1>  (
    .ADR0(VCC),
    .ADR1(\pwm_gene_R/counter [1]),
    .ADR2(VCC),
    .ADR3(\traitement_spi/sigpwm_dc_R [1]),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_lut [1])
  );
  X_LUT4 #(
    .INIT ( 16'h9999 ),
    .LOC ( "SLICE_X16Y32" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_lut<0>  (
    .ADR0(\pwm_gene_R/counter [0]),
    .ADR1(\traitement_spi/sigpwm_dc_R [0]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_lut [0])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y32" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYMUXF  (
    .IA(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<1>/CY0F_4569 ),
    .IB(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYINIT_4570 ),
    .SEL(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYSELF_4561 ),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy[0] )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y32" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYINIT  (
    .I(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<1>/BXINV_4559 ),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYINIT_4570 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y32" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<1>/CY0F  (
    .I(\pwm_gene_R/counter [0]),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<1>/CY0F_4569 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y32" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYSELF  (
    .I(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_lut [0]),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYSELF_4561 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y32" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<1>/BXINV  (
    .I(1'b1),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<1>/BXINV_4559 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y32" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYMUXG  (
    .IA(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<1>/CY0G_4556 ),
    .IB(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy[0] ),
    .SEL(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYSELG_4548 ),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYMUXG_4558 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y32" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<1>/CY0G  (
    .I(\pwm_gene_R/counter [1]),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<1>/CY0G_4556 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y32" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYSELG  (
    .I(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_lut [1]),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYSELG_4548 )
  );
  X_LUT4 #(
    .INIT ( 16'h9999 ),
    .LOC ( "SLICE_X16Y33" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_lut<3>  (
    .ADR0(\traitement_spi/sigpwm_dc_R [3]),
    .ADR1(\pwm_gene_R/counter [3]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_lut [3])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y33" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYMUXF2  (
    .IA(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CY0F_4601 ),
    .IB(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CY0F_4601 ),
    .SEL(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYSELF_4592 ),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYMUXF2_4587 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y33" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CY0F  (
    .I(\pwm_gene_R/counter [2]),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CY0F_4601 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y33" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYSELF  (
    .I(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_lut [2]),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYSELF_4592 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y33" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/FASTCARRY  (
    .I(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<1>/CYMUXG_4558 ),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/FASTCARRY_4589 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X16Y33" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYAND  (
    .I0(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYSELG_4578 ),
    .I1(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYSELF_4592 ),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYAND_4590 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y33" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYMUXFAST  (
    .IA(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYMUXG2_4588 ),
    .IB(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/FASTCARRY_4589 ),
    .SEL(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYAND_4590 ),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYMUXFAST_4591 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y33" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYMUXG2  (
    .IA(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CY0G_4586 ),
    .IB(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYMUXF2_4587 ),
    .SEL(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYSELG_4578 ),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYMUXG2_4588 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y33" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CY0G  (
    .I(\pwm_gene_R/counter [3]),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CY0G_4586 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y33" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYSELG  (
    .I(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_lut [3]),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYSELG_4578 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y34" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYMUXF2  (
    .IA(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CY0F_4632 ),
    .IB(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CY0F_4632 ),
    .SEL(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYSELF_4623 ),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYMUXF2_4618 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y34" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CY0F  (
    .I(\pwm_gene_R/counter [4]),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CY0F_4632 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y34" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYSELF  (
    .I(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_lut [4]),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYSELF_4623 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y34" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/FASTCARRY  (
    .I(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<3>/CYMUXFAST_4591 ),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/FASTCARRY_4620 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X16Y34" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYAND  (
    .I0(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYSELG_4609 ),
    .I1(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYSELF_4623 ),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYAND_4621 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y34" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYMUXFAST  (
    .IA(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYMUXG2_4619 ),
    .IB(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/FASTCARRY_4620 ),
    .SEL(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYAND_4621 ),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYMUXFAST_4622 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y34" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYMUXG2  (
    .IA(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CY0G_4617 ),
    .IB(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYMUXF2_4618 ),
    .SEL(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYSELG_4609 ),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYMUXG2_4619 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y34" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CY0G  (
    .I(\pwm_gene_R/counter [5]),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CY0G_4617 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y34" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYSELG  (
    .I(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_lut [5]),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYSELG_4609 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y35" ))
  \pwm_gene_R/out_pwm/CYMUXF  (
    .IA(\pwm_gene_R/out_pwm/CY0F_4671 ),
    .IB(\pwm_gene_R/out_pwm/CYINIT_4672 ),
    .SEL(\pwm_gene_R/out_pwm/CYSELF_4663 ),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy[6] )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y35" ))
  \pwm_gene_R/out_pwm/CYINIT  (
    .I(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy<5>/CYMUXFAST_4622 ),
    .O(\pwm_gene_R/out_pwm/CYINIT_4672 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y35" ))
  \pwm_gene_R/out_pwm/CY0F  (
    .I(\pwm_gene_R/counter [6]),
    .O(\pwm_gene_R/out_pwm/CY0F_4671 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y35" ))
  \pwm_gene_R/out_pwm/CYSELF  (
    .I(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_lut [6]),
    .O(\pwm_gene_R/out_pwm/CYSELF_4663 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y35" ))
  \pwm_gene_R/out_pwm/DYMUX  (
    .I(\pwm_gene_R/out_pwm/XORG_4654 ),
    .O(\pwm_gene_R/out_pwm/DYMUX_4656 )
  );
  X_XOR2 #(
    .LOC ( "SLICE_X16Y35" ))
  \pwm_gene_R/out_pwm/XORG  (
    .I0(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_cy[6] ),
    .I1(\pwm_gene_R/out_pwm/G ),
    .O(\pwm_gene_R/out_pwm/XORG_4654 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y35" ))
  \pwm_gene_R/out_pwm/SRINV  (
    .I(reset_IBUF1),
    .O(\pwm_gene_R/out_pwm/SRINV_4642 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y35" ))
  \pwm_gene_R/out_pwm/CLKINV  (
    .I(clk_BUFGP),
    .O(\pwm_gene_R/out_pwm/CLKINV_4641 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y35" ))
  \pwm_gene_R/out_pwm/CEINV  (
    .I(\pwm_gene_R/out_pwm_cmp_ge0000 ),
    .O(\pwm_gene_R/out_pwm/CEINV_4640 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X24Y24" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYMUXF  (
    .IA(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<1>/CY0F_4701 ),
    .IB(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYINIT_4702 ),
    .SEL(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYSELF_4693 ),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy [0])
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y24" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYINIT  (
    .I(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<1>/BXINV_4691 ),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYINIT_4702 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y24" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<1>/CY0F  (
    .I(\pwm_gene_L/clock [0]),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<1>/CY0F_4701 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y24" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYSELF  (
    .I(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_lut [0]),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYSELF_4693 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y24" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<1>/BXINV  (
    .I(1'b1),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<1>/BXINV_4691 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X24Y24" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYMUXG  (
    .IA(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<1>/CY0G_4688 ),
    .IB(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy [0]),
    .SEL(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYSELG_4681 ),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYMUXG_4690 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y24" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<1>/CY0G  (
    .I(\pwm_gene_L/clock [1]),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<1>/CY0G_4688 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y24" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYSELG  (
    .I(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_lut [1]),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYSELG_4681 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X24Y25" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYMUXF2  (
    .IA(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CY0F_4733 ),
    .IB(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CY0F_4733 ),
    .SEL(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYSELF_4726 ),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYMUXF2_4721 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y25" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CY0F  (
    .I(\pwm_gene_L/clock [2]),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CY0F_4733 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y25" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYSELF  (
    .I(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_lut [2]),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYSELF_4726 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y25" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/FASTCARRY  (
    .I(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYMUXG_4690 ),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/FASTCARRY_4723 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X24Y25" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYAND  (
    .I0(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYSELG_4713 ),
    .I1(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYSELF_4726 ),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYAND_4724 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X24Y25" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYMUXFAST  (
    .IA(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYMUXG2_4722 ),
    .IB(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/FASTCARRY_4723 ),
    .SEL(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYAND_4724 ),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYMUXFAST_4725 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X24Y25" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYMUXG2  (
    .IA(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CY0G_4720 ),
    .IB(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYMUXF2_4721 ),
    .SEL(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYSELG_4713 ),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYMUXG2_4722 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y25" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CY0G  (
    .I(\pwm_gene_L/clock [3]),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CY0G_4720 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y25" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYSELG  (
    .I(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_lut [3]),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYSELG_4713 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X24Y26" ))
  \pwm_gene_L/out_pwm_cmp_ge0000/CYMUXF2  (
    .IA(\pwm_gene_L/out_pwm_cmp_ge0000/CY0F_4764 ),
    .IB(\pwm_gene_L/out_pwm_cmp_ge0000/CY0F_4764 ),
    .SEL(\pwm_gene_L/out_pwm_cmp_ge0000/CYSELF_4756 ),
    .O(\pwm_gene_L/out_pwm_cmp_ge0000/CYMUXF2_4751 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y26" ))
  \pwm_gene_L/out_pwm_cmp_ge0000/CY0F  (
    .I(\pwm_gene_L/clock [4]),
    .O(\pwm_gene_L/out_pwm_cmp_ge0000/CY0F_4764 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y26" ))
  \pwm_gene_L/out_pwm_cmp_ge0000/CYSELF  (
    .I(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_lut [4]),
    .O(\pwm_gene_L/out_pwm_cmp_ge0000/CYSELF_4756 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y26" ))
  \pwm_gene_L/out_pwm_cmp_ge0000/COUTUSED  (
    .I(\pwm_gene_L/out_pwm_cmp_ge0000/CYMUXFAST_4755 ),
    .O(\pwm_gene_L/out_pwm_cmp_ge0000 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y26" ))
  \pwm_gene_L/out_pwm_cmp_ge0000/FASTCARRY  (
    .I(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYMUXFAST_4725 ),
    .O(\pwm_gene_L/out_pwm_cmp_ge0000/FASTCARRY_4753 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X24Y26" ))
  \pwm_gene_L/out_pwm_cmp_ge0000/CYAND  (
    .I0(\pwm_gene_L/out_pwm_cmp_ge0000/CYSELG_4743 ),
    .I1(\pwm_gene_L/out_pwm_cmp_ge0000/CYSELF_4756 ),
    .O(\pwm_gene_L/out_pwm_cmp_ge0000/CYAND_4754 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X24Y26" ))
  \pwm_gene_L/out_pwm_cmp_ge0000/CYMUXFAST  (
    .IA(\pwm_gene_L/out_pwm_cmp_ge0000/CYMUXG2_4752 ),
    .IB(\pwm_gene_L/out_pwm_cmp_ge0000/FASTCARRY_4753 ),
    .SEL(\pwm_gene_L/out_pwm_cmp_ge0000/CYAND_4754 ),
    .O(\pwm_gene_L/out_pwm_cmp_ge0000/CYMUXFAST_4755 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X24Y26" ))
  \pwm_gene_L/out_pwm_cmp_ge0000/CYMUXG2  (
    .IA(\pwm_gene_L/out_pwm_cmp_ge0000/CY0G_4750 ),
    .IB(\pwm_gene_L/out_pwm_cmp_ge0000/CYMUXF2_4751 ),
    .SEL(\pwm_gene_L/out_pwm_cmp_ge0000/CYSELG_4743 ),
    .O(\pwm_gene_L/out_pwm_cmp_ge0000/CYMUXG2_4752 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y26" ))
  \pwm_gene_L/out_pwm_cmp_ge0000/CY0G  (
    .I(\pwm_gene_L/clock [5]),
    .O(\pwm_gene_L/out_pwm_cmp_ge0000/CY0G_4750 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y26" ))
  \pwm_gene_L/out_pwm_cmp_ge0000/CYSELG  (
    .I(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_lut [5]),
    .O(\pwm_gene_L/out_pwm_cmp_ge0000/CYSELG_4743 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X25Y22" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYMUXF  (
    .IA(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<1>/CY0F_4793 ),
    .IB(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYINIT_4794 ),
    .SEL(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYSELF_4785 ),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy [0])
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y22" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYINIT  (
    .I(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<1>/BXINV_4783 ),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYINIT_4794 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y22" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<1>/CY0F  (
    .I(\pwm_gene_R/clock [0]),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<1>/CY0F_4793 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y22" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYSELF  (
    .I(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_lut [0]),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYSELF_4785 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y22" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<1>/BXINV  (
    .I(1'b1),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<1>/BXINV_4783 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X25Y22" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYMUXG  (
    .IA(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<1>/CY0G_4780 ),
    .IB(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy [0]),
    .SEL(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYSELG_4773 ),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYMUXG_4782 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y22" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<1>/CY0G  (
    .I(\pwm_gene_R/clock [1]),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<1>/CY0G_4780 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y22" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYSELG  (
    .I(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_lut [1]),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYSELG_4773 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X25Y23" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYMUXF2  (
    .IA(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CY0F_4825 ),
    .IB(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CY0F_4825 ),
    .SEL(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYSELF_4818 ),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYMUXF2_4813 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y23" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CY0F  (
    .I(\pwm_gene_R/clock [2]),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CY0F_4825 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y23" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYSELF  (
    .I(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_lut [2]),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYSELF_4818 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y23" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/FASTCARRY  (
    .I(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<1>/CYMUXG_4782 ),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/FASTCARRY_4815 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X25Y23" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYAND  (
    .I0(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYSELG_4805 ),
    .I1(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYSELF_4818 ),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYAND_4816 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X25Y23" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYMUXFAST  (
    .IA(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYMUXG2_4814 ),
    .IB(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/FASTCARRY_4815 ),
    .SEL(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYAND_4816 ),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYMUXFAST_4817 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X25Y23" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYMUXG2  (
    .IA(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CY0G_4812 ),
    .IB(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYMUXF2_4813 ),
    .SEL(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYSELG_4805 ),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYMUXG2_4814 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y23" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CY0G  (
    .I(\pwm_gene_R/clock [3]),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CY0G_4812 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y23" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYSELG  (
    .I(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_lut [3]),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYSELG_4805 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X25Y24" ))
  \pwm_gene_R/out_pwm_cmp_ge0000/CYMUXF2  (
    .IA(\pwm_gene_R/out_pwm_cmp_ge0000/CY0F_4856 ),
    .IB(\pwm_gene_R/out_pwm_cmp_ge0000/CY0F_4856 ),
    .SEL(\pwm_gene_R/out_pwm_cmp_ge0000/CYSELF_4848 ),
    .O(\pwm_gene_R/out_pwm_cmp_ge0000/CYMUXF2_4843 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y24" ))
  \pwm_gene_R/out_pwm_cmp_ge0000/CY0F  (
    .I(\pwm_gene_R/clock [4]),
    .O(\pwm_gene_R/out_pwm_cmp_ge0000/CY0F_4856 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y24" ))
  \pwm_gene_R/out_pwm_cmp_ge0000/CYSELF  (
    .I(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_lut [4]),
    .O(\pwm_gene_R/out_pwm_cmp_ge0000/CYSELF_4848 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y24" ))
  \pwm_gene_R/out_pwm_cmp_ge0000/COUTUSED  (
    .I(\pwm_gene_R/out_pwm_cmp_ge0000/CYMUXFAST_4847 ),
    .O(\pwm_gene_R/out_pwm_cmp_ge0000 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y24" ))
  \pwm_gene_R/out_pwm_cmp_ge0000/FASTCARRY  (
    .I(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_cy<3>/CYMUXFAST_4817 ),
    .O(\pwm_gene_R/out_pwm_cmp_ge0000/FASTCARRY_4845 )
  );
  X_AND2 #(
    .LOC ( "SLICE_X25Y24" ))
  \pwm_gene_R/out_pwm_cmp_ge0000/CYAND  (
    .I0(\pwm_gene_R/out_pwm_cmp_ge0000/CYSELG_4835 ),
    .I1(\pwm_gene_R/out_pwm_cmp_ge0000/CYSELF_4848 ),
    .O(\pwm_gene_R/out_pwm_cmp_ge0000/CYAND_4846 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X25Y24" ))
  \pwm_gene_R/out_pwm_cmp_ge0000/CYMUXFAST  (
    .IA(\pwm_gene_R/out_pwm_cmp_ge0000/CYMUXG2_4844 ),
    .IB(\pwm_gene_R/out_pwm_cmp_ge0000/FASTCARRY_4845 ),
    .SEL(\pwm_gene_R/out_pwm_cmp_ge0000/CYAND_4846 ),
    .O(\pwm_gene_R/out_pwm_cmp_ge0000/CYMUXFAST_4847 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X25Y24" ))
  \pwm_gene_R/out_pwm_cmp_ge0000/CYMUXG2  (
    .IA(\pwm_gene_R/out_pwm_cmp_ge0000/CY0G_4842 ),
    .IB(\pwm_gene_R/out_pwm_cmp_ge0000/CYMUXF2_4843 ),
    .SEL(\pwm_gene_R/out_pwm_cmp_ge0000/CYSELG_4835 ),
    .O(\pwm_gene_R/out_pwm_cmp_ge0000/CYMUXG2_4844 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y24" ))
  \pwm_gene_R/out_pwm_cmp_ge0000/CY0G  (
    .I(\pwm_gene_R/clock [5]),
    .O(\pwm_gene_R/out_pwm_cmp_ge0000/CY0G_4842 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y24" ))
  \pwm_gene_R/out_pwm_cmp_ge0000/CYSELG  (
    .I(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_lut [5]),
    .O(\pwm_gene_R/out_pwm_cmp_ge0000/CYSELG_4835 )
  );
  X_IPAD #(
    .LOC ( "PAD123" ))
  \clk/PAD  (
    .PAD(clk)
  );
  X_BUF #(
    .LOC ( "PAD123" ))
  \clk_BUFGP/IBUFG  (
    .I(clk),
    .O(\clk/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD12" ))
  \sclk/PAD  (
    .PAD(sclk)
  );
  X_BUF #(
    .LOC ( "PAD12" ))
  sclk_IBUF (
    .I(sclk),
    .O(\sclk/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD9" ))
  \simo/PAD  (
    .PAD(simo)
  );
  X_BUF #(
    .LOC ( "PAD9" ))
  simo_IBUF (
    .I(simo),
    .O(\simo/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD14" ))
  \ssel/PAD  (
    .PAD(ssel)
  );
  X_BUF #(
    .LOC ( "PAD14" ))
  ssel_IBUF (
    .I(ssel),
    .O(\ssel/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD31" ))
  \th1_L/PAD  (
    .PAD(th1_L)
  );
  X_OBUF #(
    .LOC ( "PAD31" ))
  th1_L_OBUF (
    .I(\th1_L/O ),
    .O(th1_L)
  );
  X_OPAD #(
    .LOC ( "PAD33" ))
  \th2_L/PAD  (
    .PAD(th2_L)
  );
  X_OBUF #(
    .LOC ( "PAD33" ))
  th2_L_OBUF (
    .I(\th2_L/O ),
    .O(th2_L)
  );
  X_OPAD #(
    .LOC ( "PAD18" ))
  \th1_R/PAD  (
    .PAD(th1_R)
  );
  X_OBUF #(
    .LOC ( "PAD18" ))
  th1_R_OBUF (
    .I(\th1_R/O ),
    .O(th1_R)
  );
  X_OPAD #(
    .LOC ( "PAD35" ))
  \th3_L/PAD  (
    .PAD(th3_L)
  );
  X_OBUF #(
    .LOC ( "PAD35" ))
  th3_L_OBUF (
    .I(\th3_L/O ),
    .O(th3_L)
  );
  X_OPAD #(
    .LOC ( "PAD22" ))
  \th2_R/PAD  (
    .PAD(th2_R)
  );
  X_OBUF #(
    .LOC ( "PAD22" ))
  th2_R_OBUF (
    .I(\th2_R/O ),
    .O(th2_R)
  );
  X_OPAD #(
    .LOC ( "PAD32" ))
  \th3_R/PAD  (
    .PAD(th3_R)
  );
  X_OBUF #(
    .LOC ( "PAD32" ))
  th3_R_OBUF (
    .I(\th3_R/O ),
    .O(th3_R)
  );
  X_OPAD #(
    .LOC ( "PAD37" ))
  \tl1_L/PAD  (
    .PAD(tl1_L)
  );
  X_OBUF #(
    .LOC ( "PAD37" ))
  tl1_L_OBUF (
    .I(\tl1_L/O ),
    .O(tl1_L)
  );
  X_OPAD #(
    .LOC ( "PAD40" ))
  \tl2_L/PAD  (
    .PAD(tl2_L)
  );
  X_OBUF #(
    .LOC ( "PAD40" ))
  tl2_L_OBUF (
    .I(\tl2_L/O ),
    .O(tl2_L)
  );
  X_OPAD #(
    .LOC ( "PAD2" ))
  \tl1_R/PAD  (
    .PAD(tl1_R)
  );
  X_OBUF #(
    .LOC ( "PAD2" ))
  tl1_R_OBUF (
    .I(\tl1_R/O ),
    .O(tl1_R)
  );
  X_OPAD #(
    .LOC ( "PAD36" ))
  \tl3_L/PAD  (
    .PAD(tl3_L)
  );
  X_OBUF #(
    .LOC ( "PAD36" ))
  tl3_L_OBUF (
    .I(\tl3_L/O ),
    .O(tl3_L)
  );
  X_OPAD #(
    .LOC ( "PAD10" ))
  \tl2_R/PAD  (
    .PAD(tl2_R)
  );
  X_OBUF #(
    .LOC ( "PAD10" ))
  tl2_R_OBUF (
    .I(\tl2_R/O ),
    .O(tl2_R)
  );
  X_OPAD #(
    .LOC ( "PAD15" ))
  \tl3_R/PAD  (
    .PAD(tl3_R)
  );
  X_OBUF #(
    .LOC ( "PAD15" ))
  tl3_R_OBUF (
    .I(\tl3_R/O ),
    .O(tl3_R)
  );
  X_IPAD #(
    .LOC ( "PAD52" ))
  \H3H2H1_L<0>/PAD  (
    .PAD(H3H2H1_L[0])
  );
  X_BUF #(
    .LOC ( "PAD52" ))
  H3H2H1_L_0_IBUF (
    .I(H3H2H1_L[0]),
    .O(\H3H2H1_L<0>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD56" ))
  \H3H2H1_L<1>/PAD  (
    .PAD(H3H2H1_L[1])
  );
  X_BUF #(
    .LOC ( "PAD56" ))
  H3H2H1_L_1_IBUF (
    .I(H3H2H1_L[1]),
    .O(\H3H2H1_L<1>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD60" ))
  \H3H2H1_L<2>/PAD  (
    .PAD(H3H2H1_L[2])
  );
  X_BUF #(
    .LOC ( "PAD60" ))
  H3H2H1_L_2_IBUF (
    .I(H3H2H1_L[2]),
    .O(\H3H2H1_L<2>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD6" ))
  \H3H2H1_R<0>/PAD  (
    .PAD(H3H2H1_R[0])
  );
  X_BUF #(
    .LOC ( "PAD6" ))
  H3H2H1_R_0_IBUF (
    .I(H3H2H1_R[0]),
    .O(\H3H2H1_R<0>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD13" ))
  \H3H2H1_R<1>/PAD  (
    .PAD(H3H2H1_R[1])
  );
  X_BUF #(
    .LOC ( "PAD13" ))
  H3H2H1_R_1_IBUF (
    .I(H3H2H1_R[1]),
    .O(\H3H2H1_R<1>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD17" ))
  \H3H2H1_R<2>/PAD  (
    .PAD(H3H2H1_R[2])
  );
  X_BUF #(
    .LOC ( "PAD17" ))
  H3H2H1_R_2_IBUF (
    .I(H3H2H1_R[2]),
    .O(\H3H2H1_R<2>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD88" ))
  \reset/PAD  (
    .PAD(reset)
  );
  X_BUF #(
    .LOC ( "PAD88" ))
  reset_IBUF (
    .I(reset),
    .O(\reset/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD186" ))
  \test_data<0>/PAD  (
    .PAD(test_data[0])
  );
  X_OBUF #(
    .LOC ( "PAD186" ))
  test_data_0_OBUF (
    .I(\test_data<0>/O ),
    .O(test_data[0])
  );
  X_OPAD #(
    .LOC ( "PAD192" ))
  \test_data<1>/PAD  (
    .PAD(test_data[1])
  );
  X_OBUF #(
    .LOC ( "PAD192" ))
  test_data_1_OBUF (
    .I(\test_data<1>/O ),
    .O(test_data[1])
  );
  X_OPAD #(
    .LOC ( "PAD184" ))
  \test_data<2>/PAD  (
    .PAD(test_data[2])
  );
  X_OBUF #(
    .LOC ( "PAD184" ))
  test_data_2_OBUF (
    .I(\test_data<2>/O ),
    .O(test_data[2])
  );
  X_OPAD #(
    .LOC ( "PAD182" ))
  \test_data<3>/PAD  (
    .PAD(test_data[3])
  );
  X_OBUF #(
    .LOC ( "PAD182" ))
  test_data_3_OBUF (
    .I(\test_data<3>/O ),
    .O(test_data[3])
  );
  X_OPAD #(
    .LOC ( "PAD176" ))
  \test_data<4>/PAD  (
    .PAD(test_data[4])
  );
  X_OBUF #(
    .LOC ( "PAD176" ))
  test_data_4_OBUF (
    .I(\test_data<4>/O ),
    .O(test_data[4])
  );
  X_OPAD #(
    .LOC ( "PAD181" ))
  \test_data<5>/PAD  (
    .PAD(test_data[5])
  );
  X_OBUF #(
    .LOC ( "PAD181" ))
  test_data_5_OBUF (
    .I(\test_data<5>/O ),
    .O(test_data[5])
  );
  X_OPAD #(
    .LOC ( "PAD185" ))
  \test_data<6>/PAD  (
    .PAD(test_data[6])
  );
  X_OBUF #(
    .LOC ( "PAD185" ))
  test_data_6_OBUF (
    .I(\test_data<6>/O ),
    .O(test_data[6])
  );
  X_OPAD #(
    .LOC ( "PAD183" ))
  \test_data<7>/PAD  (
    .PAD(test_data[7])
  );
  X_OBUF #(
    .LOC ( "PAD183" ))
  test_data_7_OBUF (
    .I(\test_data<7>/O ),
    .O(test_data[7])
  );
  X_OPAD #(
    .LOC ( "PAD174" ))
  \test_data<8>/PAD  (
    .PAD(test_data[8])
  );
  X_OBUF #(
    .LOC ( "PAD174" ))
  test_data_8_OBUF (
    .I(\test_data<8>/O ),
    .O(test_data[8])
  );
  X_OPAD #(
    .LOC ( "PAD190" ))
  \test_data<9>/PAD  (
    .PAD(test_data[9])
  );
  X_OBUF #(
    .LOC ( "PAD190" ))
  test_data_9_OBUF (
    .I(\test_data<9>/O ),
    .O(test_data[9])
  );
  X_OPAD #(
    .LOC ( "PAD188" ))
  \Test_PWM_L/PAD  (
    .PAD(Test_PWM_L)
  );
  X_OBUF #(
    .LOC ( "PAD188" ))
  Test_PWM_L_OBUF (
    .I(\Test_PWM_L/O ),
    .O(Test_PWM_L)
  );
  X_OPAD #(
    .LOC ( "PAD195" ))
  \Test_PWM_R/PAD  (
    .PAD(Test_PWM_R)
  );
  X_OBUF #(
    .LOC ( "PAD195" ))
  Test_PWM_R_OBUF (
    .I(\Test_PWM_R/O ),
    .O(Test_PWM_R)
  );
  X_OPAD #(
    .LOC ( "PAD189" ))
  \test_data<10>/PAD  (
    .PAD(test_data[10])
  );
  X_OBUF #(
    .LOC ( "PAD189" ))
  test_data_10_OBUF (
    .I(\test_data<10>/O ),
    .O(test_data[10])
  );
  X_OPAD #(
    .LOC ( "PAD187" ))
  \test_data<11>/PAD  (
    .PAD(test_data[11])
  );
  X_OBUF #(
    .LOC ( "PAD187" ))
  test_data_11_OBUF (
    .I(\test_data<11>/O ),
    .O(test_data[11])
  );
  X_OPAD #(
    .LOC ( "PAD175" ))
  \test_data<12>/PAD  (
    .PAD(test_data[12])
  );
  X_OBUF #(
    .LOC ( "PAD175" ))
  test_data_12_OBUF (
    .I(\test_data<12>/O ),
    .O(test_data[12])
  );
  X_OPAD #(
    .LOC ( "PAD180" ))
  \test_data<13>/PAD  (
    .PAD(test_data[13])
  );
  X_OBUF #(
    .LOC ( "PAD180" ))
  test_data_13_OBUF (
    .I(\test_data<13>/O ),
    .O(test_data[13])
  );
  X_OPAD #(
    .LOC ( "PAD179" ))
  \test_data<14>/PAD  (
    .PAD(test_data[14])
  );
  X_OBUF #(
    .LOC ( "PAD179" ))
  test_data_14_OBUF (
    .I(\test_data<14>/O ),
    .O(test_data[14])
  );
  X_OPAD #(
    .LOC ( "PAD177" ))
  \test_data<15>/PAD  (
    .PAD(test_data[15])
  );
  X_OBUF #(
    .LOC ( "PAD177" ))
  test_data_15_OBUF (
    .I(\test_data<15>/O ),
    .O(test_data[15])
  );
  X_OPAD #(
    .LOC ( "PAD194" ))
  \simo_out/PAD  (
    .PAD(simo_out)
  );
  X_OBUF #(
    .LOC ( "PAD194" ))
  simo_out_OBUF (
    .I(\simo_out/O ),
    .O(simo_out)
  );
  X_BUFGMUX #(
    .LOC ( "BUFGMUX0" ))
  \clk_BUFGP/BUFG  (
    .I0(\clk_BUFGP/BUFG/I0_INV ),
    .I1(GND),
    .S(\clk_BUFGP/BUFG/S_INVNOT ),
    .O(clk_BUFGP)
  );
  X_INV #(
    .LOC ( "BUFGMUX0" ))
  \clk_BUFGP/BUFG/SINV  (
    .I(1'b1),
    .O(\clk_BUFGP/BUFG/S_INVNOT )
  );
  X_BUF #(
    .LOC ( "BUFGMUX0" ))
  \clk_BUFGP/BUFG/I0_USED  (
    .I(\clk/INBUF ),
    .O(\clk_BUFGP/BUFG/I0_INV )
  );
  X_BUFGMUX #(
    .LOC ( "BUFGMUX1" ))
  reset_IBUF_BUFG (
    .I0(\reset_IBUF_BUFG/I0_INV ),
    .I1(GND),
    .S(\reset_IBUF_BUFG/S_INVNOT ),
    .O(reset_IBUF_1680)
  );
  X_INV #(
    .LOC ( "BUFGMUX1" ))
  \reset_IBUF_BUFG/SINV  (
    .I(1'b1),
    .O(\reset_IBUF_BUFG/S_INVNOT )
  );
  X_BUF #(
    .LOC ( "BUFGMUX1" ))
  \reset_IBUF_BUFG/I0_USED  (
    .I(reset_IBUF1),
    .O(\reset_IBUF_BUFG/I0_INV )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y26" ))
  \N6/XUSED  (
    .I(N6),
    .O(N6_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y26" ))
  \N6/YUSED  (
    .I(\pwm_gene_R/counter_and00003/O_pack_1 ),
    .O(\pwm_gene_R/counter_and00003/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y26" ))
  \N8/XUSED  (
    .I(N8),
    .O(N8_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y26" ))
  \N8/YUSED  (
    .I(\pwm_gene_L/counter_and00003/O_pack_1 ),
    .O(\pwm_gene_L/counter_and00003/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X7Y25" ))
  \blocspi_slave/Data_7_not0001/YUSED  (
    .I(\blocspi_slave/N4_pack_1 ),
    .O(\blocspi_slave/N4 )
  );
  X_LUT4 #(
    .INIT ( 16'h0020 ),
    .LOC ( "SLICE_X7Y24" ))
  \blocspi_slave/Data_8_not00011  (
    .ADR0(\blocspi_slave/i [3]),
    .ADR1(\blocspi_slave/i [2]),
    .ADR2(\blocspi_slave/N2 ),
    .ADR3(\blocspi_slave/i [1]),
    .O(\blocspi_slave/Data_8_not0001 )
  );
  X_BUF #(
    .LOC ( "SLICE_X7Y24" ))
  \blocspi_slave/Data_8_not0001/YUSED  (
    .I(\blocspi_slave/N2_pack_1 ),
    .O(\blocspi_slave/N2 )
  );
  X_LUT4 #(
    .INIT ( 16'h2020 ),
    .LOC ( "SLICE_X5Y24" ))
  \blocspi_slave/Data_9_not00011  (
    .ADR0(\blocspi_slave/i [3]),
    .ADR1(\blocspi_slave/i [2]),
    .ADR2(\blocspi_slave/N3 ),
    .ADR3(VCC),
    .O(\blocspi_slave/Data_9_not0001 )
  );
  X_BUF #(
    .LOC ( "SLICE_X5Y24" ))
  \blocspi_slave/Data_9_not0001/YUSED  (
    .I(\blocspi_slave/N3_pack_1 ),
    .O(\blocspi_slave/N3 )
  );
  X_LUT4 #(
    .INIT ( 16'h0020 ),
    .LOC ( "SLICE_X5Y24" ))
  \blocspi_slave/Data_13_not000111  (
    .ADR0(\blocspi_slave/i [1]),
    .ADR1(\blocspi_slave/i [0]),
    .ADR2(\blocspi_slave/Data_0_not00011_wg_cy[7] ),
    .ADR3(\blocspi_slave/i [4]),
    .O(\blocspi_slave/N3_pack_1 )
  );
  X_SFF #(
    .LOC ( "SLICE_X22Y24" ),
    .INIT ( 1'b0 ))
  \pwm_gene_L/counter_2  (
    .I(\pwm_gene_L/counter<3>/DYMUX_5420 ),
    .CE(\pwm_gene_L/counter<3>/CEINV_5409 ),
    .CLK(\pwm_gene_L/counter<3>/CLKINV_5410 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\pwm_gene_L/counter<3>/SRINV_5411 ),
    .O(\pwm_gene_L/counter [2])
  );
  X_LUT4 #(
    .INIT ( 16'h66AA ),
    .LOC ( "SLICE_X22Y24" ))
  \pwm_gene_L/Mcount_counter_xor<2>11  (
    .ADR0(\pwm_gene_L/counter [2]),
    .ADR1(\pwm_gene_L/counter [0]),
    .ADR2(VCC),
    .ADR3(\pwm_gene_L/counter [1]),
    .O(\pwm_gene_L/Result<2>1 )
  );
  X_LUT4 #(
    .INIT ( 16'h6CCC ),
    .LOC ( "SLICE_X22Y24" ))
  \pwm_gene_L/Mcount_counter_xor<3>12  (
    .ADR0(\pwm_gene_L/counter [2]),
    .ADR1(\pwm_gene_L/counter [3]),
    .ADR2(\pwm_gene_L/counter [0]),
    .ADR3(\pwm_gene_L/counter [1]),
    .O(\pwm_gene_L/Result<3>1 )
  );
  X_SFF #(
    .LOC ( "SLICE_X22Y24" ),
    .INIT ( 1'b0 ))
  \pwm_gene_L/counter_3  (
    .I(\pwm_gene_L/counter<3>/DXMUX_5433 ),
    .CE(\pwm_gene_L/counter<3>/CEINV_5409 ),
    .CLK(\pwm_gene_L/counter<3>/CLKINV_5410 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\pwm_gene_L/counter<3>/SRINV_5411 ),
    .O(\pwm_gene_L/counter [3])
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y24" ))
  \pwm_gene_L/counter<3>/DXMUX  (
    .I(\pwm_gene_L/Result<3>1 ),
    .O(\pwm_gene_L/counter<3>/DXMUX_5433 )
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y24" ))
  \pwm_gene_L/counter<3>/DYMUX  (
    .I(\pwm_gene_L/Result<2>1 ),
    .O(\pwm_gene_L/counter<3>/DYMUX_5420 )
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y24" ))
  \pwm_gene_L/counter<3>/SRINV  (
    .I(\pwm_gene_L/counter_and0000_0 ),
    .O(\pwm_gene_L/counter<3>/SRINV_5411 )
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y24" ))
  \pwm_gene_L/counter<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\pwm_gene_L/counter<3>/CLKINV_5410 )
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y24" ))
  \pwm_gene_L/counter<3>/CEINV  (
    .I(\pwm_gene_L/clock_and0000_0 ),
    .O(\pwm_gene_L/counter<3>/CEINV_5409 )
  );
  X_LUT4 #(
    .INIT ( 16'hAA6A ),
    .LOC ( "SLICE_X23Y24" ))
  \pwm_gene_L/Mcount_counter_xor<5>11  (
    .ADR0(\pwm_gene_L/counter [5]),
    .ADR1(\pwm_gene_L/counter [4]),
    .ADR2(\pwm_gene_L/counter [3]),
    .ADR3(\pwm_gene_L/N4 ),
    .O(\pwm_gene_L/Result<5>1_5454 )
  );
  X_SFF #(
    .LOC ( "SLICE_X23Y24" ),
    .INIT ( 1'b0 ))
  \pwm_gene_L/counter_5  (
    .I(\pwm_gene_L/counter<5>/DYMUX_5457 ),
    .CE(\pwm_gene_L/counter<5>/CEINV_5447 ),
    .CLK(\pwm_gene_L/counter<5>/CLKINV_5448 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\pwm_gene_L/counter<5>/SRINV_5449 ),
    .O(\pwm_gene_L/counter [5])
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y24" ))
  \pwm_gene_L/counter<5>/DYMUX  (
    .I(\pwm_gene_L/Result<5>1_5454 ),
    .O(\pwm_gene_L/counter<5>/DYMUX_5457 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y24" ))
  \pwm_gene_L/counter<5>/SRINV  (
    .I(\pwm_gene_L/counter_and0000_0 ),
    .O(\pwm_gene_L/counter<5>/SRINV_5449 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y24" ))
  \pwm_gene_L/counter<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\pwm_gene_L/counter<5>/CLKINV_5448 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y24" ))
  \pwm_gene_L/counter<5>/CEINV  (
    .I(\pwm_gene_L/clock_and0000_0 ),
    .O(\pwm_gene_L/counter<5>/CEINV_5447 )
  );
  X_SFF #(
    .LOC ( "SLICE_X27Y22" ),
    .INIT ( 1'b0 ))
  \pwm_gene_R/clock_2  (
    .I(\pwm_gene_R/clock<3>/DYMUX_5486 ),
    .CE(\pwm_gene_R/clock<3>/CEINVNOT ),
    .CLK(\pwm_gene_R/clock<3>/CLKINV_5476 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\pwm_gene_R/clock<3>/SRINV_5477 ),
    .O(\pwm_gene_R/clock [2])
  );
  X_LUT4 #(
    .INIT ( 16'h5AAA ),
    .LOC ( "SLICE_X27Y22" ))
  \pwm_gene_R/Mcount_clock_xor<2>11  (
    .ADR0(\pwm_gene_R/clock [2]),
    .ADR1(VCC),
    .ADR2(\pwm_gene_R/clock [1]),
    .ADR3(\pwm_gene_R/clock [0]),
    .O(\pwm_gene_R/Result [2])
  );
  X_LUT4 #(
    .INIT ( 16'h6AAA ),
    .LOC ( "SLICE_X27Y22" ))
  \pwm_gene_R/Result<3>2  (
    .ADR0(\pwm_gene_R/clock [3]),
    .ADR1(\pwm_gene_R/clock [2]),
    .ADR2(\pwm_gene_R/clock [1]),
    .ADR3(\pwm_gene_R/clock [0]),
    .O(\pwm_gene_R/Result [3])
  );
  X_SFF #(
    .LOC ( "SLICE_X27Y22" ),
    .INIT ( 1'b0 ))
  \pwm_gene_R/clock_3  (
    .I(\pwm_gene_R/clock<3>/DXMUX_5499 ),
    .CE(\pwm_gene_R/clock<3>/CEINVNOT ),
    .CLK(\pwm_gene_R/clock<3>/CLKINV_5476 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\pwm_gene_R/clock<3>/SRINV_5477 ),
    .O(\pwm_gene_R/clock [3])
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y22" ))
  \pwm_gene_R/clock<3>/DXMUX  (
    .I(\pwm_gene_R/Result [3]),
    .O(\pwm_gene_R/clock<3>/DXMUX_5499 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y22" ))
  \pwm_gene_R/clock<3>/DYMUX  (
    .I(\pwm_gene_R/Result [2]),
    .O(\pwm_gene_R/clock<3>/DYMUX_5486 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y22" ))
  \pwm_gene_R/clock<3>/SRINV  (
    .I(\pwm_gene_R/clock_and0000_0 ),
    .O(\pwm_gene_R/clock<3>/SRINV_5477 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y22" ))
  \pwm_gene_R/clock<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\pwm_gene_R/clock<3>/CLKINV_5476 )
  );
  X_INV #(
    .LOC ( "SLICE_X27Y22" ))
  \pwm_gene_R/clock<3>/CEINV  (
    .I(reset_IBUF1),
    .O(\pwm_gene_R/clock<3>/CEINVNOT )
  );
  X_LUT4 #(
    .INIT ( 16'hA6AA ),
    .LOC ( "SLICE_X24Y22" ))
  \pwm_gene_R/Result<5>1  (
    .ADR0(\pwm_gene_R/clock [5]),
    .ADR1(\pwm_gene_R/clock [4]),
    .ADR2(\pwm_gene_R/Result<3>_bdd0 ),
    .ADR3(\pwm_gene_R/clock [3]),
    .O(\pwm_gene_R/Result [5])
  );
  X_SFF #(
    .LOC ( "SLICE_X24Y22" ),
    .INIT ( 1'b0 ))
  \pwm_gene_R/clock_5  (
    .I(\pwm_gene_R/clock<5>/DYMUX_5523 ),
    .CE(\pwm_gene_R/clock<5>/CEINVNOT ),
    .CLK(\pwm_gene_R/clock<5>/CLKINV_5514 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\pwm_gene_R/clock<5>/SRINV_5515 ),
    .O(\pwm_gene_R/clock [5])
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y22" ))
  \pwm_gene_R/clock<5>/DYMUX  (
    .I(\pwm_gene_R/Result [5]),
    .O(\pwm_gene_R/clock<5>/DYMUX_5523 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y22" ))
  \pwm_gene_R/clock<5>/SRINV  (
    .I(\pwm_gene_R/clock_and0000_0 ),
    .O(\pwm_gene_R/clock<5>/SRINV_5515 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y22" ))
  \pwm_gene_R/clock<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\pwm_gene_R/clock<5>/CLKINV_5514 )
  );
  X_INV #(
    .LOC ( "SLICE_X24Y22" ))
  \pwm_gene_R/clock<5>/CEINV  (
    .I(reset_IBUF1),
    .O(\pwm_gene_R/clock<5>/CEINVNOT )
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ),
    .LOC ( "SLICE_X8Y42" ))
  \stab/Mshreg_sclk2/SRL16E  (
    .A0(GND),
    .A1(GND),
    .A2(GND),
    .A3(GND),
    .D(\stab/sclk2/DIG_MUX_5543 ),
    .CE(\stab/sclk2/WSG ),
    .CLK(\stab/sclk2/CLKINV_5541 ),
    .Q(\stab/Mshreg_sclk2 ),
    .Q15(\NLW_stab/Mshreg_sclk2/SRL16E_Q15_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X8Y42" ),
    .INIT ( 1'b0 ))
  \stab/sclk2  (
    .I(\stab/sclk2/DYMUX_5554 ),
    .CE(VCC),
    .CLK(\stab/sclk2/CLKINV_5541 ),
    .SET(GND),
    .RST(GND),
    .O(\stab/sclk2_1568 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y42" ))
  \stab/sclk2/DYMUX  (
    .I(\stab/Mshreg_sclk2 ),
    .O(\stab/sclk2/DYMUX_5554 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y42" ))
  \stab/sclk2/DIG_MUX  (
    .I(\sclk/INBUF ),
    .O(\stab/sclk2/DIG_MUX_5543 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y42" ))
  \stab/sclk2/SRINV  (
    .I(1'b1),
    .O(\stab/sclk2/SRINV_5537 )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y42" ))
  \stab/sclk2/CLKINV  (
    .I(clk_BUFGP),
    .O(\stab/sclk2/CLKINV_5541 )
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ),
    .LOC ( "SLICE_X4Y44" ))
  \stab/Mshreg_simo2/SRL16E  (
    .A0(GND),
    .A1(GND),
    .A2(GND),
    .A3(GND),
    .D(\stab/simo2/DIG_MUX_5572 ),
    .CE(\stab/simo2/WSG ),
    .CLK(\stab/simo2/CLKINV_5570 ),
    .Q(\stab/Mshreg_simo2 ),
    .Q15(\NLW_stab/Mshreg_simo2/SRL16E_Q15_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y44" ),
    .INIT ( 1'b0 ))
  \stab/simo2  (
    .I(\stab/simo2/DYMUX_5583 ),
    .CE(VCC),
    .CLK(\stab/simo2/CLKINV_5570 ),
    .SET(GND),
    .RST(GND),
    .O(\stab/simo2_1526 )
  );
  X_BUF #(
    .LOC ( "SLICE_X4Y44" ))
  \stab/simo2/DYMUX  (
    .I(\stab/Mshreg_simo2 ),
    .O(\stab/simo2/DYMUX_5583 )
  );
  X_BUF #(
    .LOC ( "SLICE_X4Y44" ))
  \stab/simo2/DIG_MUX  (
    .I(simo_out_OBUF_1678),
    .O(\stab/simo2/DIG_MUX_5572 )
  );
  X_BUF #(
    .LOC ( "SLICE_X4Y44" ))
  \stab/simo2/SRINV  (
    .I(1'b1),
    .O(\stab/simo2/SRINV_5566 )
  );
  X_BUF #(
    .LOC ( "SLICE_X4Y44" ))
  \stab/simo2/CLKINV  (
    .I(clk_BUFGP),
    .O(\stab/simo2/CLKINV_5570 )
  );
  X_SRLC16E #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X10Y47" ))
  \stab/Mshreg_ssel2/SRL16E  (
    .A0(GND),
    .A1(GND),
    .A2(GND),
    .A3(GND),
    .D(\stab/ssel2/DIG_MUX_5601 ),
    .CE(\stab/ssel2/WSG ),
    .CLK(\stab/ssel2/CLKINV_5599 ),
    .Q(\stab/Mshreg_ssel2 ),
    .Q15(\NLW_stab/Mshreg_ssel2/SRL16E_Q15_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y47" ),
    .INIT ( 1'b1 ))
  \stab/ssel2  (
    .I(\stab/ssel2/DYMUX_5612 ),
    .CE(VCC),
    .CLK(\stab/ssel2/CLKINV_5599 ),
    .SET(GND),
    .RST(GND),
    .O(\stab/ssel2_1592 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y47" ))
  \stab/ssel2/DYMUX  (
    .I(\stab/Mshreg_ssel2 ),
    .O(\stab/ssel2/DYMUX_5612 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y47" ))
  \stab/ssel2/DIG_MUX  (
    .I(\ssel/INBUF ),
    .O(\stab/ssel2/DIG_MUX_5601 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y47" ))
  \stab/ssel2/SRINV  (
    .I(1'b1),
    .O(\stab/ssel2/SRINV_5595 )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y47" ))
  \stab/ssel2/CLKINV  (
    .I(clk_BUFGP),
    .O(\stab/ssel2/CLKINV_5599 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y29" ))
  \mux_freq_0/end_freq<0>/DYMUX  (
    .I(\mux_freq_0/Mrom_end_freq_mux0002 ),
    .O(\mux_freq_0/end_freq<0>/DYMUX_5632 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y29" ))
  \mux_freq_0/end_freq<0>/SRINV  (
    .I(reset_IBUF1),
    .O(\mux_freq_0/end_freq<0>/SRINV_5622 )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y29" ))
  \mux_freq_0/end_freq<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\mux_freq_0/end_freq<0>/CLKINV_5621 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y28" ))
  \traitement_spi/sigfreq_recue<0>/DYMUX  (
    .I(\traitement_spi/sigfreq_recue_0_mux0000 ),
    .O(\traitement_spi/sigfreq_recue<0>/DYMUX_5651 )
  );
  X_BUF #(
    .LOC ( "SLICE_X24Y28" ))
  \traitement_spi/sigfreq_recue<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\traitement_spi/sigfreq_recue<0>/CLKINV_5642 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y26" ))
  \pwm_gene_R/counter<3>/DXMUX  (
    .I(\pwm_gene_R/Result<3>1 ),
    .O(\pwm_gene_R/counter<3>/DXMUX_5691 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y26" ))
  \pwm_gene_R/counter<3>/DYMUX  (
    .I(\pwm_gene_R/Result<2>1 ),
    .O(\pwm_gene_R/counter<3>/DYMUX_5678 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y26" ))
  \pwm_gene_R/counter<3>/SRINV  (
    .I(\pwm_gene_R/counter_and0000_0 ),
    .O(\pwm_gene_R/counter<3>/SRINV_5669 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y26" ))
  \pwm_gene_R/counter<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\pwm_gene_R/counter<3>/CLKINV_5668 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y26" ))
  \pwm_gene_R/counter<3>/CEINV  (
    .I(\pwm_gene_R/clock_and0000_0 ),
    .O(\pwm_gene_R/counter<3>/CEINV_5667 )
  );
  X_LUT4 #(
    .INIT ( 16'hB4F0 ),
    .LOC ( "SLICE_X20Y27" ))
  \pwm_gene_R/Mcount_counter_xor<5>11  (
    .ADR0(\pwm_gene_R/N4 ),
    .ADR1(\pwm_gene_R/counter [3]),
    .ADR2(\pwm_gene_R/counter [5]),
    .ADR3(\pwm_gene_R/counter [4]),
    .O(\pwm_gene_R/Result<5>1_5712 )
  );
  X_SFF #(
    .LOC ( "SLICE_X20Y27" ),
    .INIT ( 1'b0 ))
  \pwm_gene_R/counter_5  (
    .I(\pwm_gene_R/counter<5>/DYMUX_5715 ),
    .CE(\pwm_gene_R/counter<5>/CEINV_5705 ),
    .CLK(\pwm_gene_R/counter<5>/CLKINV_5706 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\pwm_gene_R/counter<5>/SRINV_5707 ),
    .O(\pwm_gene_R/counter [5])
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y27" ))
  \pwm_gene_R/counter<5>/DYMUX  (
    .I(\pwm_gene_R/Result<5>1_5712 ),
    .O(\pwm_gene_R/counter<5>/DYMUX_5715 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y27" ))
  \pwm_gene_R/counter<5>/SRINV  (
    .I(\pwm_gene_R/counter_and0000_0 ),
    .O(\pwm_gene_R/counter<5>/SRINV_5707 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y27" ))
  \pwm_gene_R/counter<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\pwm_gene_R/counter<5>/CLKINV_5706 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y27" ))
  \pwm_gene_R/counter<5>/CEINV  (
    .I(\pwm_gene_R/clock_and0000_0 ),
    .O(\pwm_gene_R/counter<5>/CEINV_5705 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y25" ))
  \pwm_gene_L/clock<3>/DXMUX  (
    .I(\pwm_gene_L/Result [3]),
    .O(\pwm_gene_L/clock<3>/DXMUX_5757 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y25" ))
  \pwm_gene_L/clock<3>/DYMUX  (
    .I(\pwm_gene_L/Result [2]),
    .O(\pwm_gene_L/clock<3>/DYMUX_5744 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y25" ))
  \pwm_gene_L/clock<3>/SRINV  (
    .I(\pwm_gene_L/clock_and0000_0 ),
    .O(\pwm_gene_L/clock<3>/SRINV_5735 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y25" ))
  \pwm_gene_L/clock<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\pwm_gene_L/clock<3>/CLKINV_5734 )
  );
  X_INV #(
    .LOC ( "SLICE_X27Y25" ))
  \pwm_gene_L/clock<3>/CEINV  (
    .I(reset_IBUF1),
    .O(\pwm_gene_L/clock<3>/CEINVNOT )
  );
  X_LUT4 #(
    .INIT ( 16'h7878 ),
    .LOC ( "SLICE_X27Y25" ))
  \pwm_gene_L/Mcount_clock_xor<2>11  (
    .ADR0(\pwm_gene_L/clock [0]),
    .ADR1(\pwm_gene_L/clock [1]),
    .ADR2(\pwm_gene_L/clock [2]),
    .ADR3(VCC),
    .O(\pwm_gene_L/Result [2])
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y24" ))
  \pwm_gene_L/clock<5>/DYMUX  (
    .I(\pwm_gene_L/Result [5]),
    .O(\pwm_gene_L/clock<5>/DYMUX_5781 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y24" ))
  \pwm_gene_L/clock<5>/SRINV  (
    .I(\pwm_gene_L/clock_and0000_0 ),
    .O(\pwm_gene_L/clock<5>/SRINV_5773 )
  );
  X_BUF #(
    .LOC ( "SLICE_X26Y24" ))
  \pwm_gene_L/clock<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\pwm_gene_L/clock<5>/CLKINV_5772 )
  );
  X_INV #(
    .LOC ( "SLICE_X26Y24" ))
  \pwm_gene_L/clock<5>/CEINV  (
    .I(reset_IBUF1),
    .O(\pwm_gene_L/clock<5>/CEINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y33" ))
  \traitement_spi/sigpwm_dc_L<1>/DXMUX  (
    .I(\blocspi_slave/test_data [2]),
    .O(\traitement_spi/sigpwm_dc_L<1>/DXMUX_5802 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y33" ))
  \traitement_spi/sigpwm_dc_L<1>/DYMUX  (
    .I(\blocspi_slave/test_data [1]),
    .O(\traitement_spi/sigpwm_dc_L<1>/DYMUX_5796 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y33" ))
  \traitement_spi/sigpwm_dc_L<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\traitement_spi/sigpwm_dc_L<1>/CLKINV_5794 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y33" ))
  \traitement_spi/sigpwm_dc_L<1>/CEINV  (
    .I(\traitement_spi/sigpwm_dc_L_0_cmp_eq0000_0 ),
    .O(\traitement_spi/sigpwm_dc_L<1>/CEINV_5793 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y33" ))
  \traitement_spi/sigpwm_dc_L<3>/DXMUX  (
    .I(\blocspi_slave/test_data [4]),
    .O(\traitement_spi/sigpwm_dc_L<3>/DXMUX_5822 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y33" ))
  \traitement_spi/sigpwm_dc_L<3>/DYMUX  (
    .I(\blocspi_slave/test_data [3]),
    .O(\traitement_spi/sigpwm_dc_L<3>/DYMUX_5816 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y33" ))
  \traitement_spi/sigpwm_dc_L<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\traitement_spi/sigpwm_dc_L<3>/CLKINV_5814 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y33" ))
  \traitement_spi/sigpwm_dc_L<3>/CEINV  (
    .I(\traitement_spi/sigpwm_dc_L_0_cmp_eq0000_0 ),
    .O(\traitement_spi/sigpwm_dc_L<3>/CEINV_5813 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y35" ))
  \traitement_spi/sigpwm_dc_L<5>/DXMUX  (
    .I(\blocspi_slave/test_data [6]),
    .O(\traitement_spi/sigpwm_dc_L<5>/DXMUX_5842 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y35" ))
  \traitement_spi/sigpwm_dc_L<5>/DYMUX  (
    .I(\blocspi_slave/test_data [5]),
    .O(\traitement_spi/sigpwm_dc_L<5>/DYMUX_5836 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y35" ))
  \traitement_spi/sigpwm_dc_L<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\traitement_spi/sigpwm_dc_L<5>/CLKINV_5834 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y35" ))
  \traitement_spi/sigpwm_dc_L<5>/CEINV  (
    .I(\traitement_spi/sigpwm_dc_L_0_cmp_eq0000_0 ),
    .O(\traitement_spi/sigpwm_dc_L<5>/CEINV_5833 )
  );
  X_LUT4 #(
    .INIT ( 16'hF0FF ),
    .LOC ( "SLICE_X6Y21" ))
  \blocspi_slave/Mcount_i_lut<2>  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .ADR3(\blocspi_slave/i [2]),
    .O(\blocspi_slave/Mcount_i_lut [2])
  );
  X_LUT4 #(
    .INIT ( 16'h3333 ),
    .LOC ( "SLICE_X6Y20" ))
  \blocspi_slave/Mcompar_data_inter_cmp_gt0000_lut<8>1_INV_0  (
    .ADR0(VCC),
    .ADR1(\blocspi_slave/i [31]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_lut [8])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y20" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/i_0  (
    .I(\blocspi_slave/i<0>/DYMUX_3433 ),
    .CE(\blocspi_slave/i<0>/CEINV_3412 ),
    .CLK(\blocspi_slave/i<0>/CLKINV_3413 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\blocspi_slave/i<0>/SRINV_3414 ),
    .O(\blocspi_slave/i [0])
  );
  X_SFF #(
    .LOC ( "SLICE_X23Y35" ),
    .INIT ( 1'b0 ))
  \pwm_gene_L/out_pwm  (
    .I(\pwm_gene_L/out_pwm/DYMUX_4524 ),
    .CE(\pwm_gene_L/out_pwm/CEINV_4508 ),
    .CLK(\pwm_gene_L/out_pwm/CLKINV_4509 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\pwm_gene_L/out_pwm/SRINV_4510 ),
    .O(\pwm_gene_L/out_pwm_1577 )
  );
  X_LUT4 #(
    .INIT ( 16'hC3C3 ),
    .LOC ( "SLICE_X23Y34" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_lut<4>  (
    .ADR0(VCC),
    .ADR1(\pwm_gene_L/counter [4]),
    .ADR2(\traitement_spi/sigpwm_dc_L [4]),
    .ADR3(VCC),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_lut [4])
  );
  X_LUT4 #(
    .INIT ( 16'hAA55 ),
    .LOC ( "SLICE_X23Y34" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_lut<5>  (
    .ADR0(\pwm_gene_L/counter [5]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\traitement_spi/sigpwm_dc_L [5]),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_lut [5])
  );
  X_LUT4 #(
    .INIT ( 16'hA5A5 ),
    .LOC ( "SLICE_X23Y33" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_lut<2>  (
    .ADR0(\pwm_gene_L/counter [2]),
    .ADR1(VCC),
    .ADR2(\traitement_spi/sigpwm_dc_L [2]),
    .ADR3(VCC),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_lut [2])
  );
  X_LUT4 #(
    .INIT ( 16'hCC33 ),
    .LOC ( "SLICE_X23Y33" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_lut<3>  (
    .ADR0(VCC),
    .ADR1(\pwm_gene_L/counter [3]),
    .ADR2(VCC),
    .ADR3(\traitement_spi/sigpwm_dc_L [3]),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_lut [3])
  );
  X_LUT4 #(
    .INIT ( 16'hC3C3 ),
    .LOC ( "SLICE_X23Y32" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_lut<0>  (
    .ADR0(VCC),
    .ADR1(\pwm_gene_L/counter [0]),
    .ADR2(\traitement_spi/sigpwm_dc_L [0]),
    .ADR3(VCC),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_lut [0])
  );
  X_LUT4 #(
    .INIT ( 16'hAA55 ),
    .LOC ( "SLICE_X23Y32" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_lut<1>  (
    .ADR0(\pwm_gene_L/counter [1]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\traitement_spi/sigpwm_dc_L [1]),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_lt0000_lut [1])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X7Y23" ))
  \blocspi_slave/Data_0_not00011_wg_lut<6>  (
    .ADR0(\stab/ssel2_1592 ),
    .ADR1(\blocspi_slave/i [10]),
    .ADR2(\blocspi_slave/i [9]),
    .ADR3(\blocspi_slave/i [8]),
    .O(\blocspi_slave/Data_0_not00011_wg_lut [6])
  );
  X_LUT4 #(
    .INIT ( 16'h0010 ),
    .LOC ( "SLICE_X7Y23" ))
  \blocspi_slave/Data_0_not00011_wg_lut<7>  (
    .ADR0(\blocspi_slave/i [7]),
    .ADR1(\blocspi_slave/i [6]),
    .ADR2(\rising_edg2/flipflop_ris/output_1552 ),
    .ADR3(\blocspi_slave/i [5]),
    .O(\blocspi_slave/Data_0_not00011_wg_lut [7])
  );
  X_SFF #(
    .LOC ( "SLICE_X19Y26" ),
    .INIT ( 1'b0 ))
  \pwm_gene_R/counter_3  (
    .I(\pwm_gene_R/counter<3>/DXMUX_5691 ),
    .CE(\pwm_gene_R/counter<3>/CEINV_5667 ),
    .CLK(\pwm_gene_R/counter<3>/CLKINV_5668 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\pwm_gene_R/counter<3>/SRINV_5669 ),
    .O(\pwm_gene_R/counter [3])
  );
  X_LUT4 #(
    .INIT ( 16'h78F0 ),
    .LOC ( "SLICE_X19Y26" ))
  \pwm_gene_R/Mcount_counter_xor<3>12  (
    .ADR0(\pwm_gene_R/counter [1]),
    .ADR1(\pwm_gene_R/counter [2]),
    .ADR2(\pwm_gene_R/counter [3]),
    .ADR3(\pwm_gene_R/counter [0]),
    .O(\pwm_gene_R/Result<3>1 )
  );
  X_SFF #(
    .LOC ( "SLICE_X19Y26" ),
    .INIT ( 1'b0 ))
  \pwm_gene_R/counter_2  (
    .I(\pwm_gene_R/counter<3>/DYMUX_5678 ),
    .CE(\pwm_gene_R/counter<3>/CEINV_5667 ),
    .CLK(\pwm_gene_R/counter<3>/CLKINV_5668 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\pwm_gene_R/counter<3>/SRINV_5669 ),
    .O(\pwm_gene_R/counter [2])
  );
  X_LUT4 #(
    .INIT ( 16'h66CC ),
    .LOC ( "SLICE_X19Y26" ))
  \pwm_gene_R/Mcount_counter_xor<2>11  (
    .ADR0(\pwm_gene_R/counter [1]),
    .ADR1(\pwm_gene_R/counter [2]),
    .ADR2(VCC),
    .ADR3(\pwm_gene_R/counter [0]),
    .O(\pwm_gene_R/Result<2>1 )
  );
  X_FF #(
    .LOC ( "SLICE_X24Y28" ),
    .INIT ( 1'b0 ))
  \traitement_spi/sigfreq_recue_0  (
    .I(\traitement_spi/sigfreq_recue<0>/DYMUX_5651 ),
    .CE(VCC),
    .CLK(\traitement_spi/sigfreq_recue<0>/CLKINV_5642 ),
    .SET(GND),
    .RST(GND),
    .O(\traitement_spi/sigfreq_recue [0])
  );
  X_LUT4 #(
    .INIT ( 16'hF0CC ),
    .LOC ( "SLICE_X24Y28" ))
  \traitement_spi/Mmux_sigfreq_recue_0_mux000031  (
    .ADR0(VCC),
    .ADR1(\blocspi_slave/test_data [1]),
    .ADR2(\traitement_spi/sigfreq_recue [0]),
    .ADR3(\traitement_spi/N01 ),
    .O(\traitement_spi/sigfreq_recue_0_mux0000 )
  );
  X_SFF #(
    .LOC ( "SLICE_X25Y29" ),
    .INIT ( 1'b0 ))
  \mux_freq_0/end_freq_0  (
    .I(\mux_freq_0/end_freq<0>/DYMUX_5632 ),
    .CE(VCC),
    .CLK(\mux_freq_0/end_freq<0>/CLKINV_5621 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\mux_freq_0/end_freq<0>/SRINV_5622 ),
    .O(\mux_freq_0/end_freq[0] )
  );
  X_LUT4 #(
    .INIT ( 16'h7777 ),
    .LOC ( "SLICE_X25Y29" ))
  \mux_freq_0/Mrom_end_freq_mux000211  (
    .ADR0(\traitement_spi/sigfreq_recue [0]),
    .ADR1(\traitement_spi/sigfreq_recue [1]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\mux_freq_0/Mrom_end_freq_mux0002 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y35" ),
    .INIT ( 1'b0 ))
  \traitement_spi/sigpwm_dc_L_6  (
    .I(\traitement_spi/sigpwm_dc_L<6>/DYMUX_1691 ),
    .CE(\traitement_spi/sigpwm_dc_L<6>/CEINV_1688 ),
    .CLK(\traitement_spi/sigpwm_dc_L<6>/CLKINV_1689 ),
    .SET(GND),
    .RST(GND),
    .O(\traitement_spi/sigpwm_dc_L [6])
  );
  X_FF #(
    .LOC ( "SLICE_X23Y39" ),
    .INIT ( 1'b0 ))
  \traitement_spi/sigstart_L  (
    .I(\traitement_spi/sigstart_L/DYMUX_1703 ),
    .CE(\traitement_spi/sigstart_L/CEINV_1700 ),
    .CLK(\traitement_spi/sigstart_L/CLKINV_1701 ),
    .SET(GND),
    .RST(GND),
    .O(\traitement_spi/sigstart_L_1441 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y40" ),
    .INIT ( 1'b0 ))
  \traitement_spi/sigstart_R  (
    .I(\traitement_spi/sigstart_R/DYMUX_1715 ),
    .CE(\traitement_spi/sigstart_R/CEINV_1712 ),
    .CLK(\traitement_spi/sigstart_R/CLKINV_1713 ),
    .SET(GND),
    .RST(GND),
    .O(\traitement_spi/sigstart_R_1443 )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y32" ),
    .INIT ( 1'b0 ))
  \traitement_spi/sigpwm_dc_R_0  (
    .I(\traitement_spi/sigpwm_dc_R<1>/DYMUX_1729 ),
    .CE(\traitement_spi/sigpwm_dc_R<1>/CEINV_1726 ),
    .CLK(\traitement_spi/sigpwm_dc_R<1>/CLKINV_1727 ),
    .SET(GND),
    .RST(GND),
    .O(\traitement_spi/sigpwm_dc_R [0])
  );
  X_FF #(
    .LOC ( "SLICE_X17Y32" ),
    .INIT ( 1'b0 ))
  \traitement_spi/sigpwm_dc_R_1  (
    .I(\traitement_spi/sigpwm_dc_R<1>/DXMUX_1735 ),
    .CE(\traitement_spi/sigpwm_dc_R<1>/CEINV_1726 ),
    .CLK(\traitement_spi/sigpwm_dc_R<1>/CLKINV_1727 ),
    .SET(GND),
    .RST(GND),
    .O(\traitement_spi/sigpwm_dc_R [1])
  );
  X_FF #(
    .LOC ( "SLICE_X14Y33" ),
    .INIT ( 1'b0 ))
  \traitement_spi/sigpwm_dc_R_2  (
    .I(\traitement_spi/sigpwm_dc_R<3>/DYMUX_1749 ),
    .CE(\traitement_spi/sigpwm_dc_R<3>/CEINV_1746 ),
    .CLK(\traitement_spi/sigpwm_dc_R<3>/CLKINV_1747 ),
    .SET(GND),
    .RST(GND),
    .O(\traitement_spi/sigpwm_dc_R [2])
  );
  X_FF #(
    .LOC ( "SLICE_X14Y33" ),
    .INIT ( 1'b0 ))
  \traitement_spi/sigpwm_dc_R_3  (
    .I(\traitement_spi/sigpwm_dc_R<3>/DXMUX_1755 ),
    .CE(\traitement_spi/sigpwm_dc_R<3>/CEINV_1746 ),
    .CLK(\traitement_spi/sigpwm_dc_R<3>/CLKINV_1747 ),
    .SET(GND),
    .RST(GND),
    .O(\traitement_spi/sigpwm_dc_R [3])
  );
  X_FF #(
    .LOC ( "SLICE_X12Y34" ),
    .INIT ( 1'b0 ))
  \traitement_spi/sigpwm_dc_R_4  (
    .I(\traitement_spi/sigpwm_dc_R<5>/DYMUX_1769 ),
    .CE(\traitement_spi/sigpwm_dc_R<5>/CEINV_1766 ),
    .CLK(\traitement_spi/sigpwm_dc_R<5>/CLKINV_1767 ),
    .SET(GND),
    .RST(GND),
    .O(\traitement_spi/sigpwm_dc_R [4])
  );
  X_FF #(
    .LOC ( "SLICE_X12Y34" ),
    .INIT ( 1'b0 ))
  \traitement_spi/sigpwm_dc_R_5  (
    .I(\traitement_spi/sigpwm_dc_R<5>/DXMUX_1775 ),
    .CE(\traitement_spi/sigpwm_dc_R<5>/CEINV_1766 ),
    .CLK(\traitement_spi/sigpwm_dc_R<5>/CLKINV_1767 ),
    .SET(GND),
    .RST(GND),
    .O(\traitement_spi/sigpwm_dc_R [5])
  );
  X_FF #(
    .LOC ( "SLICE_X14Y34" ),
    .INIT ( 1'b0 ))
  \traitement_spi/sigpwm_dc_R_6  (
    .I(\traitement_spi/sigpwm_dc_R<6>/DYMUX_1787 ),
    .CE(\traitement_spi/sigpwm_dc_R<6>/CEINV_1784 ),
    .CLK(\traitement_spi/sigpwm_dc_R<6>/CLKINV_1785 ),
    .SET(GND),
    .RST(GND),
    .O(\traitement_spi/sigpwm_dc_R [6])
  );
  X_FF #(
    .LOC ( "SLICE_X11Y28" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/test_data_10  (
    .I(\blocspi_slave/test_data<11>/DYMUX_1799 ),
    .CE(VCC),
    .CLK(\blocspi_slave/test_data<11>/CLKINV_1797 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/test_data [10])
  );
  X_FF #(
    .LOC ( "SLICE_X11Y28" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/test_data_11  (
    .I(\blocspi_slave/test_data<11>/DXMUX_1804 ),
    .CE(VCC),
    .CLK(\blocspi_slave/test_data<11>/CLKINV_1797 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/test_data [11])
  );
  X_FF #(
    .LOC ( "SLICE_X0Y28" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/test_data_14  (
    .I(\blocspi_slave/test_data<15>/DYMUX_1831 ),
    .CE(VCC),
    .CLK(\blocspi_slave/test_data<15>/CLKINV_1829 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/test_data [14])
  );
  X_FF #(
    .LOC ( "SLICE_X0Y28" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/test_data_15  (
    .I(\blocspi_slave/test_data<15>/DXMUX_1836 ),
    .CE(VCC),
    .CLK(\blocspi_slave/test_data<15>/CLKINV_1829 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/test_data [15])
  );
  X_LUT4 #(
    .INIT ( 16'h0030 ),
    .LOC ( "SLICE_X4Y27" ))
  \blocspi_slave/Data_1_not00011  (
    .ADR0(VCC),
    .ADR1(\blocspi_slave/i [2]),
    .ADR2(\blocspi_slave/N3 ),
    .ADR3(\blocspi_slave/i [3]),
    .O(\blocspi_slave/Data_1_not0001 )
  );
  X_LUT4 #(
    .INIT ( 16'hA000 ),
    .LOC ( "SLICE_X4Y27" ))
  \blocspi_slave/Data_13_not00012  (
    .ADR0(\blocspi_slave/N3 ),
    .ADR1(VCC),
    .ADR2(\blocspi_slave/i [2]),
    .ADR3(\blocspi_slave/i [3]),
    .O(\blocspi_slave/Data_13_not0001 )
  );
  X_LUT4 #(
    .INIT ( 16'hFDEF ),
    .LOC ( "SLICE_X29Y47" ))
  \mux_sdhall_L/result_3_mux00011  (
    .ADR0(\traitement_spi/sigdir_L_1475 ),
    .ADR1(\mux_sdhall_L/N9 ),
    .ADR2(H3H2H1_L_2_IBUF_1476),
    .ADR3(H3H2H1_L_1_IBUF_1478),
    .O(\mux_sdhall_L/result_3_mux0001 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFBD ),
    .LOC ( "SLICE_X29Y47" ))
  \mux_sdhall_L/result_1_mux00011  (
    .ADR0(H3H2H1_L_0_IBUF_1474),
    .ADR1(\traitement_spi/sigdir_L_1475 ),
    .ADR2(H3H2H1_L_2_IBUF_1476),
    .ADR3(\mux_sdhall_L/N9 ),
    .O(\mux_sdhall_L/result_1_mux0001 )
  );
  X_LUT4 #(
    .INIT ( 16'h0400 ),
    .LOC ( "SLICE_X8Y25" ))
  \blocspi_slave/Data_2_not00011  (
    .ADR0(\blocspi_slave/i [3]),
    .ADR1(\blocspi_slave/i [1]),
    .ADR2(\blocspi_slave/i [2]),
    .ADR3(\blocspi_slave/N2 ),
    .O(\blocspi_slave/Data_2_not0001 )
  );
  X_LUT4 #(
    .INIT ( 16'h33CC ),
    .LOC ( "SLICE_X23Y27" ))
  \pwm_gene_L/Mcount_counter_xor<1>11  (
    .ADR0(VCC),
    .ADR1(\pwm_gene_L/counter [0]),
    .ADR2(VCC),
    .ADR3(\pwm_gene_L/counter [1]),
    .O(\pwm_gene_L/Result<1>1 )
  );
  X_SFF #(
    .LOC ( "SLICE_X23Y27" ),
    .INIT ( 1'b0 ))
  \pwm_gene_L/counter_1  (
    .I(\pwm_gene_L/counter<0>/DYMUX_1932 ),
    .CE(\pwm_gene_L/counter<0>/CEINV_1920 ),
    .CLK(\pwm_gene_L/counter<0>/CLKINV_1921 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\pwm_gene_L/counter<0>/SRINV_1922 ),
    .O(\pwm_gene_L/counter [1])
  );
  X_SFF #(
    .LOC ( "SLICE_X23Y27" ),
    .INIT ( 1'b0 ))
  \pwm_gene_L/counter_0  (
    .I(\pwm_gene_L/counter<0>/DXMUX_1939 ),
    .CE(\pwm_gene_L/counter<0>/CEINV_1920 ),
    .CLK(\pwm_gene_L/counter<0>/CLKINV_1921 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\pwm_gene_L/counter<0>/SRINV_1922 ),
    .O(\pwm_gene_L/counter [0])
  );
  X_LUT4 #(
    .INIT ( 16'h3C3C ),
    .LOC ( "SLICE_X27Y23" ))
  \pwm_gene_R/Mcount_clock_xor<1>11  (
    .ADR0(VCC),
    .ADR1(\pwm_gene_R/clock [0]),
    .ADR2(\pwm_gene_R/clock [1]),
    .ADR3(VCC),
    .O(\pwm_gene_R/Result [1])
  );
  X_SFF #(
    .LOC ( "SLICE_X27Y23" ),
    .INIT ( 1'b0 ))
  \pwm_gene_R/clock_1  (
    .I(\pwm_gene_R/clock<0>/DYMUX_1965 ),
    .CE(\pwm_gene_R/clock<0>/CEINVNOT ),
    .CLK(\pwm_gene_R/clock<0>/CLKINV_1954 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\pwm_gene_R/clock<0>/SRINV_1955 ),
    .O(\pwm_gene_R/clock [1])
  );
  X_LUT4 #(
    .INIT ( 16'h2000 ),
    .LOC ( "SLICE_X8Y24" ))
  \blocspi_slave/Data_12_not00011  (
    .ADR0(\blocspi_slave/i [3]),
    .ADR1(\blocspi_slave/i [1]),
    .ADR2(\blocspi_slave/i [2]),
    .ADR3(\blocspi_slave/N2 ),
    .O(\blocspi_slave/Data_12_not0001 )
  );
  X_LUT4 #(
    .INIT ( 16'h4400 ),
    .LOC ( "SLICE_X9Y24" ))
  \blocspi_slave/Data_3_not00011  (
    .ADR0(\blocspi_slave/i [3]),
    .ADR1(\blocspi_slave/i [2]),
    .ADR2(VCC),
    .ADR3(\blocspi_slave/N4 ),
    .O(\blocspi_slave/Data_3_not0001 )
  );
  X_LUT4 #(
    .INIT ( 16'h8800 ),
    .LOC ( "SLICE_X9Y24" ))
  \blocspi_slave/Data_11_not00012  (
    .ADR0(\blocspi_slave/i [3]),
    .ADR1(\blocspi_slave/i [2]),
    .ADR2(VCC),
    .ADR3(\blocspi_slave/N4 ),
    .O(\blocspi_slave/Data_11_not0001 )
  );
  X_LUT4 #(
    .INIT ( 16'h0800 ),
    .LOC ( "SLICE_X26Y26" ))
  \pwm_gene_L/counter_and000024  (
    .ADR0(\pwm_gene_L/counter [6]),
    .ADR1(\pwm_gene_L/out_pwm_cmp_ge0000 ),
    .ADR2(N8_0),
    .ADR3(\pwm_gene_L/counter [5]),
    .O(\pwm_gene_L/counter_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h4444 ),
    .LOC ( "SLICE_X26Y26" ))
  \pwm_gene_L/clock_and00001  (
    .ADR0(reset_IBUF1),
    .ADR1(\pwm_gene_L/out_pwm_cmp_ge0000 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\pwm_gene_L/clock_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h0280 ),
    .LOC ( "SLICE_X12Y47" ))
  \mux_sdhall_R/Switchs<0>1  (
    .ADR0(\mux_sdhall_R/N10 ),
    .ADR1(H3H2H1_R_0_IBUF_1497),
    .ADR2(\traitement_spi/sigdir_R_1495 ),
    .ADR3(H3H2H1_R_2_IBUF_1493),
    .O(\mux_sdhall_R/Switchs[0] )
  );
  X_LUT4 #(
    .INIT ( 16'h2008 ),
    .LOC ( "SLICE_X12Y47" ))
  \mux_sdhall_R/Switchs<2>1  (
    .ADR0(\mux_sdhall_R/N10 ),
    .ADR1(H3H2H1_R_1_IBUF_1494),
    .ADR2(\traitement_spi/sigdir_R_1495 ),
    .ADR3(H3H2H1_R_2_IBUF_1493),
    .O(\mux_sdhall_R/Switchs[2] )
  );
  X_LUT4 #(
    .INIT ( 16'h0040 ),
    .LOC ( "SLICE_X7Y30" ))
  \blocspi_slave/Data_4_not00011  (
    .ADR0(\blocspi_slave/i [3]),
    .ADR1(\blocspi_slave/i [2]),
    .ADR2(\blocspi_slave/N2 ),
    .ADR3(\blocspi_slave/i [1]),
    .O(\blocspi_slave/Data_4_not0001 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X7Y30" ))
  \blocspi_slave/Data_14_not00011  (
    .ADR0(\blocspi_slave/i [3]),
    .ADR1(\blocspi_slave/i [2]),
    .ADR2(\blocspi_slave/N2 ),
    .ADR3(\blocspi_slave/i [1]),
    .O(\blocspi_slave/Data_14_not0001 )
  );
  X_LUT4 #(
    .INIT ( 16'h3FFF ),
    .LOC ( "SLICE_X27Y24" ))
  \pwm_gene_L/Result<3>11  (
    .ADR0(VCC),
    .ADR1(\pwm_gene_L/clock [0]),
    .ADR2(\pwm_gene_L/clock [2]),
    .ADR3(\pwm_gene_L/clock [1]),
    .O(\pwm_gene_L/Result<3>_bdd0_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'h99AA ),
    .LOC ( "SLICE_X27Y24" ))
  \pwm_gene_L/Result<4>1  (
    .ADR0(\pwm_gene_L/clock [4]),
    .ADR1(\pwm_gene_L/Result<3>_bdd0 ),
    .ADR2(VCC),
    .ADR3(\pwm_gene_L/clock [3]),
    .O(\pwm_gene_L/Result [4])
  );
  X_SFF #(
    .LOC ( "SLICE_X27Y24" ),
    .INIT ( 1'b0 ))
  \pwm_gene_L/clock_4  (
    .I(\pwm_gene_L/clock<4>/DXMUX_2152 ),
    .CE(\pwm_gene_L/clock<4>/CEINVNOT ),
    .CLK(\pwm_gene_L/clock<4>/CLKINV_2134 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\pwm_gene_L/clock<4>/SRINV_2135 ),
    .O(\pwm_gene_L/clock [4])
  );
  X_LUT4 #(
    .INIT ( 16'h3000 ),
    .LOC ( "SLICE_X4Y25" ))
  \blocspi_slave/Data_5_not00011  (
    .ADR0(VCC),
    .ADR1(\blocspi_slave/i [3]),
    .ADR2(\blocspi_slave/i [2]),
    .ADR3(\blocspi_slave/N3 ),
    .O(\blocspi_slave/Data_5_not0001 )
  );
  X_LUT4 #(
    .INIT ( 16'h0080 ),
    .LOC ( "SLICE_X4Y25" ))
  \blocspi_slave/Data_6_not00011  (
    .ADR0(\blocspi_slave/i [2]),
    .ADR1(\blocspi_slave/i [1]),
    .ADR2(\blocspi_slave/N2 ),
    .ADR3(\blocspi_slave/i [3]),
    .O(\blocspi_slave/Data_6_not0001 )
  );
  X_LUT4 #(
    .INIT ( 16'h0800 ),
    .LOC ( "SLICE_X10Y39" ))
  \traitement_spi/sigpwm_dc_R_0_cmp_eq00001  (
    .ADR0(\blocspi_slave/test_data [10]),
    .ADR1(\blocspi_slave/test_data [9]),
    .ADR2(\blocspi_slave/test_data [11]),
    .ADR3(\blocspi_slave/test_data [8]),
    .O(\traitement_spi/sigpwm_dc_R_0_cmp_eq0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h0010 ),
    .LOC ( "SLICE_X10Y39" ))
  \traitement_spi/sigdir_R_cmp_eq00001  (
    .ADR0(\blocspi_slave/test_data [10]),
    .ADR1(\blocspi_slave/test_data [11]),
    .ADR2(\blocspi_slave/test_data [9]),
    .ADR3(\blocspi_slave/test_data [8]),
    .O(\traitement_spi/sigdir_R_cmp_eq0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y25" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/Data_0  (
    .I(\blocspi_slave/Data<0>/DYMUX_2237 ),
    .CE(\blocspi_slave/Data<0>/CEINV_2234 ),
    .CLK(\blocspi_slave/Data<0>/CLKINV_2235 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/Data [0])
  );
  X_FF #(
    .LOC ( "SLICE_X10Y26" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/Data_2  (
    .I(\blocspi_slave/Data<2>/DYMUX_2261 ),
    .CE(\blocspi_slave/Data<2>/CEINV_2258 ),
    .CLK(\blocspi_slave/Data<2>/CLKINV_2259 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/Data [2])
  );
  X_FF #(
    .LOC ( "SLICE_X11Y24" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/Data_3  (
    .I(\blocspi_slave/Data<3>/DYMUX_2273 ),
    .CE(\blocspi_slave/Data<3>/CEINV_2270 ),
    .CLK(\blocspi_slave/Data<3>/CLKINV_2271 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/Data [3])
  );
  X_FF #(
    .LOC ( "SLICE_X7Y31" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/Data_4  (
    .I(\blocspi_slave/Data<4>/DYMUX_2285 ),
    .CE(\blocspi_slave/Data<4>/CEINV_2282 ),
    .CLK(\blocspi_slave/Data<4>/CLKINV_2283 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/Data [4])
  );
  X_FF #(
    .LOC ( "SLICE_X5Y25" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/Data_5  (
    .I(\blocspi_slave/Data<5>/DYMUX_2297 ),
    .CE(\blocspi_slave/Data<5>/CEINV_2294 ),
    .CLK(\blocspi_slave/Data<5>/CLKINV_2295 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/Data [5])
  );
  X_FF #(
    .LOC ( "SLICE_X5Y26" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/Data_6  (
    .I(\blocspi_slave/Data<6>/DYMUX_2309 ),
    .CE(\blocspi_slave/Data<6>/CEINV_2306 ),
    .CLK(\blocspi_slave/Data<6>/CLKINV_2307 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/Data [6])
  );
  X_FF #(
    .LOC ( "SLICE_X9Y27" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/Data_7  (
    .I(\blocspi_slave/Data<7>/DYMUX_2321 ),
    .CE(\blocspi_slave/Data<7>/CEINV_2318 ),
    .CLK(\blocspi_slave/Data<7>/CLKINV_2319 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/Data [7])
  );
  X_FF #(
    .LOC ( "SLICE_X8Y27" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/Data_8  (
    .I(\blocspi_slave/Data<8>/DYMUX_2333 ),
    .CE(\blocspi_slave/Data<8>/CEINV_2330 ),
    .CLK(\blocspi_slave/Data<8>/CLKINV_2331 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/Data [8])
  );
  X_FF #(
    .LOC ( "SLICE_X8Y29" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/Data_9  (
    .I(\blocspi_slave/Data<9>/DYMUX_2345 ),
    .CE(\blocspi_slave/Data<9>/CEINV_2342 ),
    .CLK(\blocspi_slave/Data<9>/CLKINV_2343 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/Data [9])
  );
  X_LUT4 #(
    .INIT ( 16'h4000 ),
    .LOC ( "SLICE_X20Y26" ))
  \pwm_gene_R/counter_and000024  (
    .ADR0(N6_0),
    .ADR1(\pwm_gene_R/counter [5]),
    .ADR2(\pwm_gene_R/out_pwm_cmp_ge0000 ),
    .ADR3(\pwm_gene_R/counter [6]),
    .O(\pwm_gene_R/counter_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h3030 ),
    .LOC ( "SLICE_X20Y26" ))
  \pwm_gene_R/clock_and00001  (
    .ADR0(VCC),
    .ADR1(reset_IBUF1),
    .ADR2(\pwm_gene_R/out_pwm_cmp_ge0000 ),
    .ADR3(VCC),
    .O(\pwm_gene_R/clock_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X22Y27" ))
  \pwm_gene_L/Mcount_counter_xor<6>1_SW0  (
    .ADR0(\pwm_gene_L/counter [0]),
    .ADR1(\pwm_gene_L/counter [1]),
    .ADR2(\pwm_gene_L/counter [2]),
    .ADR3(\pwm_gene_L/counter [5]),
    .O(N2_pack_2)
  );
  X_LUT4 #(
    .INIT ( 16'h7F80 ),
    .LOC ( "SLICE_X22Y27" ))
  \pwm_gene_L/Mcount_counter_xor<6>1  (
    .ADR0(\pwm_gene_L/counter [4]),
    .ADR1(\pwm_gene_L/counter [3]),
    .ADR2(N2),
    .ADR3(\pwm_gene_L/counter [6]),
    .O(\pwm_gene_L/Result [6])
  );
  X_SFF #(
    .LOC ( "SLICE_X22Y27" ),
    .INIT ( 1'b0 ))
  \pwm_gene_L/counter_6  (
    .I(\pwm_gene_L/counter<6>/DXMUX_2404 ),
    .CE(\pwm_gene_L/counter<6>/CEINV_2387 ),
    .CLK(\pwm_gene_L/counter<6>/CLKINV_2388 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\pwm_gene_L/counter<6>/SRINV_2389 ),
    .O(\pwm_gene_L/counter [6])
  );
  X_LUT4 #(
    .INIT ( 16'h0A0A ),
    .LOC ( "SLICE_X13Y47" ))
  \mux_sdhall_R/Switchs<0>21  (
    .ADR0(\traitement_spi/sigstart_R_1443 ),
    .ADR1(VCC),
    .ADR2(reset_IBUF1),
    .ADR3(VCC),
    .O(\mux_sdhall_R/N10_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h4200 ),
    .LOC ( "SLICE_X13Y47" ))
  \mux_sdhall_R/Switchs<4>1  (
    .ADR0(H3H2H1_R_0_IBUF_1497),
    .ADR1(\traitement_spi/sigdir_R_1495 ),
    .ADR2(H3H2H1_R_1_IBUF_1494),
    .ADR3(\mux_sdhall_R/N10 ),
    .O(\mux_sdhall_R/Switchs[4] )
  );
  X_SFF #(
    .LOC ( "SLICE_X8Y39" ),
    .INIT ( 1'b0 ))
  \rising_edg2/flipflop_ris/output  (
    .I(\rising_edg2/flipflop_ris/output/DYMUX_2441 ),
    .CE(VCC),
    .CLK(\rising_edg2/flipflop_ris/output/CLKINV_2438 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\rising_edg2/flipflop_ris/output/SRINV_2439 ),
    .O(\rising_edg2/flipflop_ris/output_1552 )
  );
  X_SFF #(
    .LOC ( "SLICE_X24Y29" ),
    .INIT ( 1'b0 ))
  \mux_freq_0/end_freq_1  (
    .I(\mux_freq_0/end_freq<1>/DXMUX_2456 ),
    .CE(VCC),
    .CLK(\mux_freq_0/end_freq<1>/CLKINV_2451 ),
    .SET(GND),
    .RST(GND),
    .SSET(\mux_freq_0/end_freq<1>/REVUSED_2454 ),
    .SRST(\mux_freq_0/end_freq<1>/SRINV_2452 ),
    .O(\mux_freq_0/end_freq[1] )
  );
  X_LUT4 #(
    .INIT ( 16'h0033 ),
    .LOC ( "SLICE_X23Y28" ))
  \mux_freq_0/Mrom_end_freq_mux000231  (
    .ADR0(VCC),
    .ADR1(\traitement_spi/sigfreq_recue [1]),
    .ADR2(VCC),
    .ADR3(\traitement_spi/sigfreq_recue [0]),
    .O(\mux_freq_0/Mrom_end_freq_mux00023 )
  );
  X_SFF #(
    .LOC ( "SLICE_X23Y28" ),
    .INIT ( 1'b0 ))
  \mux_freq_0/end_freq_4  (
    .I(\mux_freq_0/end_freq<2>/DYMUX_2480 ),
    .CE(VCC),
    .CLK(\mux_freq_0/end_freq<2>/CLKINV_2469 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\mux_freq_0/end_freq<2>/SRINV_2470 ),
    .O(\mux_freq_0/end_freq[4] )
  );
  X_SFF #(
    .LOC ( "SLICE_X23Y28" ),
    .INIT ( 1'b0 ))
  \mux_freq_0/end_freq_2  (
    .I(\mux_freq_0/end_freq<2>/DXMUX_2486 ),
    .CE(VCC),
    .CLK(\mux_freq_0/end_freq<2>/CLKINV_2469 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\mux_freq_0/end_freq<2>/SRINV_2470 ),
    .O(\mux_freq_0/end_freq[2] )
  );
  X_LUT4 #(
    .INIT ( 16'h00AA ),
    .LOC ( "SLICE_X29Y46" ))
  \mux_sdhall_L/Switchs<0>21  (
    .ADR0(\traitement_spi/sigstart_L_1441 ),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(reset_IBUF1),
    .O(\mux_sdhall_L/N10_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h0820 ),
    .LOC ( "SLICE_X29Y46" ))
  \mux_sdhall_L/Switchs<4>1  (
    .ADR0(\mux_sdhall_L/N10 ),
    .ADR1(\traitement_spi/sigdir_L_1475 ),
    .ADR2(H3H2H1_L_0_IBUF_1474),
    .ADR3(H3H2H1_L_1_IBUF_1478),
    .O(\mux_sdhall_L/Switchs[4] )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X12Y38" ))
  \traitement_spi/sigpwm_dc_L_0_cmp_eq00001  (
    .ADR0(\blocspi_slave/test_data [10]),
    .ADR1(\blocspi_slave/test_data [9]),
    .ADR2(\blocspi_slave/test_data [11]),
    .ADR3(\blocspi_slave/test_data [8]),
    .O(\traitement_spi/sigpwm_dc_L_0_cmp_eq0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h0100 ),
    .LOC ( "SLICE_X12Y38" ))
  \traitement_spi/sigstart_R_cmp_eq00001  (
    .ADR0(\blocspi_slave/test_data [10]),
    .ADR1(\blocspi_slave/test_data [11]),
    .ADR2(\blocspi_slave/test_data [9]),
    .ADR3(\blocspi_slave/test_data [8]),
    .O(\traitement_spi/sigstart_R_cmp_eq0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X24Y41" ),
    .INIT ( 1'b0 ))
  \traitement_spi/sigdir_L  (
    .I(\traitement_spi/sigdir_L/DYMUX_2546 ),
    .CE(\traitement_spi/sigdir_L/CEINV_2543 ),
    .CLK(\traitement_spi/sigdir_L/CLKINV_2544 ),
    .SET(GND),
    .RST(GND),
    .O(\traitement_spi/sigdir_L_1475 )
  );
  X_FF #(
    .LOC ( "SLICE_X11Y43" ),
    .INIT ( 1'b0 ))
  \traitement_spi/sigdir_R  (
    .I(\traitement_spi/sigdir_R/DYMUX_2558 ),
    .CE(\traitement_spi/sigdir_R/CEINV_2555 ),
    .CLK(\traitement_spi/sigdir_R/CLKINV_2556 ),
    .SET(GND),
    .RST(GND),
    .O(\traitement_spi/sigdir_R_1495 )
  );
  X_LUT4 #(
    .INIT ( 16'h0101 ),
    .LOC ( "SLICE_X25Y27" ))
  \pwm_gene_R/clock_sub0000<3>11  (
    .ADR0(\mux_freq_0/end_freq[0] ),
    .ADR1(\mux_freq_0/end_freq[2] ),
    .ADR2(\mux_freq_0/end_freq[1] ),
    .ADR3(VCC),
    .O(\pwm_gene_L/clock_sub0000<3>_bdd0 )
  );
  X_LUT4 #(
    .INIT ( 16'h3FFF ),
    .LOC ( "SLICE_X21Y27" ))
  \pwm_gene_R/Mcount_counter_xor<3>111  (
    .ADR0(VCC),
    .ADR1(\pwm_gene_R/counter [1]),
    .ADR2(\pwm_gene_R/counter [2]),
    .ADR3(\pwm_gene_R/counter [0]),
    .O(\pwm_gene_R/N4_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hAA5A ),
    .LOC ( "SLICE_X21Y27" ))
  \pwm_gene_R/Mcount_counter_xor<4>11  (
    .ADR0(\pwm_gene_R/counter [4]),
    .ADR1(VCC),
    .ADR2(\pwm_gene_R/counter [3]),
    .ADR3(\pwm_gene_R/N4 ),
    .O(\pwm_gene_R/Result<4>1_2602 )
  );
  X_SFF #(
    .LOC ( "SLICE_X21Y27" ),
    .INIT ( 1'b0 ))
  \pwm_gene_R/counter_4  (
    .I(\pwm_gene_R/counter<4>/DXMUX_2605 ),
    .CE(\pwm_gene_R/counter<4>/CEINV_2586 ),
    .CLK(\pwm_gene_R/counter<4>/CLKINV_2587 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\pwm_gene_R/counter<4>/SRINV_2588 ),
    .O(\pwm_gene_R/counter [4])
  );
  X_LUT4 #(
    .INIT ( 16'hFF0F ),
    .LOC ( "SLICE_X8Y38" ))
  \rising_edg2/flipflop_ris/output_and0000_inv1  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\stab/sclk2_1568 ),
    .ADR3(\rising_edg2/flipflop_sys/Q_1569 ),
    .O(\rising_edg2/flipflop_ris/output_and0000_inv )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y25" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/Data_10  (
    .I(\blocspi_slave/Data<10>/DYMUX_2630 ),
    .CE(\blocspi_slave/Data<10>/CEINV_2627 ),
    .CLK(\blocspi_slave/Data<10>/CLKINV_2628 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/Data [10])
  );
  X_FF #(
    .LOC ( "SLICE_X8Y26" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/Data_11  (
    .I(\blocspi_slave/Data<11>/DYMUX_2642 ),
    .CE(\blocspi_slave/Data<11>/CEINV_2639 ),
    .CLK(\blocspi_slave/Data<11>/CLKINV_2640 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/Data [11])
  );
  X_FF #(
    .LOC ( "SLICE_X2Y25" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/Data_12  (
    .I(\blocspi_slave/Data<12>/DYMUX_2654 ),
    .CE(\blocspi_slave/Data<12>/CEINV_2651 ),
    .CLK(\blocspi_slave/Data<12>/CLKINV_2652 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/Data [12])
  );
  X_FF #(
    .LOC ( "SLICE_X4Y26" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/Data_13  (
    .I(\blocspi_slave/Data<13>/DYMUX_2666 ),
    .CE(\blocspi_slave/Data<13>/CEINV_2663 ),
    .CLK(\blocspi_slave/Data<13>/CLKINV_2664 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/Data [13])
  );
  X_FF #(
    .LOC ( "SLICE_X4Y30" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/Data_14  (
    .I(\blocspi_slave/Data<14>/DYMUX_2678 ),
    .CE(\blocspi_slave/Data<14>/CEINV_2675 ),
    .CLK(\blocspi_slave/Data<14>/CLKINV_2676 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/Data [14])
  );
  X_FF #(
    .LOC ( "SLICE_X2Y28" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/Data_15  (
    .I(\blocspi_slave/Data<15>/DYMUX_2690 ),
    .CE(\blocspi_slave/Data<15>/CEINV_2687 ),
    .CLK(\blocspi_slave/Data<15>/CLKINV_2688 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/Data [15])
  );
  X_LUT4 #(
    .INIT ( 16'hAAFF ),
    .LOC ( "SLICE_X28Y47" ))
  \mux_sdhall_L/result_1_mux000131  (
    .ADR0(\pwm_gene_L/out_pwm_1577 ),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\traitement_spi/sigstart_L_1441 ),
    .O(\mux_sdhall_L/N9_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFBD ),
    .LOC ( "SLICE_X28Y47" ))
  \mux_sdhall_L/result_5_mux00011  (
    .ADR0(H3H2H1_L_1_IBUF_1478),
    .ADR1(H3H2H1_L_0_IBUF_1474),
    .ADR2(\traitement_spi/sigdir_L_1475 ),
    .ADR3(\mux_sdhall_L/N9 ),
    .O(\mux_sdhall_L/result_5_mux0001 )
  );
  X_FF #(
    .LOC ( "SLICE_X8Y32" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/test_data_0  (
    .I(\blocspi_slave/test_data<1>/DYMUX_2726 ),
    .CE(VCC),
    .CLK(\blocspi_slave/test_data<1>/CLKINV_2724 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/test_data [0])
  );
  X_FF #(
    .LOC ( "SLICE_X8Y32" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/test_data_1  (
    .I(\blocspi_slave/test_data<1>/DXMUX_2731 ),
    .CE(VCC),
    .CLK(\blocspi_slave/test_data<1>/CLKINV_2724 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/test_data [1])
  );
  X_FF #(
    .LOC ( "SLICE_X11Y32" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/test_data_2  (
    .I(\blocspi_slave/test_data<3>/DYMUX_2742 ),
    .CE(VCC),
    .CLK(\blocspi_slave/test_data<3>/CLKINV_2740 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/test_data [2])
  );
  X_FF #(
    .LOC ( "SLICE_X11Y32" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/test_data_3  (
    .I(\blocspi_slave/test_data<3>/DXMUX_2747 ),
    .CE(VCC),
    .CLK(\blocspi_slave/test_data<3>/CLKINV_2740 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/test_data [3])
  );
  X_FF #(
    .LOC ( "SLICE_X10Y33" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/test_data_4  (
    .I(\blocspi_slave/test_data<5>/DYMUX_2758 ),
    .CE(VCC),
    .CLK(\blocspi_slave/test_data<5>/CLKINV_2756 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/test_data [4])
  );
  X_FF #(
    .LOC ( "SLICE_X10Y33" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/test_data_5  (
    .I(\blocspi_slave/test_data<5>/DXMUX_2763 ),
    .CE(VCC),
    .CLK(\blocspi_slave/test_data<5>/CLKINV_2756 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/test_data [5])
  );
  X_FF #(
    .LOC ( "SLICE_X8Y34" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/test_data_6  (
    .I(\blocspi_slave/test_data<7>/DYMUX_2774 ),
    .CE(VCC),
    .CLK(\blocspi_slave/test_data<7>/CLKINV_2772 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/test_data [6])
  );
  X_FF #(
    .LOC ( "SLICE_X8Y34" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/test_data_7  (
    .I(\blocspi_slave/test_data<7>/DXMUX_2779 ),
    .CE(VCC),
    .CLK(\blocspi_slave/test_data<7>/CLKINV_2772 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/test_data [7])
  );
  X_FF #(
    .LOC ( "SLICE_X11Y31" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/test_data_8  (
    .I(\blocspi_slave/test_data<9>/DYMUX_2790 ),
    .CE(VCC),
    .CLK(\blocspi_slave/test_data<9>/CLKINV_2788 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/test_data [8])
  );
  X_FF #(
    .LOC ( "SLICE_X11Y31" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/test_data_9  (
    .I(\blocspi_slave/test_data<9>/DXMUX_2795 ),
    .CE(VCC),
    .CLK(\blocspi_slave/test_data<9>/CLKINV_2788 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/test_data [9])
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X18Y27" ))
  \pwm_gene_R/Mcount_counter_xor<6>1_SW0  (
    .ADR0(\pwm_gene_R/counter [0]),
    .ADR1(\pwm_gene_R/counter [5]),
    .ADR2(\pwm_gene_R/counter [2]),
    .ADR3(\pwm_gene_R/counter [1]),
    .O(N01_pack_2)
  );
  X_LUT4 #(
    .INIT ( 16'h6CCC ),
    .LOC ( "SLICE_X18Y27" ))
  \pwm_gene_R/Mcount_counter_xor<6>1  (
    .ADR0(\pwm_gene_R/counter [4]),
    .ADR1(\pwm_gene_R/counter [6]),
    .ADR2(N01),
    .ADR3(\pwm_gene_R/counter [3]),
    .O(\pwm_gene_R/Result [6])
  );
  X_SFF #(
    .LOC ( "SLICE_X18Y27" ),
    .INIT ( 1'b0 ))
  \pwm_gene_R/counter_6  (
    .I(\pwm_gene_R/counter<6>/DXMUX_2829 ),
    .CE(\pwm_gene_R/counter<6>/CEINV_2812 ),
    .CLK(\pwm_gene_R/counter<6>/CLKINV_2813 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\pwm_gene_R/counter<6>/SRINV_2814 ),
    .O(\pwm_gene_R/counter [6])
  );
  X_LUT4 #(
    .INIT ( 16'hECEC ),
    .LOC ( "SLICE_X6Y36" ))
  \blocspi_slave/data_inter_not00011  (
    .ADR0(\rising_edg2/flipflop_ris/output_1552 ),
    .ADR1(\stab/ssel2_1592 ),
    .ADR2(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .ADR3(VCC),
    .O(\blocspi_slave/data_inter_not0001 )
  );
  X_LUT4 #(
    .INIT ( 16'hF3F3 ),
    .LOC ( "SLICE_X6Y36" ))
  \blocspi_slave/Mcount_i_lut<31>  (
    .ADR0(VCC),
    .ADR1(\blocspi_slave/i [31]),
    .ADR2(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .ADR3(VCC),
    .O(\blocspi_slave/Mcount_i_lut [31])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y36" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/i_31  (
    .I(\blocspi_slave/i<31>/DXMUX_2868 ),
    .CE(\blocspi_slave/i<31>/CEINV_2846 ),
    .CLK(\blocspi_slave/i<31>/CLKINV_2847 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\blocspi_slave/i<31>/SRINV_2848 ),
    .O(\blocspi_slave/i [31])
  );
  X_LUT4 #(
    .INIT ( 16'h7F7F ),
    .LOC ( "SLICE_X24Y23" ))
  \pwm_gene_R/Result<3>11  (
    .ADR0(\pwm_gene_R/clock [1]),
    .ADR1(\pwm_gene_R/clock [2]),
    .ADR2(\pwm_gene_R/clock [0]),
    .ADR3(VCC),
    .O(\pwm_gene_R/Result<3>_bdd0_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hC3CC ),
    .LOC ( "SLICE_X24Y23" ))
  \pwm_gene_R/Result<4>1  (
    .ADR0(VCC),
    .ADR1(\pwm_gene_R/clock [4]),
    .ADR2(\pwm_gene_R/Result<3>_bdd0 ),
    .ADR3(\pwm_gene_R/clock [3]),
    .O(\pwm_gene_R/Result [4])
  );
  X_SFF #(
    .LOC ( "SLICE_X24Y23" ),
    .INIT ( 1'b0 ))
  \pwm_gene_R/clock_4  (
    .I(\pwm_gene_R/clock<4>/DXMUX_2904 ),
    .CE(\pwm_gene_R/clock<4>/CEINVNOT ),
    .CLK(\pwm_gene_R/clock<4>/CLKINV_2886 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\pwm_gene_R/clock<4>/SRINV_2887 ),
    .O(\pwm_gene_R/clock [4])
  );
  X_LUT4 #(
    .INIT ( 16'hFDFD ),
    .LOC ( "SLICE_X18Y28" ))
  \traitement_spi/Mmux_sigfreq_recue_0_mux0000311  (
    .ADR0(\blocspi_slave/test_data [10]),
    .ADR1(\blocspi_slave/test_data [9]),
    .ADR2(\blocspi_slave/test_data [8]),
    .ADR3(VCC),
    .O(\traitement_spi/N01_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hCCF0 ),
    .LOC ( "SLICE_X18Y28" ))
  \traitement_spi/Mmux_sigfreq_recue_1_mux000031  (
    .ADR0(VCC),
    .ADR1(\traitement_spi/sigfreq_recue [1]),
    .ADR2(\blocspi_slave/test_data [2]),
    .ADR3(\traitement_spi/N01 ),
    .O(\traitement_spi/sigfreq_recue_1_mux0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y28" ),
    .INIT ( 1'b0 ))
  \traitement_spi/sigfreq_recue_1  (
    .I(\traitement_spi/sigfreq_recue<1>/DXMUX_2936 ),
    .CE(VCC),
    .CLK(\traitement_spi/sigfreq_recue<1>/CLKINV_2919 ),
    .SET(GND),
    .RST(GND),
    .O(\traitement_spi/sigfreq_recue [1])
  );
  X_FF #(
    .LOC ( "SLICE_X11Y29" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/data_inter_10  (
    .I(\blocspi_slave/data_inter<11>/DYMUX_2949 ),
    .CE(\blocspi_slave/data_inter<11>/CEINV_2946 ),
    .CLK(\blocspi_slave/data_inter<11>/CLKINV_2947 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/data_inter [10])
  );
  X_FF #(
    .LOC ( "SLICE_X11Y29" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/data_inter_11  (
    .I(\blocspi_slave/data_inter<11>/DXMUX_2955 ),
    .CE(\blocspi_slave/data_inter<11>/CEINV_2946 ),
    .CLK(\blocspi_slave/data_inter<11>/CLKINV_2947 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/data_inter [11])
  );
  X_FF #(
    .LOC ( "SLICE_X3Y26" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/data_inter_12  (
    .I(\blocspi_slave/data_inter<13>/DYMUX_2969 ),
    .CE(\blocspi_slave/data_inter<13>/CEINV_2966 ),
    .CLK(\blocspi_slave/data_inter<13>/CLKINV_2967 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/data_inter [12])
  );
  X_FF #(
    .LOC ( "SLICE_X3Y26" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/data_inter_13  (
    .I(\blocspi_slave/data_inter<13>/DXMUX_2975 ),
    .CE(\blocspi_slave/data_inter<13>/CEINV_2966 ),
    .CLK(\blocspi_slave/data_inter<13>/CLKINV_2967 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/data_inter [13])
  );
  X_FF #(
    .LOC ( "SLICE_X3Y29" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/data_inter_14  (
    .I(\blocspi_slave/data_inter<15>/DYMUX_2989 ),
    .CE(\blocspi_slave/data_inter<15>/CEINV_2986 ),
    .CLK(\blocspi_slave/data_inter<15>/CLKINV_2987 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/data_inter [14])
  );
  X_FF #(
    .LOC ( "SLICE_X3Y29" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/data_inter_15  (
    .I(\blocspi_slave/data_inter<15>/DXMUX_2995 ),
    .CE(\blocspi_slave/data_inter<15>/CEINV_2986 ),
    .CLK(\blocspi_slave/data_inter<15>/CLKINV_2987 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/data_inter [15])
  );
  X_LUT4 #(
    .INIT ( 16'h4200 ),
    .LOC ( "SLICE_X28Y46" ))
  \mux_sdhall_L/Switchs<0>1  (
    .ADR0(H3H2H1_L_2_IBUF_1476),
    .ADR1(H3H2H1_L_0_IBUF_1474),
    .ADR2(\traitement_spi/sigdir_L_1475 ),
    .ADR3(\mux_sdhall_L/N10 ),
    .O(\mux_sdhall_L/Switchs[0] )
  );
  X_LUT4 #(
    .INIT ( 16'h4200 ),
    .LOC ( "SLICE_X28Y46" ))
  \mux_sdhall_L/Switchs<2>1  (
    .ADR0(H3H2H1_L_1_IBUF_1478),
    .ADR1(H3H2H1_L_2_IBUF_1476),
    .ADR2(\traitement_spi/sigdir_L_1475 ),
    .ADR3(\mux_sdhall_L/N10 ),
    .O(\mux_sdhall_L/Switchs[2] )
  );
  X_LUT4 #(
    .INIT ( 16'h55AA ),
    .LOC ( "SLICE_X18Y26" ))
  \pwm_gene_R/Mcount_counter_xor<1>11  (
    .ADR0(\pwm_gene_R/counter [0]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\pwm_gene_R/counter [1]),
    .O(\pwm_gene_R/Result<1>1 )
  );
  X_SFF #(
    .LOC ( "SLICE_X18Y26" ),
    .INIT ( 1'b0 ))
  \pwm_gene_R/counter_1  (
    .I(\pwm_gene_R/counter<0>/DYMUX_3044 ),
    .CE(\pwm_gene_R/counter<0>/CEINV_3032 ),
    .CLK(\pwm_gene_R/counter<0>/CLKINV_3033 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\pwm_gene_R/counter<0>/SRINV_3034 ),
    .O(\pwm_gene_R/counter [1])
  );
  X_SFF #(
    .LOC ( "SLICE_X18Y26" ),
    .INIT ( 1'b0 ))
  \pwm_gene_R/counter_0  (
    .I(\pwm_gene_R/counter<0>/DXMUX_3051 ),
    .CE(\pwm_gene_R/counter<0>/CEINV_3032 ),
    .CLK(\pwm_gene_R/counter<0>/CLKINV_3033 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\pwm_gene_R/counter<0>/SRINV_3034 ),
    .O(\pwm_gene_R/counter [0])
  );
  X_LUT4 #(
    .INIT ( 16'hFEFE ),
    .LOC ( "SLICE_X7Y27" ))
  \blocspi_slave/Data_15_not0001_SW0  (
    .ADR0(\blocspi_slave/i [1]),
    .ADR1(\blocspi_slave/i [2]),
    .ADR2(\blocspi_slave/i [3]),
    .ADR3(VCC),
    .O(N4_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h0400 ),
    .LOC ( "SLICE_X7Y27" ))
  \blocspi_slave/Data_15_not0001  (
    .ADR0(N4),
    .ADR1(\blocspi_slave/Data_0_not00011_wg_cy[7] ),
    .ADR2(\blocspi_slave/i [0]),
    .ADR3(\blocspi_slave/i [4]),
    .O(\blocspi_slave/Data_15_not0001_3078 )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y38" ),
    .INIT ( 1'b0 ))
  \rising_edg2/flipflop_sys/Q  (
    .I(\rising_edg2/flipflop_sys/Q/DYMUX_3086 ),
    .CE(VCC),
    .CLK(\rising_edg2/flipflop_sys/Q/CLKINV_3084 ),
    .SET(GND),
    .RST(GND),
    .O(\rising_edg2/flipflop_sys/Q_1569 )
  );
  X_LUT4 #(
    .INIT ( 16'h5FFF ),
    .LOC ( "SLICE_X23Y25" ))
  \pwm_gene_L/Mcount_counter_xor<3>111  (
    .ADR0(\pwm_gene_L/counter [1]),
    .ADR1(VCC),
    .ADR2(\pwm_gene_L/counter [0]),
    .ADR3(\pwm_gene_L/counter [2]),
    .O(\pwm_gene_L/N4_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hCC3C ),
    .LOC ( "SLICE_X23Y25" ))
  \pwm_gene_L/Mcount_counter_xor<4>11  (
    .ADR0(VCC),
    .ADR1(\pwm_gene_L/counter [4]),
    .ADR2(\pwm_gene_L/counter [3]),
    .ADR3(\pwm_gene_L/N4 ),
    .O(\pwm_gene_L/Result<4>1_3117 )
  );
  X_SFF #(
    .LOC ( "SLICE_X23Y25" ),
    .INIT ( 1'b0 ))
  \pwm_gene_L/counter_4  (
    .I(\pwm_gene_L/counter<4>/DXMUX_3120 ),
    .CE(\pwm_gene_L/counter<4>/CEINV_3101 ),
    .CLK(\pwm_gene_L/counter<4>/CLKINV_3102 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\pwm_gene_L/counter<4>/SRINV_3103 ),
    .O(\pwm_gene_L/counter [4])
  );
  X_LUT4 #(
    .INIT ( 16'h5A5A ),
    .LOC ( "SLICE_X26Y25" ))
  \pwm_gene_L/Mcount_clock_xor<1>11  (
    .ADR0(\pwm_gene_L/clock [1]),
    .ADR1(VCC),
    .ADR2(\pwm_gene_L/clock [0]),
    .ADR3(VCC),
    .O(\pwm_gene_L/Result [1])
  );
  X_SFF #(
    .LOC ( "SLICE_X26Y25" ),
    .INIT ( 1'b0 ))
  \pwm_gene_L/clock_1  (
    .I(\pwm_gene_L/clock<0>/DYMUX_3146 ),
    .CE(\pwm_gene_L/clock<0>/CEINVNOT ),
    .CLK(\pwm_gene_L/clock<0>/CLKINV_3135 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\pwm_gene_L/clock<0>/SRINV_3136 ),
    .O(\pwm_gene_L/clock [1])
  );
  X_SFF #(
    .LOC ( "SLICE_X26Y25" ),
    .INIT ( 1'b0 ))
  \pwm_gene_L/clock_0  (
    .I(\pwm_gene_L/clock<0>/DXMUX_3153 ),
    .CE(\pwm_gene_L/clock<0>/CEINVNOT ),
    .CLK(\pwm_gene_L/clock<0>/CLKINV_3135 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\pwm_gene_L/clock<0>/SRINV_3136 ),
    .O(\pwm_gene_L/clock [0])
  );
  X_FF #(
    .LOC ( "SLICE_X8Y33" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/data_inter_0  (
    .I(\blocspi_slave/data_inter<1>/DYMUX_3168 ),
    .CE(\blocspi_slave/data_inter<1>/CEINV_3165 ),
    .CLK(\blocspi_slave/data_inter<1>/CLKINV_3166 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/data_inter [0])
  );
  X_FF #(
    .LOC ( "SLICE_X8Y33" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/data_inter_1  (
    .I(\blocspi_slave/data_inter<1>/DXMUX_3174 ),
    .CE(\blocspi_slave/data_inter<1>/CEINV_3165 ),
    .CLK(\blocspi_slave/data_inter<1>/CLKINV_3166 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/data_inter [1])
  );
  X_FF #(
    .LOC ( "SLICE_X10Y28" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/data_inter_2  (
    .I(\blocspi_slave/data_inter<3>/DYMUX_3188 ),
    .CE(\blocspi_slave/data_inter<3>/CEINV_3185 ),
    .CLK(\blocspi_slave/data_inter<3>/CLKINV_3186 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/data_inter [2])
  );
  X_FF #(
    .LOC ( "SLICE_X10Y28" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/data_inter_3  (
    .I(\blocspi_slave/data_inter<3>/DXMUX_3194 ),
    .CE(\blocspi_slave/data_inter<3>/CEINV_3185 ),
    .CLK(\blocspi_slave/data_inter<3>/CLKINV_3186 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/data_inter [3])
  );
  X_FF #(
    .LOC ( "SLICE_X10Y30" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/data_inter_4  (
    .I(\blocspi_slave/data_inter<5>/DYMUX_3208 ),
    .CE(\blocspi_slave/data_inter<5>/CEINV_3205 ),
    .CLK(\blocspi_slave/data_inter<5>/CLKINV_3206 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/data_inter [4])
  );
  X_FF #(
    .LOC ( "SLICE_X10Y30" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/data_inter_5  (
    .I(\blocspi_slave/data_inter<5>/DXMUX_3214 ),
    .CE(\blocspi_slave/data_inter<5>/CEINV_3205 ),
    .CLK(\blocspi_slave/data_inter<5>/CLKINV_3206 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/data_inter [5])
  );
  X_FF #(
    .LOC ( "SLICE_X8Y31" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/data_inter_6  (
    .I(\blocspi_slave/data_inter<7>/DYMUX_3228 ),
    .CE(\blocspi_slave/data_inter<7>/CEINV_3225 ),
    .CLK(\blocspi_slave/data_inter<7>/CLKINV_3226 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/data_inter [6])
  );
  X_FF #(
    .LOC ( "SLICE_X8Y31" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/data_inter_7  (
    .I(\blocspi_slave/data_inter<7>/DXMUX_3234 ),
    .CE(\blocspi_slave/data_inter<7>/CEINV_3225 ),
    .CLK(\blocspi_slave/data_inter<7>/CLKINV_3226 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/data_inter [7])
  );
  X_FF #(
    .LOC ( "SLICE_X10Y31" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/data_inter_8  (
    .I(\blocspi_slave/data_inter<9>/DYMUX_3248 ),
    .CE(\blocspi_slave/data_inter<9>/CEINV_3245 ),
    .CLK(\blocspi_slave/data_inter<9>/CLKINV_3246 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/data_inter [8])
  );
  X_FF #(
    .LOC ( "SLICE_X10Y31" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/data_inter_9  (
    .I(\blocspi_slave/data_inter<9>/DXMUX_3254 ),
    .CE(\blocspi_slave/data_inter<9>/CEINV_3245 ),
    .CLK(\blocspi_slave/data_inter<9>/CLKINV_3246 ),
    .SET(GND),
    .RST(GND),
    .O(\blocspi_slave/data_inter [9])
  );
  X_LUT4 #(
    .INIT ( 16'hF0FF ),
    .LOC ( "SLICE_X13Y46" ))
  \mux_sdhall_R/result_1_mux000131  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\pwm_gene_R/out_pwm_1608 ),
    .ADR3(\traitement_spi/sigstart_R_1443 ),
    .O(\mux_sdhall_R/N9_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFBEF ),
    .LOC ( "SLICE_X13Y46" ))
  \mux_sdhall_R/result_5_mux00011  (
    .ADR0(\mux_sdhall_R/N9 ),
    .ADR1(\traitement_spi/sigdir_R_1495 ),
    .ADR2(H3H2H1_R_1_IBUF_1494),
    .ADR3(H3H2H1_R_0_IBUF_1497),
    .O(\mux_sdhall_R/result_5_mux0001 )
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y21" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/i_2  (
    .I(\blocspi_slave/i<1>/DYMUX_3483 ),
    .CE(\blocspi_slave/i<1>/CEINV_3461 ),
    .CLK(\blocspi_slave/i<1>/CLKINV_3462 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\blocspi_slave/i<1>/SRINV_3463 ),
    .O(\blocspi_slave/i [2])
  );
  X_LUT4 #(
    .INIT ( 16'hF3F3 ),
    .LOC ( "SLICE_X6Y21" ))
  \blocspi_slave/Mcount_i_lut<1>  (
    .ADR0(VCC),
    .ADR1(\blocspi_slave/i [1]),
    .ADR2(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .ADR3(VCC),
    .O(\blocspi_slave/Mcount_i_lut [1])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y21" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/i_1  (
    .I(\blocspi_slave/i<1>/DXMUX_3500 ),
    .CE(\blocspi_slave/i<1>/CEINV_3461 ),
    .CLK(\blocspi_slave/i<1>/CLKINV_3462 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\blocspi_slave/i<1>/SRINV_3463 ),
    .O(\blocspi_slave/i [1])
  );
  X_LUT4 #(
    .INIT ( 16'h0055 ),
    .LOC ( "SLICE_X6Y22" ))
  \blocspi_slave/Mcount_i_lut<4>  (
    .ADR0(\blocspi_slave/i [4]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .O(\blocspi_slave/Mcount_i_lut [4])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y22" ),
    .INIT ( 1'b1 ))
  \blocspi_slave/i_4  (
    .I(\blocspi_slave/i<3>/DYMUX_3539 ),
    .CE(\blocspi_slave/i<3>/CEINV_3517 ),
    .CLK(\blocspi_slave/i<3>/CLKINV_3518 ),
    .SET(GND),
    .RST(GND),
    .SSET(\blocspi_slave/i<3>/SRINV_3519 ),
    .SRST(GND),
    .O(\blocspi_slave/i [4])
  );
  X_LUT4 #(
    .INIT ( 16'hFF33 ),
    .LOC ( "SLICE_X6Y22" ))
  \blocspi_slave/Mcount_i_lut<3>  (
    .ADR0(VCC),
    .ADR1(\blocspi_slave/i [3]),
    .ADR2(VCC),
    .ADR3(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .O(\blocspi_slave/Mcount_i_lut [3])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y22" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/i_3  (
    .I(\blocspi_slave/i<3>/DXMUX_3556 ),
    .CE(\blocspi_slave/i<3>/CEINV_3517 ),
    .CLK(\blocspi_slave/i<3>/CLKINV_3518 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\blocspi_slave/i<3>/SRINV_3519 ),
    .O(\blocspi_slave/i [3])
  );
  X_LUT4 #(
    .INIT ( 16'hFF33 ),
    .LOC ( "SLICE_X6Y23" ))
  \blocspi_slave/Mcount_i_lut<6>  (
    .ADR0(VCC),
    .ADR1(\blocspi_slave/i [6]),
    .ADR2(VCC),
    .ADR3(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .O(\blocspi_slave/Mcount_i_lut [6])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y23" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/i_6  (
    .I(\blocspi_slave/i<5>/DYMUX_3595 ),
    .CE(\blocspi_slave/i<5>/CEINV_3573 ),
    .CLK(\blocspi_slave/i<5>/CLKINV_3574 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\blocspi_slave/i<5>/SRINV_3575 ),
    .O(\blocspi_slave/i [6])
  );
  X_LUT4 #(
    .INIT ( 16'hFF33 ),
    .LOC ( "SLICE_X6Y23" ))
  \blocspi_slave/Mcount_i_lut<5>  (
    .ADR0(VCC),
    .ADR1(\blocspi_slave/i [5]),
    .ADR2(VCC),
    .ADR3(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .O(\blocspi_slave/Mcount_i_lut [5])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y23" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/i_5  (
    .I(\blocspi_slave/i<5>/DXMUX_3612 ),
    .CE(\blocspi_slave/i<5>/CEINV_3573 ),
    .CLK(\blocspi_slave/i<5>/CLKINV_3574 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\blocspi_slave/i<5>/SRINV_3575 ),
    .O(\blocspi_slave/i [5])
  );
  X_LUT4 #(
    .INIT ( 16'hF3F3 ),
    .LOC ( "SLICE_X6Y24" ))
  \blocspi_slave/Mcount_i_lut<8>  (
    .ADR0(VCC),
    .ADR1(\blocspi_slave/i [8]),
    .ADR2(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .ADR3(VCC),
    .O(\blocspi_slave/Mcount_i_lut [8])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y24" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/i_8  (
    .I(\blocspi_slave/i<7>/DYMUX_3651 ),
    .CE(\blocspi_slave/i<7>/CEINV_3629 ),
    .CLK(\blocspi_slave/i<7>/CLKINV_3630 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\blocspi_slave/i<7>/SRINV_3631 ),
    .O(\blocspi_slave/i [8])
  );
  X_LUT4 #(
    .INIT ( 16'hF0FF ),
    .LOC ( "SLICE_X6Y24" ))
  \blocspi_slave/Mcount_i_lut<7>  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .ADR3(\blocspi_slave/i [7]),
    .O(\blocspi_slave/Mcount_i_lut [7])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y24" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/i_7  (
    .I(\blocspi_slave/i<7>/DXMUX_3668 ),
    .CE(\blocspi_slave/i<7>/CEINV_3629 ),
    .CLK(\blocspi_slave/i<7>/CLKINV_3630 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\blocspi_slave/i<7>/SRINV_3631 ),
    .O(\blocspi_slave/i [7])
  );
  X_LUT4 #(
    .INIT ( 16'hF0FF ),
    .LOC ( "SLICE_X6Y25" ))
  \blocspi_slave/Mcount_i_lut<10>  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .ADR3(\blocspi_slave/i [10]),
    .O(\blocspi_slave/Mcount_i_lut [10])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y25" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/i_10  (
    .I(\blocspi_slave/i<9>/DYMUX_3707 ),
    .CE(\blocspi_slave/i<9>/CEINV_3685 ),
    .CLK(\blocspi_slave/i<9>/CLKINV_3686 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\blocspi_slave/i<9>/SRINV_3687 ),
    .O(\blocspi_slave/i [10])
  );
  X_LUT4 #(
    .INIT ( 16'hFF33 ),
    .LOC ( "SLICE_X6Y25" ))
  \blocspi_slave/Mcount_i_lut<9>  (
    .ADR0(VCC),
    .ADR1(\blocspi_slave/i [9]),
    .ADR2(VCC),
    .ADR3(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .O(\blocspi_slave/Mcount_i_lut [9])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y25" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/i_9  (
    .I(\blocspi_slave/i<9>/DXMUX_3724 ),
    .CE(\blocspi_slave/i<9>/CEINV_3685 ),
    .CLK(\blocspi_slave/i<9>/CLKINV_3686 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\blocspi_slave/i<9>/SRINV_3687 ),
    .O(\blocspi_slave/i [9])
  );
  X_LUT4 #(
    .INIT ( 16'hFF0F ),
    .LOC ( "SLICE_X6Y26" ))
  \blocspi_slave/Mcount_i_lut<12>  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\blocspi_slave/i [12]),
    .ADR3(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .O(\blocspi_slave/Mcount_i_lut [12])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y26" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/i_12  (
    .I(\blocspi_slave/i<11>/DYMUX_3763 ),
    .CE(\blocspi_slave/i<11>/CEINV_3741 ),
    .CLK(\blocspi_slave/i<11>/CLKINV_3742 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\blocspi_slave/i<11>/SRINV_3743 ),
    .O(\blocspi_slave/i [12])
  );
  X_LUT4 #(
    .INIT ( 16'hFF55 ),
    .LOC ( "SLICE_X6Y26" ))
  \blocspi_slave/Mcount_i_lut<11>  (
    .ADR0(\blocspi_slave/i [11]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .O(\blocspi_slave/Mcount_i_lut [11])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y26" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/i_11  (
    .I(\blocspi_slave/i<11>/DXMUX_3780 ),
    .CE(\blocspi_slave/i<11>/CEINV_3741 ),
    .CLK(\blocspi_slave/i<11>/CLKINV_3742 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\blocspi_slave/i<11>/SRINV_3743 ),
    .O(\blocspi_slave/i [11])
  );
  X_LUT4 #(
    .INIT ( 16'hF0FF ),
    .LOC ( "SLICE_X6Y27" ))
  \blocspi_slave/Mcount_i_lut<14>  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .ADR3(\blocspi_slave/i [14]),
    .O(\blocspi_slave/Mcount_i_lut [14])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y27" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/i_14  (
    .I(\blocspi_slave/i<13>/DYMUX_3819 ),
    .CE(\blocspi_slave/i<13>/CEINV_3797 ),
    .CLK(\blocspi_slave/i<13>/CLKINV_3798 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\blocspi_slave/i<13>/SRINV_3799 ),
    .O(\blocspi_slave/i [14])
  );
  X_LUT4 #(
    .INIT ( 16'hF3F3 ),
    .LOC ( "SLICE_X6Y27" ))
  \blocspi_slave/Mcount_i_lut<13>  (
    .ADR0(VCC),
    .ADR1(\blocspi_slave/i [13]),
    .ADR2(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .ADR3(VCC),
    .O(\blocspi_slave/Mcount_i_lut [13])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y27" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/i_13  (
    .I(\blocspi_slave/i<13>/DXMUX_3836 ),
    .CE(\blocspi_slave/i<13>/CEINV_3797 ),
    .CLK(\blocspi_slave/i<13>/CLKINV_3798 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\blocspi_slave/i<13>/SRINV_3799 ),
    .O(\blocspi_slave/i [13])
  );
  X_LUT4 #(
    .INIT ( 16'hF3F3 ),
    .LOC ( "SLICE_X6Y28" ))
  \blocspi_slave/Mcount_i_lut<16>  (
    .ADR0(VCC),
    .ADR1(\blocspi_slave/i [16]),
    .ADR2(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .ADR3(VCC),
    .O(\blocspi_slave/Mcount_i_lut [16])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y28" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/i_16  (
    .I(\blocspi_slave/i<15>/DYMUX_3875 ),
    .CE(\blocspi_slave/i<15>/CEINV_3853 ),
    .CLK(\blocspi_slave/i<15>/CLKINV_3854 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\blocspi_slave/i<15>/SRINV_3855 ),
    .O(\blocspi_slave/i [16])
  );
  X_LUT4 #(
    .INIT ( 16'hFF55 ),
    .LOC ( "SLICE_X6Y28" ))
  \blocspi_slave/Mcount_i_lut<15>  (
    .ADR0(\blocspi_slave/i [15]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .O(\blocspi_slave/Mcount_i_lut [15])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y28" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/i_15  (
    .I(\blocspi_slave/i<15>/DXMUX_3892 ),
    .CE(\blocspi_slave/i<15>/CEINV_3853 ),
    .CLK(\blocspi_slave/i<15>/CLKINV_3854 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\blocspi_slave/i<15>/SRINV_3855 ),
    .O(\blocspi_slave/i [15])
  );
  X_LUT4 #(
    .INIT ( 16'hF3F3 ),
    .LOC ( "SLICE_X6Y29" ))
  \blocspi_slave/Mcount_i_lut<18>  (
    .ADR0(VCC),
    .ADR1(\blocspi_slave/i [18]),
    .ADR2(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .ADR3(VCC),
    .O(\blocspi_slave/Mcount_i_lut [18])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y29" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/i_18  (
    .I(\blocspi_slave/i<17>/DYMUX_3931 ),
    .CE(\blocspi_slave/i<17>/CEINV_3909 ),
    .CLK(\blocspi_slave/i<17>/CLKINV_3910 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\blocspi_slave/i<17>/SRINV_3911 ),
    .O(\blocspi_slave/i [18])
  );
  X_LUT4 #(
    .INIT ( 16'hFF0F ),
    .LOC ( "SLICE_X6Y29" ))
  \blocspi_slave/Mcount_i_lut<17>  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\blocspi_slave/i [17]),
    .ADR3(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .O(\blocspi_slave/Mcount_i_lut [17])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y29" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/i_17  (
    .I(\blocspi_slave/i<17>/DXMUX_3948 ),
    .CE(\blocspi_slave/i<17>/CEINV_3909 ),
    .CLK(\blocspi_slave/i<17>/CLKINV_3910 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\blocspi_slave/i<17>/SRINV_3911 ),
    .O(\blocspi_slave/i [17])
  );
  X_LUT4 #(
    .INIT ( 16'hFF33 ),
    .LOC ( "SLICE_X6Y30" ))
  \blocspi_slave/Mcount_i_lut<20>  (
    .ADR0(VCC),
    .ADR1(\blocspi_slave/i [20]),
    .ADR2(VCC),
    .ADR3(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .O(\blocspi_slave/Mcount_i_lut [20])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y30" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/i_20  (
    .I(\blocspi_slave/i<19>/DYMUX_3987 ),
    .CE(\blocspi_slave/i<19>/CEINV_3965 ),
    .CLK(\blocspi_slave/i<19>/CLKINV_3966 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\blocspi_slave/i<19>/SRINV_3967 ),
    .O(\blocspi_slave/i [20])
  );
  X_LUT4 #(
    .INIT ( 16'hFF55 ),
    .LOC ( "SLICE_X6Y30" ))
  \blocspi_slave/Mcount_i_lut<19>  (
    .ADR0(\blocspi_slave/i [19]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .O(\blocspi_slave/Mcount_i_lut [19])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y30" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/i_19  (
    .I(\blocspi_slave/i<19>/DXMUX_4004 ),
    .CE(\blocspi_slave/i<19>/CEINV_3965 ),
    .CLK(\blocspi_slave/i<19>/CLKINV_3966 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\blocspi_slave/i<19>/SRINV_3967 ),
    .O(\blocspi_slave/i [19])
  );
  X_LUT4 #(
    .INIT ( 16'hFF0F ),
    .LOC ( "SLICE_X6Y31" ))
  \blocspi_slave/Mcount_i_lut<22>  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\blocspi_slave/i [22]),
    .ADR3(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .O(\blocspi_slave/Mcount_i_lut [22])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y31" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/i_22  (
    .I(\blocspi_slave/i<21>/DYMUX_4043 ),
    .CE(\blocspi_slave/i<21>/CEINV_4021 ),
    .CLK(\blocspi_slave/i<21>/CLKINV_4022 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\blocspi_slave/i<21>/SRINV_4023 ),
    .O(\blocspi_slave/i [22])
  );
  X_LUT4 #(
    .INIT ( 16'hF0FF ),
    .LOC ( "SLICE_X6Y31" ))
  \blocspi_slave/Mcount_i_lut<21>  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .ADR3(\blocspi_slave/i [21]),
    .O(\blocspi_slave/Mcount_i_lut [21])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y31" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/i_21  (
    .I(\blocspi_slave/i<21>/DXMUX_4060 ),
    .CE(\blocspi_slave/i<21>/CEINV_4021 ),
    .CLK(\blocspi_slave/i<21>/CLKINV_4022 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\blocspi_slave/i<21>/SRINV_4023 ),
    .O(\blocspi_slave/i [21])
  );
  X_LUT4 #(
    .INIT ( 16'hF3F3 ),
    .LOC ( "SLICE_X6Y32" ))
  \blocspi_slave/Mcount_i_lut<24>  (
    .ADR0(VCC),
    .ADR1(\blocspi_slave/i [24]),
    .ADR2(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .ADR3(VCC),
    .O(\blocspi_slave/Mcount_i_lut [24])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y32" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/i_24  (
    .I(\blocspi_slave/i<23>/DYMUX_4099 ),
    .CE(\blocspi_slave/i<23>/CEINV_4077 ),
    .CLK(\blocspi_slave/i<23>/CLKINV_4078 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\blocspi_slave/i<23>/SRINV_4079 ),
    .O(\blocspi_slave/i [24])
  );
  X_LUT4 #(
    .INIT ( 16'hF5F5 ),
    .LOC ( "SLICE_X6Y32" ))
  \blocspi_slave/Mcount_i_lut<23>  (
    .ADR0(\blocspi_slave/i [23]),
    .ADR1(VCC),
    .ADR2(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .ADR3(VCC),
    .O(\blocspi_slave/Mcount_i_lut [23])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y32" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/i_23  (
    .I(\blocspi_slave/i<23>/DXMUX_4116 ),
    .CE(\blocspi_slave/i<23>/CEINV_4077 ),
    .CLK(\blocspi_slave/i<23>/CLKINV_4078 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\blocspi_slave/i<23>/SRINV_4079 ),
    .O(\blocspi_slave/i [23])
  );
  X_LUT4 #(
    .INIT ( 16'hF3F3 ),
    .LOC ( "SLICE_X6Y33" ))
  \blocspi_slave/Mcount_i_lut<26>  (
    .ADR0(VCC),
    .ADR1(\blocspi_slave/i [26]),
    .ADR2(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .ADR3(VCC),
    .O(\blocspi_slave/Mcount_i_lut [26])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y33" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/i_26  (
    .I(\blocspi_slave/i<25>/DYMUX_4155 ),
    .CE(\blocspi_slave/i<25>/CEINV_4133 ),
    .CLK(\blocspi_slave/i<25>/CLKINV_4134 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\blocspi_slave/i<25>/SRINV_4135 ),
    .O(\blocspi_slave/i [26])
  );
  X_LUT4 #(
    .INIT ( 16'hF5F5 ),
    .LOC ( "SLICE_X6Y33" ))
  \blocspi_slave/Mcount_i_lut<25>  (
    .ADR0(\blocspi_slave/i [25]),
    .ADR1(VCC),
    .ADR2(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .ADR3(VCC),
    .O(\blocspi_slave/Mcount_i_lut [25])
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y33" ),
    .INIT ( 1'b0 ))
  \blocspi_slave/i_25  (
    .I(\blocspi_slave/i<25>/DXMUX_4172 ),
    .CE(\blocspi_slave/i<25>/CEINV_4133 ),
    .CLK(\blocspi_slave/i<25>/CLKINV_4134 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\blocspi_slave/i<25>/SRINV_4135 ),
    .O(\blocspi_slave/i [25])
  );
  X_LUT4 #(
    .INIT ( 16'hF0FF ),
    .LOC ( "SLICE_X6Y34" ))
  \blocspi_slave/Mcount_i_lut<28>  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\blocspi_slave/Mcompar_data_inter_cmp_gt0000_cy[8] ),
    .ADR3(\blocspi_slave/i [28]),
    .O(\blocspi_slave/Mcount_i_lut [28])
  );
  X_LUT4 #(
    .INIT ( 16'hAA55 ),
    .LOC ( "SLICE_X16Y33" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_lut<2>  (
    .ADR0(\pwm_gene_R/counter [2]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\traitement_spi/sigpwm_dc_R [2]),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_lut [2])
  );
  X_LUT4 #(
    .INIT ( 16'hC3C3 ),
    .LOC ( "SLICE_X16Y34" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_lut<5>  (
    .ADR0(VCC),
    .ADR1(\pwm_gene_R/counter [5]),
    .ADR2(\traitement_spi/sigpwm_dc_R [5]),
    .ADR3(VCC),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_lut [5])
  );
  X_LUT4 #(
    .INIT ( 16'hCC33 ),
    .LOC ( "SLICE_X16Y34" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_lut<4>  (
    .ADR0(VCC),
    .ADR1(\pwm_gene_R/counter [4]),
    .ADR2(VCC),
    .ADR3(\traitement_spi/sigpwm_dc_R [4]),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_lut [4])
  );
  X_SFF #(
    .LOC ( "SLICE_X16Y35" ),
    .INIT ( 1'b0 ))
  \pwm_gene_R/out_pwm  (
    .I(\pwm_gene_R/out_pwm/DYMUX_4656 ),
    .CE(\pwm_gene_R/out_pwm/CEINV_4640 ),
    .CLK(\pwm_gene_R/out_pwm/CLKINV_4641 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\pwm_gene_R/out_pwm/SRINV_4642 ),
    .O(\pwm_gene_R/out_pwm_1608 )
  );
  X_LUT4 #(
    .INIT ( 16'h9999 ),
    .LOC ( "SLICE_X16Y35" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_lut<6>  (
    .ADR0(\pwm_gene_R/counter [6]),
    .ADR1(\traitement_spi/sigpwm_dc_R [6]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_lt0000_lut [6])
  );
  X_LUT4 #(
    .INIT ( 16'h9696 ),
    .LOC ( "SLICE_X24Y24" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_lut<1>  (
    .ADR0(\pwm_gene_L/clock [1]),
    .ADR1(\mux_freq_0/end_freq[1] ),
    .ADR2(\mux_freq_0/end_freq[0] ),
    .ADR3(VCC),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_lut [1])
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ),
    .LOC ( "SLICE_X24Y24" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_lut<0>  (
    .ADR0(\mux_freq_0/end_freq[0] ),
    .ADR1(\pwm_gene_L/clock [0]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_lut [0])
  );
  X_LUT4 #(
    .INIT ( 16'h6699 ),
    .LOC ( "SLICE_X24Y25" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_lut<3>  (
    .ADR0(\pwm_gene_L/clock [3]),
    .ADR1(\mux_freq_0/end_freq[4] ),
    .ADR2(VCC),
    .ADR3(\pwm_gene_L/clock_sub0000<3>_bdd0_0 ),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_lut [3])
  );
  X_LUT4 #(
    .INIT ( 16'h9996 ),
    .LOC ( "SLICE_X24Y25" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_lut<2>  (
    .ADR0(\mux_freq_0/end_freq[2] ),
    .ADR1(\pwm_gene_L/clock [2]),
    .ADR2(\mux_freq_0/end_freq[0] ),
    .ADR3(\mux_freq_0/end_freq[1] ),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_lut [2])
  );
  X_LUT4 #(
    .INIT ( 16'h6633 ),
    .LOC ( "SLICE_X24Y26" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_lut<5>  (
    .ADR0(\mux_freq_0/end_freq[4] ),
    .ADR1(\pwm_gene_L/clock [5]),
    .ADR2(VCC),
    .ADR3(\pwm_gene_L/clock_sub0000<3>_bdd0_0 ),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_lut [5])
  );
  X_LUT4 #(
    .INIT ( 16'hCC99 ),
    .LOC ( "SLICE_X24Y26" ))
  \pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_lut<4>  (
    .ADR0(\mux_freq_0/end_freq[4] ),
    .ADR1(\pwm_gene_L/clock [4]),
    .ADR2(VCC),
    .ADR3(\pwm_gene_L/clock_sub0000<3>_bdd0_0 ),
    .O(\pwm_gene_L/Mcompar_out_pwm_cmp_ge0000_lut [4])
  );
  X_LUT4 #(
    .INIT ( 16'h9966 ),
    .LOC ( "SLICE_X25Y22" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_lut<1>  (
    .ADR0(\pwm_gene_R/clock [1]),
    .ADR1(\mux_freq_0/end_freq[1] ),
    .ADR2(VCC),
    .ADR3(\mux_freq_0/end_freq[0] ),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_lut [1])
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ),
    .LOC ( "SLICE_X25Y22" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_lut<0>  (
    .ADR0(\pwm_gene_R/clock [0]),
    .ADR1(\mux_freq_0/end_freq[0] ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_lut [0])
  );
  X_LUT4 #(
    .INIT ( 16'h6969 ),
    .LOC ( "SLICE_X25Y23" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_lut<3>  (
    .ADR0(\pwm_gene_R/clock [3]),
    .ADR1(\mux_freq_0/end_freq[4] ),
    .ADR2(\pwm_gene_L/clock_sub0000<3>_bdd0_0 ),
    .ADR3(VCC),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_lut [3])
  );
  X_LUT4 #(
    .INIT ( 16'h9996 ),
    .LOC ( "SLICE_X25Y23" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_lut<2>  (
    .ADR0(\pwm_gene_R/clock [2]),
    .ADR1(\mux_freq_0/end_freq[2] ),
    .ADR2(\mux_freq_0/end_freq[1] ),
    .ADR3(\mux_freq_0/end_freq[0] ),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_lut [2])
  );
  X_LUT4 #(
    .INIT ( 16'h6565 ),
    .LOC ( "SLICE_X25Y24" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_lut<5>  (
    .ADR0(\pwm_gene_R/clock [5]),
    .ADR1(\mux_freq_0/end_freq[4] ),
    .ADR2(\pwm_gene_L/clock_sub0000<3>_bdd0_0 ),
    .ADR3(VCC),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_lut [5])
  );
  X_LUT4 #(
    .INIT ( 16'hA9A9 ),
    .LOC ( "SLICE_X25Y24" ))
  \pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_lut<4>  (
    .ADR0(\pwm_gene_R/clock [4]),
    .ADR1(\mux_freq_0/end_freq[4] ),
    .ADR2(\pwm_gene_L/clock_sub0000<3>_bdd0_0 ),
    .ADR3(VCC),
    .O(\pwm_gene_R/Mcompar_out_pwm_cmp_ge0000_lut [4])
  );
  X_BUF #(
    .LOC ( "PAD9" ))
  \simo/IFF/IMUX  (
    .I(\simo/INBUF ),
    .O(simo_out_OBUF_1678)
  );
  X_BUF #(
    .LOC ( "PAD31" ))
  \th1_L/OUTPUT/OFF/O1INV  (
    .I(\mux_sdhall_L/Switchs[4] ),
    .O(\th1_L/OUTPUT/OFF/O1INV_4892 )
  );
  X_BUF #(
    .LOC ( "PAD31" ))
  \th1_L/OUTPUT/OFF/OMUX  (
    .I(\mux_sdhall_L/result [4]),
    .O(\th1_L/O )
  );
  X_LATCHE #(
    .LOC ( "PAD31" ),
    .INIT ( 1'b0 ))
  \mux_sdhall_L/result_4  (
    .I(\th1_L/OUTPUT/OFF/O1INV_4892 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_mux_sdhall_L/result_4/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\mux_sdhall_L/result [4])
  );
  X_BUF #(
    .LOC ( "PAD31" ))
  \th1_L/OUTPUT/OTCLK1INV  (
    .I(reset_IBUF_1680),
    .O(\th1_L/OUTPUT/OTCLK1INV_4889 )
  );
  X_BUF #(
    .LOC ( "PAD33" ))
  \th2_L/OUTPUT/OFF/O1INV  (
    .I(\mux_sdhall_L/Switchs[2] ),
    .O(\th2_L/OUTPUT/OFF/O1INV_4908 )
  );
  X_BUF #(
    .LOC ( "PAD33" ))
  \th2_L/OUTPUT/OFF/OMUX  (
    .I(\mux_sdhall_L/result [2]),
    .O(\th2_L/O )
  );
  X_LATCHE #(
    .LOC ( "PAD33" ),
    .INIT ( 1'b0 ))
  \mux_sdhall_L/result_2  (
    .I(\th2_L/OUTPUT/OFF/O1INV_4908 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_mux_sdhall_L/result_2/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\mux_sdhall_L/result [2])
  );
  X_BUF #(
    .LOC ( "PAD33" ))
  \th2_L/OUTPUT/OTCLK1INV  (
    .I(reset_IBUF_1680),
    .O(\th2_L/OUTPUT/OTCLK1INV_4905 )
  );
  X_BUF #(
    .LOC ( "PAD18" ))
  \th1_R/OUTPUT/OFF/O1INV  (
    .I(\mux_sdhall_R/Switchs[4] ),
    .O(\th1_R/OUTPUT/OFF/O1INV_4924 )
  );
  X_BUF #(
    .LOC ( "PAD18" ))
  \th1_R/OUTPUT/OFF/OMUX  (
    .I(\mux_sdhall_R/result [4]),
    .O(\th1_R/O )
  );
  X_LATCHE #(
    .LOC ( "PAD18" ),
    .INIT ( 1'b0 ))
  \mux_sdhall_R/result_4  (
    .I(\th1_R/OUTPUT/OFF/O1INV_4924 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_mux_sdhall_R/result_4/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\mux_sdhall_R/result [4])
  );
  X_BUF #(
    .LOC ( "PAD18" ))
  \th1_R/OUTPUT/OTCLK1INV  (
    .I(reset_IBUF_1680),
    .O(\th1_R/OUTPUT/OTCLK1INV_4921 )
  );
  X_BUF #(
    .LOC ( "PAD35" ))
  \th3_L/OUTPUT/OFF/O1INV  (
    .I(\mux_sdhall_L/Switchs[0] ),
    .O(\th3_L/OUTPUT/OFF/O1INV_4940 )
  );
  X_BUF #(
    .LOC ( "PAD35" ))
  \th3_L/OUTPUT/OFF/OMUX  (
    .I(\mux_sdhall_L/result [0]),
    .O(\th3_L/O )
  );
  X_LATCHE #(
    .LOC ( "PAD35" ),
    .INIT ( 1'b0 ))
  \mux_sdhall_L/result_0  (
    .I(\th3_L/OUTPUT/OFF/O1INV_4940 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_mux_sdhall_L/result_0/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\mux_sdhall_L/result [0])
  );
  X_BUF #(
    .LOC ( "PAD35" ))
  \th3_L/OUTPUT/OTCLK1INV  (
    .I(reset_IBUF_1680),
    .O(\th3_L/OUTPUT/OTCLK1INV_4937 )
  );
  X_BUF #(
    .LOC ( "PAD22" ))
  \th2_R/OUTPUT/OFF/O1INV  (
    .I(\mux_sdhall_R/Switchs[2] ),
    .O(\th2_R/OUTPUT/OFF/O1INV_4956 )
  );
  X_BUF #(
    .LOC ( "PAD22" ))
  \th2_R/OUTPUT/OFF/OMUX  (
    .I(\mux_sdhall_R/result [2]),
    .O(\th2_R/O )
  );
  X_LATCHE #(
    .LOC ( "PAD22" ),
    .INIT ( 1'b0 ))
  \mux_sdhall_R/result_2  (
    .I(\th2_R/OUTPUT/OFF/O1INV_4956 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_mux_sdhall_R/result_2/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\mux_sdhall_R/result [2])
  );
  X_BUF #(
    .LOC ( "PAD22" ))
  \th2_R/OUTPUT/OTCLK1INV  (
    .I(reset_IBUF_1680),
    .O(\th2_R/OUTPUT/OTCLK1INV_4953 )
  );
  X_BUF #(
    .LOC ( "PAD32" ))
  \th3_R/OUTPUT/OFF/O1INV  (
    .I(\mux_sdhall_R/Switchs[0] ),
    .O(\th3_R/OUTPUT/OFF/O1INV_4972 )
  );
  X_BUF #(
    .LOC ( "PAD32" ))
  \th3_R/OUTPUT/OFF/OMUX  (
    .I(\mux_sdhall_R/result [0]),
    .O(\th3_R/O )
  );
  X_LATCHE #(
    .LOC ( "PAD32" ),
    .INIT ( 1'b0 ))
  \mux_sdhall_R/result_0  (
    .I(\th3_R/OUTPUT/OFF/O1INV_4972 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_mux_sdhall_R/result_0/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\mux_sdhall_R/result [0])
  );
  X_BUF #(
    .LOC ( "PAD32" ))
  \th3_R/OUTPUT/OTCLK1INV  (
    .I(reset_IBUF_1680),
    .O(\th3_R/OUTPUT/OTCLK1INV_4969 )
  );
  X_BUF #(
    .LOC ( "PAD37" ))
  \tl1_L/OUTPUT/OFF/O1INV  (
    .I(\mux_sdhall_L/result_5_mux0001 ),
    .O(\tl1_L/OUTPUT/OFF/O1INV_4988 )
  );
  X_BUF #(
    .LOC ( "PAD37" ))
  \tl1_L/OUTPUT/OFF/OMUX  (
    .I(\mux_sdhall_L/result [5]),
    .O(\tl1_L/O )
  );
  X_LATCHE #(
    .LOC ( "PAD37" ),
    .INIT ( 1'b1 ))
  \mux_sdhall_L/result_5  (
    .I(\tl1_L/OUTPUT/OFF/O1INV_4988 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_mux_sdhall_L/result_5/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\mux_sdhall_L/result [5])
  );
  X_BUF #(
    .LOC ( "PAD37" ))
  \tl1_L/OUTPUT/OTCLK1INV  (
    .I(reset_IBUF_1680),
    .O(\tl1_L/OUTPUT/OTCLK1INV_4985 )
  );
  X_BUF #(
    .LOC ( "PAD40" ))
  \tl2_L/OUTPUT/OFF/O1INV  (
    .I(\mux_sdhall_L/result_3_mux0001 ),
    .O(\tl2_L/OUTPUT/OFF/O1INV_5004 )
  );
  X_BUF #(
    .LOC ( "PAD40" ))
  \tl2_L/OUTPUT/OFF/OMUX  (
    .I(\mux_sdhall_L/result [3]),
    .O(\tl2_L/O )
  );
  X_LATCHE #(
    .LOC ( "PAD40" ),
    .INIT ( 1'b1 ))
  \mux_sdhall_L/result_3  (
    .I(\tl2_L/OUTPUT/OFF/O1INV_5004 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_mux_sdhall_L/result_3/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\mux_sdhall_L/result [3])
  );
  X_BUF #(
    .LOC ( "PAD40" ))
  \tl2_L/OUTPUT/OTCLK1INV  (
    .I(reset_IBUF_1680),
    .O(\tl2_L/OUTPUT/OTCLK1INV_5001 )
  );
  X_BUF #(
    .LOC ( "PAD2" ))
  \tl1_R/OUTPUT/OFF/O1INV  (
    .I(\mux_sdhall_R/result_5_mux0001 ),
    .O(\tl1_R/OUTPUT/OFF/O1INV_5020 )
  );
  X_BUF #(
    .LOC ( "PAD2" ))
  \tl1_R/OUTPUT/OFF/OMUX  (
    .I(\mux_sdhall_R/result [5]),
    .O(\tl1_R/O )
  );
  X_LATCHE #(
    .LOC ( "PAD2" ),
    .INIT ( 1'b1 ))
  \mux_sdhall_R/result_5  (
    .I(\tl1_R/OUTPUT/OFF/O1INV_5020 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_mux_sdhall_R/result_5/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\mux_sdhall_R/result [5])
  );
  X_BUF #(
    .LOC ( "PAD2" ))
  \tl1_R/OUTPUT/OTCLK1INV  (
    .I(reset_IBUF_1680),
    .O(\tl1_R/OUTPUT/OTCLK1INV_5017 )
  );
  X_BUF #(
    .LOC ( "PAD36" ))
  \tl3_L/OUTPUT/OFF/O1INV  (
    .I(\mux_sdhall_L/result_1_mux0001 ),
    .O(\tl3_L/OUTPUT/OFF/O1INV_5036 )
  );
  X_BUF #(
    .LOC ( "PAD36" ))
  \tl3_L/OUTPUT/OFF/OMUX  (
    .I(\mux_sdhall_L/result [1]),
    .O(\tl3_L/O )
  );
  X_LATCHE #(
    .LOC ( "PAD36" ),
    .INIT ( 1'b1 ))
  \mux_sdhall_L/result_1  (
    .I(\tl3_L/OUTPUT/OFF/O1INV_5036 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_mux_sdhall_L/result_1/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\mux_sdhall_L/result [1])
  );
  X_BUF #(
    .LOC ( "PAD36" ))
  \tl3_L/OUTPUT/OTCLK1INV  (
    .I(reset_IBUF_1680),
    .O(\tl3_L/OUTPUT/OTCLK1INV_5033 )
  );
  X_BUF #(
    .LOC ( "PAD10" ))
  \tl2_R/OUTPUT/OFF/O1INV  (
    .I(\mux_sdhall_R/result_3_mux0001 ),
    .O(\tl2_R/OUTPUT/OFF/O1INV_5052 )
  );
  X_BUF #(
    .LOC ( "PAD10" ))
  \tl2_R/OUTPUT/OFF/OMUX  (
    .I(\mux_sdhall_R/result [3]),
    .O(\tl2_R/O )
  );
  X_LATCHE #(
    .LOC ( "PAD10" ),
    .INIT ( 1'b1 ))
  \mux_sdhall_R/result_3  (
    .I(\tl2_R/OUTPUT/OFF/O1INV_5052 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_mux_sdhall_R/result_3/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\mux_sdhall_R/result [3])
  );
  X_BUF #(
    .LOC ( "PAD10" ))
  \tl2_R/OUTPUT/OTCLK1INV  (
    .I(reset_IBUF_1680),
    .O(\tl2_R/OUTPUT/OTCLK1INV_5049 )
  );
  X_BUF #(
    .LOC ( "PAD15" ))
  \tl3_R/OUTPUT/OFF/O1INV  (
    .I(\mux_sdhall_R/result_1_mux0001 ),
    .O(\tl3_R/OUTPUT/OFF/O1INV_5068 )
  );
  X_BUF #(
    .LOC ( "PAD15" ))
  \tl3_R/OUTPUT/OFF/OMUX  (
    .I(\mux_sdhall_R/result [1]),
    .O(\tl3_R/O )
  );
  X_LATCHE #(
    .LOC ( "PAD15" ),
    .INIT ( 1'b1 ))
  \mux_sdhall_R/result_1  (
    .I(\tl3_R/OUTPUT/OFF/O1INV_5068 ),
    .GE(VCC),
    .CLK(\NlwInverterSignal_mux_sdhall_R/result_1/CLK ),
    .SET(GND),
    .RST(GND),
    .O(\mux_sdhall_R/result [1])
  );
  X_BUF #(
    .LOC ( "PAD15" ))
  \tl3_R/OUTPUT/OTCLK1INV  (
    .I(reset_IBUF_1680),
    .O(\tl3_R/OUTPUT/OTCLK1INV_5065 )
  );
  X_BUF #(
    .LOC ( "PAD52" ))
  \H3H2H1_L<0>/IFF/IMUX  (
    .I(\H3H2H1_L<0>/INBUF ),
    .O(H3H2H1_L_0_IBUF_1474)
  );
  X_BUF #(
    .LOC ( "PAD56" ))
  \H3H2H1_L<1>/IFF/IMUX  (
    .I(\H3H2H1_L<1>/INBUF ),
    .O(H3H2H1_L_1_IBUF_1478)
  );
  X_BUF #(
    .LOC ( "PAD60" ))
  \H3H2H1_L<2>/IFF/IMUX  (
    .I(\H3H2H1_L<2>/INBUF ),
    .O(H3H2H1_L_2_IBUF_1476)
  );
  X_BUF #(
    .LOC ( "PAD6" ))
  \H3H2H1_R<0>/IFF/IMUX  (
    .I(\H3H2H1_R<0>/INBUF ),
    .O(H3H2H1_R_0_IBUF_1497)
  );
  X_BUF #(
    .LOC ( "PAD13" ))
  \H3H2H1_R<1>/IFF/IMUX  (
    .I(\H3H2H1_R<1>/INBUF ),
    .O(H3H2H1_R_1_IBUF_1494)
  );
  X_BUF #(
    .LOC ( "PAD17" ))
  \H3H2H1_R<2>/IFF/IMUX  (
    .I(\H3H2H1_R<2>/INBUF ),
    .O(H3H2H1_R_2_IBUF_1493)
  );
  X_BUF #(
    .LOC ( "PAD88" ))
  \reset/IFF/IMUX  (
    .I(\reset/INBUF ),
    .O(reset_IBUF1)
  );
  X_LUT4 #(
    .INIT ( 16'hEEAA ),
    .LOC ( "SLICE_X21Y26" ))
  \pwm_gene_R/counter_and00003  (
    .ADR0(\pwm_gene_R/counter [4]),
    .ADR1(\pwm_gene_R/counter [1]),
    .ADR2(VCC),
    .ADR3(\pwm_gene_R/counter [0]),
    .O(\pwm_gene_R/counter_and00003/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCD ),
    .LOC ( "SLICE_X21Y26" ))
  \pwm_gene_R/counter_and000024_SW0  (
    .ADR0(\pwm_gene_R/counter [3]),
    .ADR1(reset_IBUF1),
    .ADR2(\pwm_gene_R/counter_and00003/O ),
    .ADR3(\pwm_gene_R/counter [2]),
    .O(N6)
  );
  X_LUT4 #(
    .INIT ( 16'hEAEA ),
    .LOC ( "SLICE_X22Y26" ))
  \pwm_gene_L/counter_and00003  (
    .ADR0(\pwm_gene_L/counter [4]),
    .ADR1(\pwm_gene_L/counter [1]),
    .ADR2(\pwm_gene_L/counter [0]),
    .ADR3(VCC),
    .O(\pwm_gene_L/counter_and00003/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAB ),
    .LOC ( "SLICE_X22Y26" ))
  \pwm_gene_L/counter_and000024_SW0  (
    .ADR0(reset_IBUF1),
    .ADR1(\pwm_gene_L/counter [3]),
    .ADR2(\pwm_gene_L/counter [2]),
    .ADR3(\pwm_gene_L/counter_and00003/O ),
    .O(N8)
  );
  X_LUT4 #(
    .INIT ( 16'h0100 ),
    .LOC ( "SLICE_X7Y25" ))
  \blocspi_slave/Data_11_not000111  (
    .ADR0(\blocspi_slave/i [1]),
    .ADR1(\blocspi_slave/i [4]),
    .ADR2(\blocspi_slave/i [0]),
    .ADR3(\blocspi_slave/Data_0_not00011_wg_cy[7] ),
    .O(\blocspi_slave/N4_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h2200 ),
    .LOC ( "SLICE_X7Y25" ))
  \blocspi_slave/Data_7_not00011  (
    .ADR0(\blocspi_slave/i [3]),
    .ADR1(\blocspi_slave/i [2]),
    .ADR2(VCC),
    .ADR3(\blocspi_slave/N4 ),
    .O(\blocspi_slave/Data_7_not0001 )
  );
  X_LUT4 #(
    .INIT ( 16'h3000 ),
    .LOC ( "SLICE_X7Y24" ))
  \blocspi_slave/Data_0_not000131  (
    .ADR0(VCC),
    .ADR1(\blocspi_slave/i [4]),
    .ADR2(\blocspi_slave/i [0]),
    .ADR3(\blocspi_slave/Data_0_not00011_wg_cy[7] ),
    .O(\blocspi_slave/N2_pack_1 )
  );
  X_SFF #(
    .LOC ( "SLICE_X27Y25" ),
    .INIT ( 1'b0 ))
  \pwm_gene_L/clock_2  (
    .I(\pwm_gene_L/clock<3>/DYMUX_5744 ),
    .CE(\pwm_gene_L/clock<3>/CEINVNOT ),
    .CLK(\pwm_gene_L/clock<3>/CLKINV_5734 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\pwm_gene_L/clock<3>/SRINV_5735 ),
    .O(\pwm_gene_L/clock [2])
  );
  X_LUT4 #(
    .INIT ( 16'h7F80 ),
    .LOC ( "SLICE_X27Y25" ))
  \pwm_gene_L/Result<3>2  (
    .ADR0(\pwm_gene_L/clock [0]),
    .ADR1(\pwm_gene_L/clock [1]),
    .ADR2(\pwm_gene_L/clock [2]),
    .ADR3(\pwm_gene_L/clock [3]),
    .O(\pwm_gene_L/Result [3])
  );
  X_SFF #(
    .LOC ( "SLICE_X27Y25" ),
    .INIT ( 1'b0 ))
  \pwm_gene_L/clock_3  (
    .I(\pwm_gene_L/clock<3>/DXMUX_5757 ),
    .CE(\pwm_gene_L/clock<3>/CEINVNOT ),
    .CLK(\pwm_gene_L/clock<3>/CLKINV_5734 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\pwm_gene_L/clock<3>/SRINV_5735 ),
    .O(\pwm_gene_L/clock [3])
  );
  X_LUT4 #(
    .INIT ( 16'hF708 ),
    .LOC ( "SLICE_X26Y24" ))
  \pwm_gene_L/Result<5>1  (
    .ADR0(\pwm_gene_L/clock [3]),
    .ADR1(\pwm_gene_L/clock [4]),
    .ADR2(\pwm_gene_L/Result<3>_bdd0 ),
    .ADR3(\pwm_gene_L/clock [5]),
    .O(\pwm_gene_L/Result [5])
  );
  X_SFF #(
    .LOC ( "SLICE_X26Y24" ),
    .INIT ( 1'b0 ))
  \pwm_gene_L/clock_5  (
    .I(\pwm_gene_L/clock<5>/DYMUX_5781 ),
    .CE(\pwm_gene_L/clock<5>/CEINVNOT ),
    .CLK(\pwm_gene_L/clock<5>/CLKINV_5772 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\pwm_gene_L/clock<5>/SRINV_5773 ),
    .O(\pwm_gene_L/clock [5])
  );
  X_FF #(
    .LOC ( "SLICE_X18Y33" ),
    .INIT ( 1'b0 ))
  \traitement_spi/sigpwm_dc_L_0  (
    .I(\traitement_spi/sigpwm_dc_L<1>/DYMUX_5796 ),
    .CE(\traitement_spi/sigpwm_dc_L<1>/CEINV_5793 ),
    .CLK(\traitement_spi/sigpwm_dc_L<1>/CLKINV_5794 ),
    .SET(GND),
    .RST(GND),
    .O(\traitement_spi/sigpwm_dc_L [0])
  );
  X_FF #(
    .LOC ( "SLICE_X18Y33" ),
    .INIT ( 1'b0 ))
  \traitement_spi/sigpwm_dc_L_1  (
    .I(\traitement_spi/sigpwm_dc_L<1>/DXMUX_5802 ),
    .CE(\traitement_spi/sigpwm_dc_L<1>/CEINV_5793 ),
    .CLK(\traitement_spi/sigpwm_dc_L<1>/CLKINV_5794 ),
    .SET(GND),
    .RST(GND),
    .O(\traitement_spi/sigpwm_dc_L [1])
  );
  X_FF #(
    .LOC ( "SLICE_X15Y33" ),
    .INIT ( 1'b0 ))
  \traitement_spi/sigpwm_dc_L_2  (
    .I(\traitement_spi/sigpwm_dc_L<3>/DYMUX_5816 ),
    .CE(\traitement_spi/sigpwm_dc_L<3>/CEINV_5813 ),
    .CLK(\traitement_spi/sigpwm_dc_L<3>/CLKINV_5814 ),
    .SET(GND),
    .RST(GND),
    .O(\traitement_spi/sigpwm_dc_L [2])
  );
  X_FF #(
    .LOC ( "SLICE_X15Y33" ),
    .INIT ( 1'b0 ))
  \traitement_spi/sigpwm_dc_L_3  (
    .I(\traitement_spi/sigpwm_dc_L<3>/DXMUX_5822 ),
    .CE(\traitement_spi/sigpwm_dc_L<3>/CEINV_5813 ),
    .CLK(\traitement_spi/sigpwm_dc_L<3>/CLKINV_5814 ),
    .SET(GND),
    .RST(GND),
    .O(\traitement_spi/sigpwm_dc_L [3])
  );
  X_FF #(
    .LOC ( "SLICE_X12Y35" ),
    .INIT ( 1'b0 ))
  \traitement_spi/sigpwm_dc_L_4  (
    .I(\traitement_spi/sigpwm_dc_L<5>/DYMUX_5836 ),
    .CE(\traitement_spi/sigpwm_dc_L<5>/CEINV_5833 ),
    .CLK(\traitement_spi/sigpwm_dc_L<5>/CLKINV_5834 ),
    .SET(GND),
    .RST(GND),
    .O(\traitement_spi/sigpwm_dc_L [4])
  );
  X_FF #(
    .LOC ( "SLICE_X12Y35" ),
    .INIT ( 1'b0 ))
  \traitement_spi/sigpwm_dc_L_5  (
    .I(\traitement_spi/sigpwm_dc_L<5>/DXMUX_5842 ),
    .CE(\traitement_spi/sigpwm_dc_L<5>/CEINV_5833 ),
    .CLK(\traitement_spi/sigpwm_dc_L<5>/CLKINV_5834 ),
    .SET(GND),
    .RST(GND),
    .O(\traitement_spi/sigpwm_dc_L [5])
  );
  X_LUT4 #(
    .INIT ( 16'hFFFF ),
    .LOC ( "SLICE_X23Y35" ))
  \pwm_gene_L/out_pwm/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\pwm_gene_L/out_pwm/G )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFF ),
    .LOC ( "SLICE_X16Y35" ))
  \pwm_gene_R/out_pwm/G/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\pwm_gene_R/out_pwm/G )
  );
  X_BUF #(
    .LOC ( "PAD186" ))
  \test_data<0>/OUTPUT/OFF/OMUX  (
    .I(\blocspi_slave/test_data [0]),
    .O(\test_data<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD192" ))
  \test_data<1>/OUTPUT/OFF/OMUX  (
    .I(\blocspi_slave/test_data [1]),
    .O(\test_data<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD184" ))
  \test_data<2>/OUTPUT/OFF/OMUX  (
    .I(\blocspi_slave/test_data [2]),
    .O(\test_data<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD182" ))
  \test_data<3>/OUTPUT/OFF/OMUX  (
    .I(\blocspi_slave/test_data [3]),
    .O(\test_data<3>/O )
  );
  X_BUF #(
    .LOC ( "PAD176" ))
  \test_data<4>/OUTPUT/OFF/OMUX  (
    .I(\blocspi_slave/test_data [4]),
    .O(\test_data<4>/O )
  );
  X_BUF #(
    .LOC ( "PAD181" ))
  \test_data<5>/OUTPUT/OFF/OMUX  (
    .I(\blocspi_slave/test_data [5]),
    .O(\test_data<5>/O )
  );
  X_BUF #(
    .LOC ( "PAD185" ))
  \test_data<6>/OUTPUT/OFF/OMUX  (
    .I(\blocspi_slave/test_data [6]),
    .O(\test_data<6>/O )
  );
  X_BUF #(
    .LOC ( "PAD183" ))
  \test_data<7>/OUTPUT/OFF/OMUX  (
    .I(\blocspi_slave/test_data [7]),
    .O(\test_data<7>/O )
  );
  X_BUF #(
    .LOC ( "PAD174" ))
  \test_data<8>/OUTPUT/OFF/OMUX  (
    .I(\blocspi_slave/test_data [8]),
    .O(\test_data<8>/O )
  );
  X_BUF #(
    .LOC ( "PAD190" ))
  \test_data<9>/OUTPUT/OFF/OMUX  (
    .I(\blocspi_slave/test_data [9]),
    .O(\test_data<9>/O )
  );
  X_BUF #(
    .LOC ( "PAD188" ))
  \Test_PWM_L/OUTPUT/OFF/OMUX  (
    .I(\pwm_gene_L/out_pwm_1577 ),
    .O(\Test_PWM_L/O )
  );
  X_BUF #(
    .LOC ( "PAD195" ))
  \Test_PWM_R/OUTPUT/OFF/OMUX  (
    .I(\pwm_gene_R/out_pwm_1608 ),
    .O(\Test_PWM_R/O )
  );
  X_BUF #(
    .LOC ( "PAD189" ))
  \test_data<10>/OUTPUT/OFF/OMUX  (
    .I(\blocspi_slave/test_data [10]),
    .O(\test_data<10>/O )
  );
  X_BUF #(
    .LOC ( "PAD187" ))
  \test_data<11>/OUTPUT/OFF/OMUX  (
    .I(\blocspi_slave/test_data [11]),
    .O(\test_data<11>/O )
  );
  X_BUF #(
    .LOC ( "PAD175" ))
  \test_data<12>/OUTPUT/OFF/OMUX  (
    .I(\blocspi_slave/test_data [12]),
    .O(\test_data<12>/O )
  );
  X_BUF #(
    .LOC ( "PAD180" ))
  \test_data<13>/OUTPUT/OFF/OMUX  (
    .I(\blocspi_slave/test_data [13]),
    .O(\test_data<13>/O )
  );
  X_BUF #(
    .LOC ( "PAD179" ))
  \test_data<14>/OUTPUT/OFF/OMUX  (
    .I(\blocspi_slave/test_data [14]),
    .O(\test_data<14>/O )
  );
  X_BUF #(
    .LOC ( "PAD177" ))
  \test_data<15>/OUTPUT/OFF/OMUX  (
    .I(\blocspi_slave/test_data [15]),
    .O(\test_data<15>/O )
  );
  X_BUF #(
    .LOC ( "PAD194" ))
  \simo_out/OUTPUT/OFF/OMUX  (
    .I(simo_out_OBUF_1678),
    .O(\simo_out/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X8Y42" ))
  \stab/Mshreg_sclk2/SRL16E.CE/WSGAND  (
    .I(\stab/sclk2/SRINV_5537 ),
    .O(\stab/sclk2/WSG )
  );
  X_BUF #(
    .LOC ( "SLICE_X4Y44" ))
  \stab/Mshreg_simo2/SRL16E.CE/WSGAND  (
    .I(\stab/simo2/SRINV_5566 ),
    .O(\stab/simo2/WSG )
  );
  X_BUF #(
    .LOC ( "SLICE_X10Y47" ))
  \stab/Mshreg_ssel2/SRL16E.CE/WSGAND  (
    .I(\stab/ssel2/SRINV_5595 ),
    .O(\stab/ssel2/WSG )
  );
  X_ONE   NlwBlock_CMDE_moteurs_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_CMDE_moteurs_GND (
    .O(GND)
  );
  X_INV   \NlwInverterBlock_mux_sdhall_L/result_4/CLK  (
    .I(\th1_L/OUTPUT/OTCLK1INV_4889 ),
    .O(\NlwInverterSignal_mux_sdhall_L/result_4/CLK )
  );
  X_INV   \NlwInverterBlock_mux_sdhall_L/result_2/CLK  (
    .I(\th2_L/OUTPUT/OTCLK1INV_4905 ),
    .O(\NlwInverterSignal_mux_sdhall_L/result_2/CLK )
  );
  X_INV   \NlwInverterBlock_mux_sdhall_R/result_4/CLK  (
    .I(\th1_R/OUTPUT/OTCLK1INV_4921 ),
    .O(\NlwInverterSignal_mux_sdhall_R/result_4/CLK )
  );
  X_INV   \NlwInverterBlock_mux_sdhall_L/result_0/CLK  (
    .I(\th3_L/OUTPUT/OTCLK1INV_4937 ),
    .O(\NlwInverterSignal_mux_sdhall_L/result_0/CLK )
  );
  X_INV   \NlwInverterBlock_mux_sdhall_R/result_2/CLK  (
    .I(\th2_R/OUTPUT/OTCLK1INV_4953 ),
    .O(\NlwInverterSignal_mux_sdhall_R/result_2/CLK )
  );
  X_INV   \NlwInverterBlock_mux_sdhall_R/result_0/CLK  (
    .I(\th3_R/OUTPUT/OTCLK1INV_4969 ),
    .O(\NlwInverterSignal_mux_sdhall_R/result_0/CLK )
  );
  X_INV   \NlwInverterBlock_mux_sdhall_L/result_5/CLK  (
    .I(\tl1_L/OUTPUT/OTCLK1INV_4985 ),
    .O(\NlwInverterSignal_mux_sdhall_L/result_5/CLK )
  );
  X_INV   \NlwInverterBlock_mux_sdhall_L/result_3/CLK  (
    .I(\tl2_L/OUTPUT/OTCLK1INV_5001 ),
    .O(\NlwInverterSignal_mux_sdhall_L/result_3/CLK )
  );
  X_INV   \NlwInverterBlock_mux_sdhall_R/result_5/CLK  (
    .I(\tl1_R/OUTPUT/OTCLK1INV_5017 ),
    .O(\NlwInverterSignal_mux_sdhall_R/result_5/CLK )
  );
  X_INV   \NlwInverterBlock_mux_sdhall_L/result_1/CLK  (
    .I(\tl3_L/OUTPUT/OTCLK1INV_5033 ),
    .O(\NlwInverterSignal_mux_sdhall_L/result_1/CLK )
  );
  X_INV   \NlwInverterBlock_mux_sdhall_R/result_3/CLK  (
    .I(\tl2_R/OUTPUT/OTCLK1INV_5049 ),
    .O(\NlwInverterSignal_mux_sdhall_R/result_3/CLK )
  );
  X_INV   \NlwInverterBlock_mux_sdhall_R/result_1/CLK  (
    .I(\tl3_R/OUTPUT/OTCLK1INV_5065 ),
    .O(\NlwInverterSignal_mux_sdhall_R/result_1/CLK )
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

