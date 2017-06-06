/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2007 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

/* This file is designed for use with ISim build 0x5cce65a */

#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
extern char *IEEE_P_2592010699;

unsigned char p_2592010699_sub_3488768496604610246_2592010699(char *, unsigned char , unsigned char );
unsigned char p_2592010699_sub_374109322130769762_2592010699(char *, unsigned char );


static void unisim_a_3376478592_3856742516_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:
LAB3:    t1 = (t0 + 1296U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = p_2592010699_sub_374109322130769762_2592010699(IEEE_P_2592010699, t3);
    t1 = (t0 + 1136U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = p_2592010699_sub_374109322130769762_2592010699(IEEE_P_2592010699, t6);
    t8 = p_2592010699_sub_3488768496604610246_2592010699(IEEE_P_2592010699, t4, t7);
    t1 = (t0 + 1456U);
    t9 = *((char **)t1);
    t10 = *((unsigned char *)t9);
    t11 = p_2592010699_sub_374109322130769762_2592010699(IEEE_P_2592010699, t10);
    t12 = p_2592010699_sub_3488768496604610246_2592010699(IEEE_P_2592010699, t8, t11);
    t1 = (t0 + 1616U);
    t13 = *((char **)t1);
    t14 = *((unsigned char *)t13);
    t15 = p_2592010699_sub_374109322130769762_2592010699(IEEE_P_2592010699, t14);
    t16 = p_2592010699_sub_3488768496604610246_2592010699(IEEE_P_2592010699, t12, t15);
    t1 = (t0 + 3056);
    t17 = (t1 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = t16;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t21 = (t0 + 2976);
    *((int *)t21) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void unisim_a_3376478592_3856742516_init()
{
	static char *pe[] = {(void *)unisim_a_3376478592_3856742516_p_0};
	xsi_register_didat("unisim_a_3376478592_3856742516", "isim/_tmp/unisim/a_3376478592_3856742516.didat");
	xsi_register_executes(pe);
}
