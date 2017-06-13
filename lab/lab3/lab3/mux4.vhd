--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : mux4.vhf
-- /___/   /\     Timestamp : 06/13/2017 20:19:11
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family spartan3e -flat -suppress -w C:/Users/MSY/Documents/VE270/lab/lab3/lab3/mux4.sch mux4.vhf
--Design Name: mux4
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity mux4 is
   port ( A0 : in    std_logic; 
          A1 : in    std_logic; 
          A2 : in    std_logic; 
          A3 : in    std_logic; 
          B0 : in    std_logic; 
          B1 : in    std_logic; 
          B2 : in    std_logic; 
          B3 : in    std_logic; 
          S0 : in    std_logic; 
          C0 : out   std_logic; 
          C1 : out   std_logic; 
          C2 : out   std_logic; 
          C3 : out   std_logic);
end mux4;

architecture BEHAVIORAL of mux4 is
   component mux2
      port ( C  : out   std_logic; 
             D0 : in    std_logic; 
             D1 : in    std_logic; 
             S  : in    std_logic);
   end component;
   
begin
   XLXI_13 : mux2
      port map (D0=>A0,
                D1=>B0,
                S=>S0,
                C=>C0);
   
   XLXI_14 : mux2
      port map (D0=>A1,
                D1=>B1,
                S=>S0,
                C=>C1);
   
   XLXI_15 : mux2
      port map (D0=>A2,
                D1=>B2,
                S=>S0,
                C=>C2);
   
   XLXI_16 : mux2
      port map (D0=>A3,
                D1=>B3,
                S=>S0,
                C=>C3);
   
end BEHAVIORAL;


