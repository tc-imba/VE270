--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : DIGIT_1.vhf
-- /___/   /\     Timestamp : 06/05/2017 21:18:56
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: /opt/Xilinx/10.1/ISE/bin/lin64/unwrapped/sch2vhdl -intstyle ise -family spartan3e -flat -suppress -w /disk/Documents/SJTU/VE270/lab/lab2/lab2/DIGIT_1.sch DIGIT_1.vhf
--Design Name: DIGIT_1
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

entity DIGIT_1 is
   port ( IN0  : in    std_logic; 
          IN1  : in    std_logic; 
          IN2  : in    std_logic; 
          IN3  : in    std_logic; 
          OUT1 : out   std_logic);
end DIGIT_1;

architecture BEHAVIORAL of DIGIT_1 is
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
   XLXI_12 : AND4B3
      port map (I0=>IN3,
                I1=>IN2,
                I2=>IN1,
                I3=>IN0,
                O=>OUT1);
   
end BEHAVIORAL;


