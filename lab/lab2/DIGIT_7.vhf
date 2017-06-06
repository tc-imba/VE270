--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : DIGIT_7.vhf
-- /___/   /\     Timestamp : 06/06/2017 18:40:19
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family spartan3e -flat -suppress -w C:/Users/MSY/Documents/VE270/lab/lab2/DIGIT_7.sch DIGIT_7.vhf
--Design Name: DIGIT_7
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

entity DIGIT_7 is
   port ( IN0  : in    std_logic; 
          IN1  : in    std_logic; 
          IN2  : in    std_logic; 
          IN3  : in    std_logic; 
          OUT7 : out   std_logic);
end DIGIT_7;

architecture BEHAVIORAL of DIGIT_7 is
   attribute BOX_TYPE   : string ;
   component AND4B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B1 : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND4B1
      port map (I0=>IN3,
                I1=>IN2,
                I2=>IN1,
                I3=>IN0,
                O=>OUT7);
   
end BEHAVIORAL;


