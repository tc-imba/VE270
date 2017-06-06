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

/* This file is designed for use with ISim build 0x734844ce */

#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
extern char *IEEE_P_2592010699;

unsigned char p_2592010699_sub_2545490612_2592010699(char *, unsigned char , unsigned char );


static void unisim_a_4147737283_2967259552_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:
LAB3:    t1 = (t0 + 636U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 724U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = p_2592010699_sub_2545490612_2592010699(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 812U);
    t7 = *((char **)t1);
    t8 = *((unsigned char *)t7);
    t9 = p_2592010699_sub_2545490612_2592010699(IEEE_P_2592010699, t6, t8);
    t1 = (t0 + 1644);
    t10 = (t1 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t9;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t14 = (t0 + 1600);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void unisim_a_4147737283_2967259552_init()
{
	static char *pe[] = {(void *)unisim_a_4147737283_2967259552_p_0};
	xsi_register_didat("unisim_a_4147737283_2967259552", "isim/_tmp/unisim/a_4147737283_2967259552.didat");
	xsi_register_executes(pe);
}
