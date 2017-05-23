--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : Circuit2.vhf
-- /___/   /\     Timestamp : 05/23/2017 19:23:11
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family spartan3e -flat -suppress -w C:/Users/MSY/Documents/VE270/lab/lab1/Circuit2.sch Circuit2.vhf
--Design Name: Circuit2
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

entity Circuit2 is
   port ( A     : in    std_logic; 
          B     : in    std_logic; 
          C     : in    std_logic; 
          Carry : out   std_logic; 
          S     : out   std_logic);
end Circuit2;

architecture BEHAVIORAL of Circuit2 is
   component Circuit1
      port ( A    : in    std_logic; 
             B    : in    std_logic; 
             Cin  : in    std_logic; 
             Cout : out   std_logic; 
             Sum  : out   std_logic);
   end component;
   
begin
   XLXI_1 : Circuit1
      port map (A=>A,
                B=>B,
                Cin=>C,
                Cout=>Carry,
                Sum=>S);
   
end BEHAVIORAL;


