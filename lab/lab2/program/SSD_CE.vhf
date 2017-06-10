--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : SSD_CE.vhf
-- /___/   /\     Timestamp : 06/10/2017 20:08:47
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: /opt/Xilinx/10.1/ISE/bin/lin64/unwrapped/sch2vhdl -intstyle ise -family spartan3e -flat -suppress -w /home/liu/SJTU/VE270/lab/lab2/program/SSD_CE.sch SSD_CE.vhf
--Design Name: SSD_CE
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

entity SSD_CE is
   port ( B0 : in    std_logic; 
          B1 : in    std_logic; 
          B2 : in    std_logic; 
          B3 : in    std_logic; 
          CE : out   std_logic);
end SSD_CE;

architecture BEHAVIORAL of SSD_CE is
   attribute BOX_TYPE   : string ;
   signal XLXN_29 : std_logic;
   signal XLXN_30 : std_logic;
   signal XLXN_33 : std_logic;
   signal XLXN_43 : std_logic;
   component DIGIT_0
      port ( IN0  : in    std_logic; 
             IN1  : in    std_logic; 
             IN2  : in    std_logic; 
             IN3  : in    std_logic; 
             OUT0 : out   std_logic);
   end component;
   
   component DIGIT_2
      port ( IN0  : in    std_logic; 
             IN1  : in    std_logic; 
             IN2  : in    std_logic; 
             IN3  : in    std_logic; 
             OUT2 : out   std_logic);
   end component;
   
   component DIGIT_6
      port ( IN0  : in    std_logic; 
             IN1  : in    std_logic; 
             IN2  : in    std_logic; 
             IN3  : in    std_logic; 
             OUT6 : out   std_logic);
   end component;
   
   component DIGIT_8
      port ( IN0  : in    std_logic; 
             IN1  : in    std_logic; 
             IN2  : in    std_logic; 
             IN3  : in    std_logic; 
             OUT8 : out   std_logic);
   end component;
   
   component NOR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR4 : component is "BLACK_BOX";
   
begin
   XLXI_17 : DIGIT_0
      port map (IN0=>B0,
                IN1=>B1,
                IN2=>B2,
                IN3=>B3,
                OUT0=>XLXN_29);
   
   XLXI_18 : DIGIT_2
      port map (IN0=>B0,
                IN1=>B1,
                IN2=>B2,
                IN3=>B3,
                OUT2=>XLXN_30);
   
   XLXI_19 : DIGIT_6
      port map (IN0=>B0,
                IN1=>B1,
                IN2=>B2,
                IN3=>B3,
                OUT6=>XLXN_33);
   
   XLXI_20 : DIGIT_8
      port map (IN0=>B0,
                IN1=>B1,
                IN2=>B2,
                IN3=>B3,
                OUT8=>XLXN_43);
   
   XLXI_22 : NOR4
      port map (I0=>XLXN_43,
                I1=>XLXN_33,
                I2=>XLXN_30,
                I3=>XLXN_29,
                O=>CE);
   
end BEHAVIORAL;


