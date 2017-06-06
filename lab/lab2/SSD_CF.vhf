--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : SSD_CF.vhf
-- /___/   /\     Timestamp : 06/06/2017 19:10:27
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family spartan3e -flat -suppress -w C:/Users/MSY/Documents/VE270/lab/lab2/SSD_CF.sch SSD_CF.vhf
--Design Name: SSD_CF
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

entity SSD_CF is
   port ( B0 : in    std_logic; 
          B1 : in    std_logic; 
          B2 : in    std_logic; 
          B3 : in    std_logic; 
          CE : out   std_logic);
end SSD_CF;

architecture BEHAVIORAL of SSD_CF is
   attribute BOX_TYPE   : string ;
   signal XLXN_29 : std_logic;
   signal XLXN_30 : std_logic;
   signal XLXN_33 : std_logic;
   signal XLXN_43 : std_logic;
   component DIGIT_2
      port ( IN0  : in    std_logic; 
             IN1  : in    std_logic; 
             IN2  : in    std_logic; 
             IN3  : in    std_logic; 
             OUT2 : out   std_logic);
   end component;
   
   component DIGIT_1
      port ( IN0  : in    std_logic; 
             IN1  : in    std_logic; 
             IN2  : in    std_logic; 
             IN3  : in    std_logic; 
             OUT1 : out   std_logic);
   end component;
   
   component DIGIT_7
      port ( IN0  : in    std_logic; 
             IN1  : in    std_logic; 
             IN2  : in    std_logic; 
             IN3  : in    std_logic; 
             OUT7 : out   std_logic);
   end component;
   
   component DIGIT_3
      port ( IN0  : in    std_logic; 
             IN1  : in    std_logic; 
             IN2  : in    std_logic; 
             IN3  : in    std_logic; 
             OUT3 : out   std_logic);
   end component;
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
begin
   XLXI_18 : DIGIT_2
      port map (IN0=>B0,
                IN1=>B1,
                IN2=>B2,
                IN3=>B3,
                OUT2=>XLXN_30);
   
   XLXI_22 : DIGIT_1
      port map (IN0=>B0,
                IN1=>B1,
                IN2=>B2,
                IN3=>B3,
                OUT1=>XLXN_29);
   
   XLXI_23 : DIGIT_7
      port map (IN0=>B0,
                IN1=>B1,
                IN2=>B2,
                IN3=>B3,
                OUT7=>XLXN_43);
   
   XLXI_24 : DIGIT_3
      port map (IN0=>B0,
                IN1=>B1,
                IN2=>B2,
                IN3=>B3,
                OUT3=>XLXN_33);
   
   XLXI_26 : OR4
      port map (I0=>XLXN_43,
                I1=>XLXN_33,
                I2=>XLXN_30,
                I3=>XLXN_29,
                O=>CE);
   
end BEHAVIORAL;


