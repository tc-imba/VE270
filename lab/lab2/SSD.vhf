--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : SSD.vhf
-- /___/   /\     Timestamp : 06/05/2017 22:15:08
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: /opt/Xilinx/10.1/ISE/bin/lin64/unwrapped/sch2vhdl -intstyle ise -family spartan3e -flat -suppress -w /disk/Documents/SJTU/VE270/lab/lab2/SSD.sch SSD.vhf
--Design Name: SSD
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

entity SSD is
   port ( B0  : in    std_logic; 
          B1  : in    std_logic; 
          B2  : in    std_logic; 
          B3  : in    std_logic; 
          AN0 : out   std_logic; 
          AN1 : out   std_logic; 
          AN2 : out   std_logic; 
          AN3 : out   std_logic; 
          CA  : out   std_logic; 
          CB  : out   std_logic; 
          CC  : out   std_logic; 
          CD  : out   std_logic; 
          CE  : out   std_logic; 
          CF  : out   std_logic; 
          CG  : out   std_logic);
end SSD;

architecture BEHAVIORAL of SSD is
   attribute BOX_TYPE   : string ;
   component SSD_CA
      port ( B0 : in    std_logic; 
             B1 : in    std_logic; 
             B2 : in    std_logic; 
             B3 : in    std_logic; 
             CA : out   std_logic);
   end component;
   
   component SSD_CB
      port ( B0 : in    std_logic; 
             B1 : in    std_logic; 
             B2 : in    std_logic; 
             B3 : in    std_logic; 
             CB : out   std_logic);
   end component;
   
   component SSD_CC
      port ( B0 : in    std_logic; 
             B1 : in    std_logic; 
             B2 : in    std_logic; 
             B3 : in    std_logic; 
             CC : out   std_logic);
   end component;
   
   component SSD_CD
      port ( B0 : in    std_logic; 
             B1 : in    std_logic; 
             B2 : in    std_logic; 
             B3 : in    std_logic; 
             CD : out   std_logic);
   end component;
   
   component SSD_CE
      port ( B0 : in    std_logic; 
             B1 : in    std_logic; 
             B2 : in    std_logic; 
             B3 : in    std_logic; 
             CE : out   std_logic);
   end component;
   
   component SSD_CF
      port ( B0 : in    std_logic; 
             B1 : in    std_logic; 
             B2 : in    std_logic; 
             B3 : in    std_logic; 
             CE : out   std_logic);
   end component;
   
   component SSD_CG
      port ( B0 : in    std_logic; 
             B1 : in    std_logic; 
             B2 : in    std_logic; 
             B3 : in    std_logic; 
             CD : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
begin
   XLXI_15 : SSD_CA
      port map (B0=>B0,
                B1=>B1,
                B2=>B2,
                B3=>B3,
                CA=>CA);
   
   XLXI_16 : SSD_CB
      port map (B0=>B0,
                B1=>B1,
                B2=>B2,
                B3=>B3,
                CB=>CB);
   
   XLXI_18 : SSD_CC
      port map (B0=>B0,
                B1=>B1,
                B2=>B2,
                B3=>B3,
                CC=>CC);
   
   XLXI_19 : SSD_CD
      port map (B0=>B0,
                B1=>B1,
                B2=>B2,
                B3=>B3,
                CD=>CD);
   
   XLXI_20 : SSD_CE
      port map (B0=>B0,
                B1=>B1,
                B2=>B2,
                B3=>B3,
                CE=>CE);
   
   XLXI_21 : SSD_CF
      port map (B0=>B0,
                B1=>B1,
                B2=>B2,
                B3=>B3,
                CE=>CF);
   
   XLXI_22 : SSD_CG
      port map (B0=>B0,
                B1=>B1,
                B2=>B2,
                B3=>B3,
                CD=>CG);
   
   XLXI_23 : VCC
      port map (P=>AN0);
   
   XLXI_24 : GND
      port map (G=>AN1);
   
   XLXI_25 : GND
      port map (G=>AN2);
   
   XLXI_26 : GND
      port map (G=>AN3);
   
end BEHAVIORAL;


