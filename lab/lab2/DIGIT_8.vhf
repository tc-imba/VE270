--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : DIGIT_8.vhf
-- /___/   /\     Timestamp : 06/05/2017 22:15:07
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: /opt/Xilinx/10.1/ISE/bin/lin64/unwrapped/sch2vhdl -intstyle ise -family spartan3e -flat -suppress -w /disk/Documents/SJTU/VE270/lab/lab2/DIGIT_8.sch DIGIT_8.vhf
--Design Name: DIGIT_8
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

entity DIGIT_8 is
   port ( IN0  : in    std_logic; 
          IN1  : in    std_logic; 
          IN2  : in    std_logic; 
          IN3  : in    std_logic; 
          OUT8 : out   std_logic);
end DIGIT_8;

architecture BEHAVIORAL of DIGIT_8 is
   attribute BOX_TYPE   : string ;
   component AND4B3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B3 : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND4B3
      port map (I0=>IN2,
                I1=>IN1,
                I2=>IN0,
                I3=>IN3,
                O=>OUT8);
   
end BEHAVIORAL;


