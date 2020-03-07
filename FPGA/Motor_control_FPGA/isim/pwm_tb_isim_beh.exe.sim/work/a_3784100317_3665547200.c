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
static const char *ng0 = "C:/Users/Maxime/Documents/Drone/FPGA/Motor_control_FPGA/PWM.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_3784100317_3665547200_p_0(char *t0)
{
    char t9[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t10;
    char *t11;
    char *t12;
    int t13;
    int t14;
    int t15;
    int t16;
    int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(48, ng0);
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
LAB3:    t1 = (t0 + 3952);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 4032);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 4096);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1352U);
    t5 = *((char **)t2);
    t2 = (t0 + 6640U);
    t6 = (t0 + 1672U);
    t7 = *((char **)t6);
    t6 = (t0 + 6656U);
    t8 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t9, t5, t2, t7, t6);
    t10 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t8, t9);
    t11 = (t0 + 2648U);
    t12 = *((char **)t11);
    t13 = *((int *)t12);
    t14 = (t10 * t13);
    t15 = xsi_vhdl_pow(2, 11);
    t16 = (t14 / t15);
    t17 = (t16 / 2);
    t11 = (t0 + 4160);
    t18 = (t11 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((int *)t21) = t17;
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t1 = (t0 + 2648U);
    t5 = *((char **)t1);
    t13 = *((int *)t5);
    t14 = (t13 - 1);
    t3 = (t10 == t14);
    if (t3 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t13 = (t10 + 1);
    t1 = (t0 + 4032);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t13;
    xsi_driver_first_trans_fast(t1);

LAB8:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t1 = (t0 + 1992U);
    t5 = *((char **)t1);
    t13 = *((int *)t5);
    t3 = (t10 == t13);
    if (t3 != 0)
        goto LAB10;

LAB12:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t1 = (t0 + 2648U);
    t5 = *((char **)t1);
    t13 = *((int *)t5);
    t1 = (t0 + 1992U);
    t6 = *((char **)t1);
    t14 = *((int *)t6);
    t15 = (t13 - t14);
    t3 = (t10 == t15);
    if (t3 != 0)
        goto LAB13;

LAB14:
LAB11:    goto LAB3;

LAB7:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 4032);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB10:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 4096);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB11;

LAB13:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 4096);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB11;

}


extern void work_a_3784100317_3665547200_init()
{
	static char *pe[] = {(void *)work_a_3784100317_3665547200_p_0};
	xsi_register_didat("work_a_3784100317_3665547200", "isim/pwm_tb_isim_beh.exe.sim/work/a_3784100317_3665547200.didat");
	xsi_register_executes(pe);
}
