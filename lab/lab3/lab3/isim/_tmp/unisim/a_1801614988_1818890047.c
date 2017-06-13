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


static void unisim_a_1801614988_1818890047_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:
LAB3:    t1 = (t0 + 1136U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = p_2592010699_sub_374109322130769762_2592010699(IEEE_P_2592010699, t3);
    t1 = (t0 + 1296U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = p_2592010699_sub_3488768496604610246_2592010699(IEEE_P_2592010699, t4, t6);
    t1 = (t0 + 2736);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t7;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t12 = (t0 + 2656);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void unisim_a_1801614988_1818890047_init()
{
	static char *pe[] = {(void *)unisim_a_1801614988_1818890047_p_0};
	xsi_register_didat("unisim_a_1801614988_1818890047", "isim/_tmp/unisim/a_1801614988_1818890047.didat");
	xsi_register_executes(pe);
}
