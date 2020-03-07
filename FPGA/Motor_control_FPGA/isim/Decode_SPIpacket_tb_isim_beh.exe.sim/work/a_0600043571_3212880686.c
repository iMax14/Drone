/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Maxime/Documents/Drone/FPGA/Motor_control_FPGA/Decode_SPIpacket.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );


static void work_a_0600043571_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    int t15;
    int t16;
    char *t17;
    int t18;
    char *t19;
    char *t20;
    int t21;
    char *t22;
    char *t23;
    int t24;
    char *t25;
    char *t26;
    int t27;
    char *t28;
    char *t29;
    int t30;
    char *t31;
    char *t32;
    int t33;
    char *t34;
    char *t35;
    int t36;
    char *t37;
    char *t38;
    int t39;
    char *t40;
    char *t41;
    int t42;
    char *t43;
    char *t44;
    int t45;
    char *t46;
    char *t47;
    int t48;
    char *t49;
    char *t50;
    int t51;
    char *t52;
    char *t53;
    int t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned char t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned char t67;
    unsigned char t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned char t72;
    unsigned char t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned char t77;
    unsigned char t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned char t82;
    unsigned char t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned char t87;
    unsigned char t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned char t92;
    unsigned char t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned char t97;
    unsigned char t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned char t102;
    unsigned char t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned char t107;
    unsigned char t108;
    unsigned char t109;
    unsigned char t110;
    unsigned char t111;
    char *t112;
    char *t114;
    char *t115;
    char *t116;
    char *t117;
    char *t118;

LAB0:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 5248);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 9482);
    t6 = (t0 + 5360);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 3U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 9485);
    t5 = (t0 + 5424);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 11U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1352U);
    t5 = *((char **)t2);
    t11 = (15 - 15);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t2 = (t5 + t14);
    t4 = *((unsigned char *)t2);
    t6 = (t0 + 5488);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t4;
    xsi_driver_first_trans_delta(t6, 0U, 1, 0LL);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t11 = (14 - 15);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 5488);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_delta(t5, 1U, 1, 0LL);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t11 = (13 - 15);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 5488);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_delta(t5, 2U, 1, 0LL);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t11 = (12 - 15);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 5488);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_delta(t5, 3U, 1, 0LL);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t11 = (11 - 15);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 5552);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_delta(t5, 0U, 1, 0LL);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t11 = (10 - 15);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 5552);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_delta(t5, 1U, 1, 0LL);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t11 = (9 - 15);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 5552);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_delta(t5, 2U, 1, 0LL);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t11 = (8 - 15);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 5552);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_delta(t5, 3U, 1, 0LL);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t11 = (7 - 15);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 5616);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_delta(t5, 0U, 1, 0LL);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t11 = (6 - 15);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 5616);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_delta(t5, 1U, 1, 0LL);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t11 = (5 - 15);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 5616);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_delta(t5, 2U, 1, 0LL);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t11 = (4 - 15);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 5616);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_delta(t5, 3U, 1, 0LL);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t11 = (3 - 15);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 5616);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_delta(t5, 4U, 1, 0LL);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t11 = (2 - 15);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 5616);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_delta(t5, 5U, 1, 0LL);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t11 = (1 - 15);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 5616);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_delta(t5, 6U, 1, 0LL);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t11 = (0 - 15);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 5680);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 9496);
    t11 = xsi_mem_cmp(t1, t2, 4U);
    if (t11 == 1)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 5744);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);

LAB7:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 9500);
    t11 = xsi_mem_cmp(t1, t2, 4U);
    if (t11 == 1)
        goto LAB13;

LAB30:    t6 = (t0 + 9504);
    t15 = xsi_mem_cmp(t6, t2, 4U);
    if (t15 == 1)
        goto LAB14;

LAB31:    t8 = (t0 + 9508);
    t16 = xsi_mem_cmp(t8, t2, 4U);
    if (t16 == 1)
        goto LAB15;

LAB32:    t10 = (t0 + 9512);
    t18 = xsi_mem_cmp(t10, t2, 4U);
    if (t18 == 1)
        goto LAB16;

LAB33:    t19 = (t0 + 9516);
    t21 = xsi_mem_cmp(t19, t2, 4U);
    if (t21 == 1)
        goto LAB17;

LAB34:    t22 = (t0 + 9520);
    t24 = xsi_mem_cmp(t22, t2, 4U);
    if (t24 == 1)
        goto LAB18;

LAB35:    t25 = (t0 + 9524);
    t27 = xsi_mem_cmp(t25, t2, 4U);
    if (t27 == 1)
        goto LAB19;

LAB36:    t28 = (t0 + 9528);
    t30 = xsi_mem_cmp(t28, t2, 4U);
    if (t30 == 1)
        goto LAB20;

LAB37:    t31 = (t0 + 9532);
    t33 = xsi_mem_cmp(t31, t2, 4U);
    if (t33 == 1)
        goto LAB21;

LAB38:    t34 = (t0 + 9536);
    t36 = xsi_mem_cmp(t34, t2, 4U);
    if (t36 == 1)
        goto LAB22;

LAB39:    t37 = (t0 + 9540);
    t39 = xsi_mem_cmp(t37, t2, 4U);
    if (t39 == 1)
        goto LAB23;

LAB40:    t40 = (t0 + 9544);
    t42 = xsi_mem_cmp(t40, t2, 4U);
    if (t42 == 1)
        goto LAB24;

LAB41:    t43 = (t0 + 9548);
    t45 = xsi_mem_cmp(t43, t2, 4U);
    if (t45 == 1)
        goto LAB25;

LAB42:    t46 = (t0 + 9552);
    t48 = xsi_mem_cmp(t46, t2, 4U);
    if (t48 == 1)
        goto LAB26;

LAB43:    t49 = (t0 + 9556);
    t51 = xsi_mem_cmp(t49, t2, 4U);
    if (t51 == 1)
        goto LAB27;

LAB44:    t52 = (t0 + 9560);
    t54 = xsi_mem_cmp(t52, t2, 4U);
    if (t54 == 1)
        goto LAB28;

LAB45:
LAB29:    xsi_set_current_line(104, ng0);
    t1 = (t0 + 5808);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);

LAB12:    xsi_set_current_line(108, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t11 = (3 - 3);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 2152U);
    t6 = *((char **)t5);
    t15 = (2 - 3);
    t60 = (t15 * -1);
    t61 = (1U * t60);
    t62 = (0 + t61);
    t5 = (t6 + t62);
    t4 = *((unsigned char *)t5);
    t63 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t3, t4);
    t7 = (t0 + 2152U);
    t8 = *((char **)t7);
    t16 = (1 - 3);
    t64 = (t16 * -1);
    t65 = (1U * t64);
    t66 = (0 + t65);
    t7 = (t8 + t66);
    t67 = *((unsigned char *)t7);
    t68 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t63, t67);
    t9 = (t0 + 2152U);
    t10 = *((char **)t9);
    t18 = (0 - 3);
    t69 = (t18 * -1);
    t70 = (1U * t69);
    t71 = (0 + t70);
    t9 = (t10 + t71);
    t72 = *((unsigned char *)t9);
    t73 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t68, t72);
    t17 = (t0 + 2472U);
    t19 = *((char **)t17);
    t21 = (6 - 6);
    t74 = (t21 * -1);
    t75 = (1U * t74);
    t76 = (0 + t75);
    t17 = (t19 + t76);
    t77 = *((unsigned char *)t17);
    t78 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t73, t77);
    t20 = (t0 + 2472U);
    t22 = *((char **)t20);
    t24 = (5 - 6);
    t79 = (t24 * -1);
    t80 = (1U * t79);
    t81 = (0 + t80);
    t20 = (t22 + t81);
    t82 = *((unsigned char *)t20);
    t83 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t78, t82);
    t23 = (t0 + 2472U);
    t25 = *((char **)t23);
    t27 = (4 - 6);
    t84 = (t27 * -1);
    t85 = (1U * t84);
    t86 = (0 + t85);
    t23 = (t25 + t86);
    t87 = *((unsigned char *)t23);
    t88 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t83, t87);
    t26 = (t0 + 2472U);
    t28 = *((char **)t26);
    t30 = (3 - 6);
    t89 = (t30 * -1);
    t90 = (1U * t89);
    t91 = (0 + t90);
    t26 = (t28 + t91);
    t92 = *((unsigned char *)t26);
    t93 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t88, t92);
    t29 = (t0 + 2472U);
    t31 = *((char **)t29);
    t33 = (2 - 6);
    t94 = (t33 * -1);
    t95 = (1U * t94);
    t96 = (0 + t95);
    t29 = (t31 + t96);
    t97 = *((unsigned char *)t29);
    t98 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t93, t97);
    t32 = (t0 + 2472U);
    t34 = *((char **)t32);
    t36 = (1 - 6);
    t99 = (t36 * -1);
    t100 = (1U * t99);
    t101 = (0 + t100);
    t32 = (t34 + t101);
    t102 = *((unsigned char *)t32);
    t103 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t98, t102);
    t35 = (t0 + 2472U);
    t37 = *((char **)t35);
    t39 = (0 - 6);
    t104 = (t39 * -1);
    t105 = (1U * t104);
    t106 = (0 + t105);
    t35 = (t37 + t106);
    t107 = *((unsigned char *)t35);
    t108 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t103, t107);
    t38 = (t0 + 2632U);
    t40 = *((char **)t38);
    t109 = *((unsigned char *)t40);
    t110 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t108, t109);
    t111 = (t110 == (unsigned char)2);
    if (t111 != 0)
        goto LAB47;

LAB49:    xsi_set_current_line(111, ng0);
    t1 = (t0 + 5872);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);

LAB48:    xsi_set_current_line(114, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5936);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    xsi_set_current_line(115, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5936);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_delta(t1, 1U, 1, 0LL);
    xsi_set_current_line(116, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5936);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_delta(t1, 2U, 1, 0LL);
    xsi_set_current_line(118, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 9564);
    t3 = 1;
    if (3U == 3U)
        goto LAB53;

LAB54:    t3 = 0;

LAB55:    if (t3 != 0)
        goto LAB50;

LAB52:    xsi_set_current_line(140, ng0);
    t1 = (t0 + 9682);
    t5 = (t0 + 5360);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(141, ng0);
    t1 = (t0 + 9685);
    t5 = (t0 + 5424);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 11U);
    xsi_driver_first_trans_fast(t5);

LAB51:    goto LAB3;

LAB8:    xsi_set_current_line(83, ng0);
    t6 = (t0 + 5744);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t6);
    goto LAB7;

LAB11:;
LAB13:    xsi_set_current_line(88, ng0);
    t55 = (t0 + 5808);
    t56 = (t55 + 56U);
    t57 = *((char **)t56);
    t58 = (t57 + 56U);
    t59 = *((char **)t58);
    *((unsigned char *)t59) = (unsigned char)3;
    xsi_driver_first_trans_fast(t55);
    goto LAB12;

LAB14:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 5808);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB12;

LAB15:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 5808);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB12;

LAB16:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 5808);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB12;

LAB17:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 5808);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB12;

LAB18:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 5808);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB12;

LAB19:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 5808);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB12;

LAB20:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 5808);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB12;

LAB21:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 5808);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB12;

LAB22:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 5808);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB12;

LAB23:    xsi_set_current_line(98, ng0);
    t1 = (t0 + 5808);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB12;

LAB24:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 5808);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB12;

LAB25:    xsi_set_current_line(100, ng0);
    t1 = (t0 + 5808);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB12;

LAB26:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 5808);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB12;

LAB27:    xsi_set_current_line(102, ng0);
    t1 = (t0 + 5808);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB12;

LAB28:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 5808);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB12;

LAB46:;
LAB47:    xsi_set_current_line(109, ng0);
    t38 = (t0 + 5872);
    t41 = (t38 + 56U);
    t43 = *((char **)t41);
    t44 = (t43 + 56U);
    t46 = *((char **)t44);
    *((unsigned char *)t46) = (unsigned char)2;
    xsi_driver_first_trans_fast(t38);
    goto LAB48;

LAB50:    xsi_set_current_line(119, ng0);
    t8 = (t0 + 2152U);
    t9 = *((char **)t8);
    t8 = (t0 + 9567);
    t11 = xsi_mem_cmp(t8, t9, 4U);
    if (t11 == 1)
        goto LAB60;

LAB77:    t17 = (t0 + 9571);
    t15 = xsi_mem_cmp(t17, t9, 4U);
    if (t15 == 1)
        goto LAB61;

LAB78:    t20 = (t0 + 9575);
    t16 = xsi_mem_cmp(t20, t9, 4U);
    if (t16 == 1)
        goto LAB62;

LAB79:    t23 = (t0 + 9579);
    t18 = xsi_mem_cmp(t23, t9, 4U);
    if (t18 == 1)
        goto LAB63;

LAB80:    t26 = (t0 + 9583);
    t21 = xsi_mem_cmp(t26, t9, 4U);
    if (t21 == 1)
        goto LAB64;

LAB81:    t29 = (t0 + 9587);
    t24 = xsi_mem_cmp(t29, t9, 4U);
    if (t24 == 1)
        goto LAB65;

LAB82:    t32 = (t0 + 9591);
    t27 = xsi_mem_cmp(t32, t9, 4U);
    if (t27 == 1)
        goto LAB66;

LAB83:    t35 = (t0 + 9595);
    t30 = xsi_mem_cmp(t35, t9, 4U);
    if (t30 == 1)
        goto LAB67;

LAB84:    t38 = (t0 + 9599);
    t33 = xsi_mem_cmp(t38, t9, 4U);
    if (t33 == 1)
        goto LAB68;

LAB85:    t41 = (t0 + 9603);
    t36 = xsi_mem_cmp(t41, t9, 4U);
    if (t36 == 1)
        goto LAB69;

LAB86:    t44 = (t0 + 9607);
    t39 = xsi_mem_cmp(t44, t9, 4U);
    if (t39 == 1)
        goto LAB70;

LAB87:    t47 = (t0 + 9611);
    t42 = xsi_mem_cmp(t47, t9, 4U);
    if (t42 == 1)
        goto LAB71;

LAB88:    t50 = (t0 + 9615);
    t45 = xsi_mem_cmp(t50, t9, 4U);
    if (t45 == 1)
        goto LAB72;

LAB89:    t53 = (t0 + 9619);
    t48 = xsi_mem_cmp(t53, t9, 4U);
    if (t48 == 1)
        goto LAB73;

LAB90:    t56 = (t0 + 9623);
    t51 = xsi_mem_cmp(t56, t9, 4U);
    if (t51 == 1)
        goto LAB74;

LAB91:    t58 = (t0 + 9627);
    t54 = xsi_mem_cmp(t58, t9, 4U);
    if (t54 == 1)
        goto LAB75;

LAB92:
LAB76:    xsi_set_current_line(136, ng0);
    t1 = (t0 + 9679);
    t5 = (t0 + 5360);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);

LAB59:    xsi_set_current_line(138, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5424);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_delta(t1, 4U, 7U, 0LL);
    goto LAB51;

LAB53:    t12 = 0;

LAB56:    if (t12 < 3U)
        goto LAB57;
    else
        goto LAB55;

LAB57:    t6 = (t2 + t12);
    t7 = (t1 + t12);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB54;

LAB58:    t12 = (t12 + 1);
    goto LAB56;

LAB60:    xsi_set_current_line(120, ng0);
    t112 = (t0 + 9631);
    t114 = (t0 + 5360);
    t115 = (t114 + 56U);
    t116 = *((char **)t115);
    t117 = (t116 + 56U);
    t118 = *((char **)t117);
    memcpy(t118, t112, 3U);
    xsi_driver_first_trans_fast(t114);
    goto LAB59;

LAB61:    xsi_set_current_line(121, ng0);
    t1 = (t0 + 9634);
    t5 = (t0 + 5360);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB59;

LAB62:    xsi_set_current_line(122, ng0);
    t1 = (t0 + 9637);
    t5 = (t0 + 5360);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB59;

LAB63:    xsi_set_current_line(123, ng0);
    t1 = (t0 + 9640);
    t5 = (t0 + 5360);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB59;

LAB64:    xsi_set_current_line(124, ng0);
    t1 = (t0 + 9643);
    t5 = (t0 + 5360);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB59;

LAB65:    xsi_set_current_line(125, ng0);
    t1 = (t0 + 9646);
    t5 = (t0 + 5360);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB59;

LAB66:    xsi_set_current_line(126, ng0);
    t1 = (t0 + 9649);
    t5 = (t0 + 5360);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB59;

LAB67:    xsi_set_current_line(127, ng0);
    t1 = (t0 + 9652);
    t5 = (t0 + 5360);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB59;

LAB68:    xsi_set_current_line(128, ng0);
    t1 = (t0 + 9655);
    t5 = (t0 + 5360);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB59;

LAB69:    xsi_set_current_line(129, ng0);
    t1 = (t0 + 9658);
    t5 = (t0 + 5360);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB59;

LAB70:    xsi_set_current_line(130, ng0);
    t1 = (t0 + 9661);
    t5 = (t0 + 5360);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB59;

LAB71:    xsi_set_current_line(131, ng0);
    t1 = (t0 + 9664);
    t5 = (t0 + 5360);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB59;

LAB72:    xsi_set_current_line(132, ng0);
    t1 = (t0 + 9667);
    t5 = (t0 + 5360);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB59;

LAB73:    xsi_set_current_line(133, ng0);
    t1 = (t0 + 9670);
    t5 = (t0 + 5360);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB59;

LAB74:    xsi_set_current_line(134, ng0);
    t1 = (t0 + 9673);
    t5 = (t0 + 5360);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB59;

LAB75:    xsi_set_current_line(135, ng0);
    t1 = (t0 + 9676);
    t5 = (t0 + 5360);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB59;

LAB93:;
}

static void work_a_0600043571_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(146, ng0);

LAB3:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t1 = (t0 + 6000);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 11U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5264);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0600043571_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(147, ng0);

LAB3:    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t1 = (t0 + 6064);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 3U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5280);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0600043571_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0600043571_3212880686_p_0,(void *)work_a_0600043571_3212880686_p_1,(void *)work_a_0600043571_3212880686_p_2};
	xsi_register_didat("work_a_0600043571_3212880686", "isim/Decode_SPIpacket_tb_isim_beh.exe.sim/work/a_0600043571_3212880686.didat");
	xsi_register_executes(pe);
}
