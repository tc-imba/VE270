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

unsigned char p_2592010699_sub_1605435078_2592010699(char *, unsigned char , unsigned char );
unsigned char p_2592010699_sub_1690584930_2592010699(char *, unsigned char );


static void unisim_a_3126493194_3781969094_p_0(char *t0)
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
    char *t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:
LAB3:    t1 = (t0 + 724U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = p_2592010699_sub_1690584930_2592010699(IEEE_P_2592010699, t3);
    t1 = (t0 + 636U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = p_2592010699_sub_1690584930_2592010699(IEEE_P_2592010699, t6);
    t8 = p_2592010699_sub_1605435078_2592010699(IEEE_P_2592010699, t4, t7);
    t1 = (t0 + 812U);
    t9 = *((char **)t1);
    t10 = *((unsigned char *)t9);
    t11 = p_2592010699_sub_1605435078_2592010699(IEEE_P_2592010699, t8, t10);
    t1 = (t0 + 900U);
    t12 = *((char **)t1);
    t13 = *((unsigned char *)t12);
    t14 = p_2592010699_sub_1605435078_2592010699(IEEE_P_2592010699, t11, t13);
    t1 = (t0 + 1732);
    t15 = (t1 + 32U);
    t16 = *((char **)t15);
    t17 = (t16 + 40U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = t14;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t19 = (t0 + 1688);
    *((int *)t19) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void unisim_a_3126493194_3781969094_init()
{
	static char *pe[] = {(void *)unisim_a_3126493194_3781969094_p_0};
	xsi_register_didat("unisim_a_3126493194_3781969094", "isim/_tmp/unisim/a_3126493194_3781969094.didat");
	xsi_register_executes(pe);
}
