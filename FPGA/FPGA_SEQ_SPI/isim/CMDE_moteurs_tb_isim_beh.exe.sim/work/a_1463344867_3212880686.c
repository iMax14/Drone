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
static const char *ng0 = "C:/ise/ise_last/mux_freq.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1463344867_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    int t13;
    int t14;
    int t15;
    int t17;
    char *t18;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(21, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2992);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(22, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)2);
    if (t5 != 0)
        goto LAB8;

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(23, ng0);
    t3 = (t0 + 4636);
    t8 = (t0 + 3072);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 6U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB6;

LAB8:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 1352U);
    t4 = *((char **)t1);
    t1 = (t0 + 4642);
    t13 = xsi_mem_cmp(t1, t4, 2U);
    if (t13 == 1)
        goto LAB11;

LAB16:    t8 = (t0 + 4644);
    t14 = xsi_mem_cmp(t8, t4, 2U);
    if (t14 == 1)
        goto LAB12;

LAB17:    t10 = (t0 + 4646);
    t15 = xsi_mem_cmp(t10, t4, 2U);
    if (t15 == 1)
        goto LAB13;

LAB18:    t12 = (t0 + 4648);
    t17 = xsi_mem_cmp(t12, t4, 2U);
    if (t17 == 1)
        goto LAB14;

LAB19:
LAB15:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 4674);
    t4 = (t0 + 3072);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 6U);
    xsi_driver_first_trans_fast_port(t4);

LAB10:    goto LAB6;

LAB11:    xsi_set_current_line(26, ng0);
    t18 = (t0 + 4650);
    t20 = (t0 + 3072);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t18, 6U);
    xsi_driver_first_trans_fast_port(t20);
    goto LAB10;

LAB12:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 4656);
    t4 = (t0 + 3072);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 6U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB10;

LAB13:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 4662);
    t4 = (t0 + 3072);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 6U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB10;

LAB14:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 4668);
    t4 = (t0 + 3072);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 6U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB10;

LAB20:;
}


extern void work_a_1463344867_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1463344867_3212880686_p_0};
	xsi_register_didat("work_a_1463344867_3212880686", "isim/CMDE_moteurs_tb_isim_beh.exe.sim/work/a_1463344867_3212880686.didat");
	xsi_register_executes(pe);
}
