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

#include "stdio.h"
#include "stdlib.h"
#include "dlfcn.h"

int main(int argc, char **argv)
{
    void *sim_lib;
    int (*isim_run)(int, char **);
    sim_lib = dlopen("isim/_tmp/work/test1_isim_beh.exe_lib.lin64.so", RTLD_LAZY);
    if (!sim_lib)
    {
        fprintf(stderr, "Could not open simulation library isim/_tmp/work/test1_isim_beh.exe_lib.lin64.so: %s\n", dlerror());
        return 1;
    }

    isim_run = dlsym(sim_lib, "isim_run");
    if (dlerror() != 0)
    {
        fprintf(stderr, "Could not find symbol for isim_run: %s\n", dlerror());
        return 1;
    }

    return (*isim_run)(argc, argv);
}
