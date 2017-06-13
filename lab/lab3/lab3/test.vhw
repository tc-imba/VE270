--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : ISE
--  /   /         Filename : test.vhw
-- /___/   /\     Timestamp : Tue Jun 13 19:05:06 2017
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: test
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

ENTITY test IS
END test;

ARCHITECTURE testbench_arch OF test IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT ALU
        PORT (
            A0 : In std_logic;
            A1 : In std_logic;
            A2 : In std_logic;
            A3 : In std_logic;
            B0 : In std_logic;
            B1 : In std_logic;
            B2 : In std_logic;
            B3 : In std_logic;
            S0 : In std_logic;
            S1 : In std_logic;
            Cout : Out std_logic;
            C0 : Out std_logic;
            C1 : Out std_logic;
            C2 : Out std_logic;
            C3 : Out std_logic
        );
    END COMPONENT;

    SIGNAL A0 : std_logic := '0';
    SIGNAL A1 : std_logic := '0';
    SIGNAL A2 : std_logic := '1';
    SIGNAL A3 : std_logic := '1';
    SIGNAL B0 : std_logic := '0';
    SIGNAL B1 : std_logic := '1';
    SIGNAL B2 : std_logic := '1';
    SIGNAL B3 : std_logic := '1';
    SIGNAL S0 : std_logic := '0';
    SIGNAL S1 : std_logic := '0';
    SIGNAL Cout : std_logic := '0';
    SIGNAL C0 : std_logic := '0';
    SIGNAL C1 : std_logic := '0';
    SIGNAL C2 : std_logic := '0';
    SIGNAL C3 : std_logic := '0';

    BEGIN
        UUT : ALU
        PORT MAP (
            A0 => A0,
            A1 => A1,
            A2 => A2,
            A3 => A3,
            B0 => B0,
            B1 => B1,
            B2 => B2,
            B3 => B3,
            S0 => S0,
            S1 => S1,
            Cout => Cout,
            C0 => C0,
            C1 => C1,
            C2 => C2,
            C3 => C3
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  51ns
                WAIT FOR 51 ns;
                S0 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  102ns
                WAIT FOR 51 ns;
                S0 <= '0';
                S1 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  153ns
                WAIT FOR 51 ns;
                S0 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  204ns
                WAIT FOR 51 ns;
                S0 <= '0';
                S1 <= '0';
                -- -------------------------------------
                WAIT FOR 796 ns;

            END PROCESS;

    END testbench_arch;

