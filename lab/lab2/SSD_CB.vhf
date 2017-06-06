--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : SSD_CB.vhf
-- /___/   /\     Timestamp : 06/05/2017 22:15:07
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: /opt/Xilinx/10.1/ISE/bin/lin64/unwrapped/sch2vhdl -intstyle ise -family spartan3e -flat -suppress -w /disk/Documents/SJTU/VE270/lab/lab2/SSD_CB.sch SSD_CB.vhf
--Design Name: SSD_CB
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

entity SSD_CB is
   port ( B0 : in    std_logic; 
          B1 : in    std_logic; 
          B2 : in    std_logic; 
          B3 : in    std_logic; 
          CB : out   std_logic);
end SSD_CB;

architecture BEHAVIORAL of SSD_CB is
   attribute BOX_TYPE   : string ;
   signal XLXN_29 : std_logic;
   signal XLXN_30 : std_logic;
   component NOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR2 : component is "BLACK_BOX";
   
   component DIGIT_5
      port ( IN0  : in    std_logic; 
             IN1  : in    std_logic; 
             IN2  : in    std_logic; 
             IN3  : in    std_logic; 
             OUT5 : out   std_logic);
   end component;
   
   component DIGIT_6
      port ( IN0  : in    std_logic; 
             IN1  : in    std_logic; 
             IN2  : in    std_logic; 
             IN3  : in    std_logic; 
             OUT6 : out   std_logic);
   end component;
   
begin
   XLXI_14 : NOR2
      port map (I0=>XLXN_30,
                I1=>XLXN_29,
                O=>CB);
   
   XLXI_16 : DIGIT_5
      port map (IN0=>B0,
                IN1=>B1,
                IN2=>B2,
                IN3=>B3,
                OUT5=>XLXN_29);
   
   XLXI_17 : DIGIT_6
      port map (IN0=>B0,
                IN1=>B1,
                IN2=>B2,
                IN3=>B3,
                OUT6=>XLXN_30);
   
end BEHAVIORAL;


