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
#include "windows.h"

int main(int argc, char **argv)
{
    void *sim_lib;
    int (*isim_run)(int, char **);
    char path[32000];
    unsigned path_size;
    char *new_path;

    path_size = GetEnvironmentVariable("PATH", path, 32000);
    new_path = (char *)malloc(path_size + 27);
    memcpy(new_path, "C:/Xilinx/10.1/ISE/lib/nt;", 26);
    memcpy(new_path + 26, path, path_size + 1);
    SetEnvironmentVariable("PATH", new_path);
    free(new_path);

    sim_lib = LoadLibrary(TEXT("isim/_tmp/work/SSD_test_isim_beh.exe_lib.nt.dll"));
    if (!sim_lib)
    {
        fprintf(stderr, "Could not open simulation library isim/_tmp/work/SSD_test_isim_beh.exe_lib.nt.dll\n");
        return 1;
    }

    isim_run = (int (__cdecl *)(int, char **))GetProcAddress(sim_lib, "isim_run");
    if (!isim_run)
    {
        fprintf(stderr, "Could not find symbol for isim_run\n");
        return 1;
    }

    return (isim_run)(argc, argv);
}
