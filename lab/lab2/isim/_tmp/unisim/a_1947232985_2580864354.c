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

unsigned char p_2592010699_sub_1690584930_2592010699(char *, unsigned char );
unsigned char p_2592010699_sub_2545490612_2592010699(char *, unsigned char , unsigned char );


static void unisim_a_1947232985_2580864354_p_0(char *t0)
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
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

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
    t1 = (t0 + 900U);
    t10 = *((char **)t1);
    t11 = *((unsigned char *)t10);
    t12 = p_2592010699_sub_2545490612_2592010699(IEEE_P_2592010699, t9, t11);
    t13 = p_2592010699_sub_1690584930_2592010699(IEEE_P_2592010699, t12);
    t1 = (t0 + 1732);
    t14 = (t1 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = t13;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t18 = (t0 + 1688);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void unisim_a_1947232985_2580864354_init()
{
	static char *pe[] = {(void *)unisim_a_1947232985_2580864354_p_0};
	xsi_register_didat("unisim_a_1947232985_2580864354", "isim/_tmp/unisim/a_1947232985_2580864354.didat");
	xsi_register_executes(pe);
}
