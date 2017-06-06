--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : ISE
--  /   /         Filename : SSD_test.vhw
-- /___/   /\     Timestamp : Mon Jun  5 22:16:22 2017
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: SSD_test
--Device: Xilinx
--

library UNISIM;
use UNISIM.Vcomponents.ALL;
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE STD.TEXTIO.ALL;

ENTITY SSD_test IS
END SSD_test;

ARCHITECTURE testbench_arch OF SSD_test IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT SSD
        PORT (
            B0 : In std_logic;
            B1 : In std_logic;
            B2 : In std_logic;
            B3 : In std_logic;
            AN0 : Out std_logic;
            AN1 : Out std_logic;
            AN2 : Out std_logic;
            AN3 : Out std_logic;
            CA : Out std_logic;
            CB : Out std_logic;
            CC : Out std_logic;
            CD : Out std_logic;
            CE : Out std_logic;
            CF : Out std_logic;
            CG : Out std_logic
        );
    END COMPONENT;

    SIGNAL B0 : std_logic := '0';
    SIGNAL B1 : std_logic := '0';
    SIGNAL B2 : std_logic := '0';
    SIGNAL B3 : std_logic := '0';
    SIGNAL AN0 : std_logic := '0';
    SIGNAL AN1 : std_logic := '0';
    SIGNAL AN2 : std_logic := '0';
    SIGNAL AN3 : std_logic := '0';
    SIGNAL CA : std_logic := '0';
    SIGNAL CB : std_logic := '0';
    SIGNAL CC : std_logic := '0';
    SIGNAL CD : std_logic := '0';
    SIGNAL CE : std_logic := '0';
    SIGNAL CF : std_logic := '0';
    SIGNAL CG : std_logic := '0';

    BEGIN
        UUT : SSD
        PORT MAP (
            B0 => B0,
            B1 => B1,
            B2 => B2,
            B3 => B3,
            AN0 => AN0,
            AN1 => AN1,
            AN2 => AN2,
            AN3 => AN3,
            CA => CA,
            CB => CB,
            CC => CC,
            CD => CD,
            CE => CE,
            CF => CF,
            CG => CG
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  51ns
                WAIT FOR 51 ns;
                B0 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  102ns
                WAIT FOR 51 ns;
                B0 <= '0';
                B1 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  153ns
                WAIT FOR 51 ns;
                B0 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  204ns
                WAIT FOR 51 ns;
                B0 <= '0';
                B1 <= '0';
                B2 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  255ns
                WAIT FOR 51 ns;
                B0 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  306ns
                WAIT FOR 51 ns;
                B0 <= '0';
                B1 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  357ns
                WAIT FOR 51 ns;
                B0 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  408ns
                WAIT FOR 51 ns;
                B0 <= '0';
                B1 <= '0';
                B2 <= '0';
                B3 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  459ns
                WAIT FOR 51 ns;
                B0 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  510ns
                WAIT FOR 51 ns;
                B0 <= '0';
                B3 <= '0';
                -- -------------------------------------
                WAIT FOR 490 ns;

            END PROCESS;

    END testbench_arch;

