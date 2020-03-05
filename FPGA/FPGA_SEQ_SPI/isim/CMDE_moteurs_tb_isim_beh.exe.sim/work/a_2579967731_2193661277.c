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
static const char *ng0 = "C:/ise/ise_last/spi.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2579967731_2193661277_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    int t11;
    unsigned char t12;
    char *t13;
    unsigned char t14;
    char *t15;
    int t16;
    int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4272);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(44, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB14;

LAB16:
LAB15:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB17;

LAB19:
LAB18:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t1 = (t0 + 4544);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t10 = (t7 + 56U);
    t13 = *((char **)t10);
    memcpy(t13, t3, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 1192U);
    t7 = *((char **)t3);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    if (t9 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(50, ng0);
    t3 = (t0 + 2312U);
    t10 = *((char **)t3);
    t11 = *((int *)t10);
    t12 = (t11 > 0);
    if (t12 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 4416);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t10 = *((char **)t7);
    *((int *)t10) = 16;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t1 = (t0 + 4480);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t10 = (t7 + 56U);
    t13 = *((char **)t10);
    memcpy(t13, t3, 16U);
    xsi_driver_first_trans_fast(t1);

LAB12:    goto LAB9;

LAB11:    xsi_set_current_line(52, ng0);
    t3 = (t0 + 1512U);
    t13 = *((char **)t3);
    t14 = *((unsigned char *)t13);
    t3 = (t0 + 2312U);
    t15 = *((char **)t3);
    t16 = *((int *)t15);
    t17 = (t16 - 1);
    t18 = (t17 - 15);
    t19 = (t18 * -1);
    t20 = (1 * t19);
    t21 = (0U + t20);
    t3 = (t0 + 4352);
    t22 = (t3 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    *((unsigned char *)t25) = t14;
    xsi_driver_first_trans_delta(t3, t21, 1, 0LL);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t11 = *((int *)t3);
    t16 = (t11 - 1);
    t1 = (t0 + 4416);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t10 = (t7 + 56U);
    t13 = *((char **)t10);
    *((int *)t13) = t16;
    xsi_driver_first_trans_fast(t1);
    goto LAB12;

LAB14:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 6410);
    t7 = (t0 + 4544);
    t10 = (t7 + 56U);
    t13 = *((char **)t10);
    t15 = (t13 + 56U);
    t22 = *((char **)t15);
    memcpy(t22, t1, 16U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB15;

LAB17:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 2152U);
    t4 = *((char **)t1);
    t1 = (t0 + 4480);
    t7 = (t1 + 56U);
    t10 = *((char **)t7);
    t13 = (t10 + 56U);
    t15 = *((char **)t13);
    memcpy(t15, t4, 16U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 4416);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t10 = *((char **)t7);
    *((int *)t10) = 16;
    xsi_driver_first_trans_fast(t1);
    goto LAB18;

}


extern void work_a_2579967731_2193661277_init()
{
	static char *pe[] = {(void *)work_a_2579967731_2193661277_p_0};
	xsi_register_didat("work_a_2579967731_2193661277", "isim/CMDE_moteurs_tb_isim_beh.exe.sim/work/a_2579967731_2193661277.didat");
	xsi_register_executes(pe);
}
