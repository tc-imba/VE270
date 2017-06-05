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


static void unisim_a_2211953871_3811244703_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:
LAB3:    t1 = (t0 + 1136U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = p_2592010699_sub_374109322130769762_2592010699(IEEE_P_2592010699, t3);
    t1 = (t0 + 1296U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = p_2592010699_sub_3488768496604610246_2592010699(IEEE_P_2592010699, t4, t6);
    t1 = (t0 + 1456U);
    t8 = *((char **)t1);
    t9 = *((unsigned char *)t8);
    t10 = p_2592010699_sub_3488768496604610246_2592010699(IEEE_P_2592010699, t7, t9);
    t1 = (t0 + 1616U);
    t11 = *((char **)t1);
    t12 = *((unsigned char *)t11);
    t13 = p_2592010699_sub_3488768496604610246_2592010699(IEEE_P_2592010699, t10, t12);
    t1 = (t0 + 3056);
    t14 = (t1 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = t13;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t18 = (t0 + 2976);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void unisim_a_2211953871_3811244703_init()
{
	static char *pe[] = {(void *)unisim_a_2211953871_3811244703_p_0};
	xsi_register_didat("unisim_a_2211953871_3811244703", "isim/_tmp/unisim/a_2211953871_3811244703.didat");
	xsi_register_executes(pe);
}
