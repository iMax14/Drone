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
static const char *ng0 = "C:/Users/Maxime/Desktop/Projet_drone/FPGA/Motor_control_FPGA/PWM_config_duty.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0442416253_3212880686_p_0(char *t0)
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
    int t16;
    char *t17;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3400);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 5712);
    t13 = xsi_mem_cmp(t1, t3, 4U);
    if (t13 == 1)
        goto LAB9;

LAB14:    t7 = (t0 + 5716);
    t14 = xsi_mem_cmp(t7, t3, 4U);
    if (t14 == 1)
        goto LAB10;

LAB15:    t9 = (t0 + 5720);
    t15 = xsi_mem_cmp(t9, t3, 4U);
    if (t15 == 1)
        goto LAB11;

LAB16:    t11 = (t0 + 5724);
    t16 = xsi_mem_cmp(t11, t3, 4U);
    if (t16 == 1)
        goto LAB12;

LAB17:
LAB13:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 5772);
    t4 = (t0 + 3496);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 11U);
    xsi_driver_first_trans_fast(t4);

LAB8:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 5701);
    t8 = (t0 + 3496);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 11U);
    xsi_driver_first_trans_fast(t8);
    goto LAB6;

LAB9:    xsi_set_current_line(51, ng0);
    t17 = (t0 + 5728);
    t19 = (t0 + 3496);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t17, 11U);
    xsi_driver_first_trans_fast(t19);
    goto LAB8;

LAB10:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 5739);
    t4 = (t0 + 3496);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 11U);
    xsi_driver_first_trans_fast(t4);
    goto LAB8;

LAB11:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 5750);
    t4 = (t0 + 3496);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 11U);
    xsi_driver_first_trans_fast(t4);
    goto LAB8;

LAB12:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 5761);
    t4 = (t0 + 3496);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 11U);
    xsi_driver_first_trans_fast(t4);
    goto LAB8;

LAB18:;
}

static void work_a_0442416253_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(61, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3560);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 11U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3416);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0442416253_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0442416253_3212880686_p_0,(void *)work_a_0442416253_3212880686_p_1};
	xsi_register_didat("work_a_0442416253_3212880686", "isim/CMD_motors_tb_isim_beh.exe.sim/work/a_0442416253_3212880686.didat");
	xsi_register_executes(pe);
}
