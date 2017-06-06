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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;
char *UNISIM_P_0947159679;
char *IEEE_P_3564397177;
char *STD_TEXTIO;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;

int isim_run(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    std_textio_init();
    ieee_p_3564397177_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    unisim_p_0947159679_init();
    unisim_a_2904659017_3769511665_init();
    work_a_3047165701_3212880686_init();
    work_a_4281813578_3212880686_init();
    unisim_a_3762448000_2971575191_init();
    work_a_0423999902_3212880686_init();
    unisim_a_3126493194_3781969094_init();
    work_a_3897318921_3212880686_init();
    work_a_3519111884_3212880686_init();
    work_a_0550012251_3212880686_init();
    work_a_2351772608_3212880686_init();
    work_a_0934514968_3212880686_init();
    unisim_a_2211953871_3811244703_init();
    work_a_3334108815_3212880686_init();
    unisim_a_4147737283_2967259552_init();
    work_a_1406336209_3212880686_init();
    unisim_a_3376478592_3856742516_init();
    work_a_2732268358_3212880686_init();
    work_a_0419674462_3212880686_init();
    unisim_a_1947232985_2580864354_init();
    work_a_1151985810_3212880686_init();
    work_a_2606114691_3212880686_init();
    unisim_a_2472025866_3046367013_init();
    work_a_2099565655_3212880686_init();
    work_a_1784659988_3212880686_init();
    unisim_a_2562466605_1496654361_init();
    unisim_a_1717296735_4086321779_init();
    work_a_2854511438_3212880686_init();
    work_a_4238865206_0230731466_init();


    xsi_register_tops("work_a_4238865206_0230731466");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");

    return xsi_run_simulation(argc, argv);

}
