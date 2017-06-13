--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : ALU.vhf
-- /___/   /\     Timestamp : 06/13/2017 19:03:55
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: /opt/Xilinx/10.1/ISE/bin/lin64/unwrapped/sch2vhdl -intstyle ise -family spartan3e -flat -suppress -w /home/liu/SJTU/VE270/lab/lab3/lab3/ALU.sch ALU.vhf
--Design Name: ALU
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

entity M2_1_MXILINX_ALU is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          S0 : in    std_logic; 
          O  : out   std_logic);
end M2_1_MXILINX_ALU;

architecture BEHAVIORAL of M2_1_MXILINX_ALU is
   attribute BOX_TYPE   : string ;
   signal M0 : std_logic;
   signal M1 : std_logic;
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   I_36_7 : AND2B1
      port map (I0=>S0,
                I1=>D0,
                O=>M0);
   
   I_36_8 : OR2
      port map (I0=>M1,
                I1=>M0,
                O=>O);
   
   I_36_9 : AND2
      port map (I0=>D1,
                I1=>S0,
                O=>M1);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity INV4_MXILINX_ALU is
   port ( I0 : in    std_logic; 
          I1 : in    std_logic; 
          I2 : in    std_logic; 
          I3 : in    std_logic; 
          O0 : out   std_logic; 
          O1 : out   std_logic; 
          O2 : out   std_logic; 
          O3 : out   std_logic);
end INV4_MXILINX_ALU;

architecture BEHAVIORAL of INV4_MXILINX_ALU is
   attribute BOX_TYPE   : string ;
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   I_36_37 : INV
      port map (I=>I3,
                O=>O3);
   
   I_36_38 : INV
      port map (I=>I2,
                O=>O2);
   
   I_36_39 : INV
      port map (I=>I1,
                O=>O1);
   
   I_36_40 : INV
      port map (I=>I0,
                O=>O0);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ADD4_MXILINX_ALU is
   port ( A0  : in    std_logic; 
          A1  : in    std_logic; 
          A2  : in    std_logic; 
          A3  : in    std_logic; 
          B0  : in    std_logic; 
          B1  : in    std_logic; 
          B2  : in    std_logic; 
          B3  : in    std_logic; 
          CI  : in    std_logic; 
          CO  : out   std_logic; 
          OFL : out   std_logic; 
          S0  : out   std_logic; 
          S1  : out   std_logic; 
          S2  : out   std_logic; 
          S3  : out   std_logic);
end ADD4_MXILINX_ALU;

architecture BEHAVIORAL of ADD4_MXILINX_ALU is
   attribute BOX_TYPE   : string ;
   attribute RLOC       : string ;
   signal C0       : std_logic;
   signal C1       : std_logic;
   signal C2       : std_logic;
   signal C2O      : std_logic;
   signal dummy    : std_logic;
   signal I0       : std_logic;
   signal I1       : std_logic;
   signal I2       : std_logic;
   signal I3       : std_logic;
   signal CO_DUMMY : std_logic;
   component MUXCY_L
      port ( CI : in    std_logic; 
             DI : in    std_logic; 
             S  : in    std_logic; 
             LO : out   std_logic);
   end component;
   attribute BOX_TYPE of MUXCY_L : component is "BLACK_BOX";
   
   component MUXCY
      port ( CI : in    std_logic; 
             DI : in    std_logic; 
             S  : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of MUXCY : component is "BLACK_BOX";
   
   component MUXCY_D
      port ( CI : in    std_logic; 
             DI : in    std_logic; 
             S  : in    std_logic; 
             LO : out   std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of MUXCY_D : component is "BLACK_BOX";
   
   component XORCY
      port ( CI : in    std_logic; 
             LI : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XORCY : component is "BLACK_BOX";
   
   component FMAP
      port ( I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : in    std_logic);
   end component;
   attribute BOX_TYPE of FMAP : component is "BLACK_BOX";
   
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   attribute RLOC of I_36_55 : label is "X0Y0";
   attribute RLOC of I_36_58 : label is "X0Y1";
   attribute RLOC of I_36_62 : label is "X0Y1";
   attribute RLOC of I_36_111 : label is "X0Y0";
   attribute RLOC of I_36_175 : label is "X0Y0";
   attribute RLOC of I_36_178 : label is "X0Y0";
   attribute RLOC of I_36_182 : label is "X0Y1";
   attribute RLOC of I_36_206 : label is "X0Y1";
begin
   CO <= CO_DUMMY;
   I_36_55 : MUXCY_L
      port map (CI=>C0,
                DI=>A1,
                S=>I1,
                LO=>C1);
   
   I_36_58 : MUXCY
      port map (CI=>C2,
                DI=>A3,
                S=>I3,
                O=>CO_DUMMY);
   
   I_36_62 : MUXCY_D
      port map (CI=>C1,
                DI=>A2,
                S=>I2,
                LO=>C2,
                O=>C2O);
   
   I_36_73 : XORCY
      port map (CI=>CI,
                LI=>I0,
                O=>S0);
   
   I_36_74 : XORCY
      port map (CI=>C0,
                LI=>I1,
                O=>S1);
   
   I_36_75 : XORCY
      port map (CI=>C2,
                LI=>I3,
                O=>S3);
   
   I_36_76 : XORCY
      port map (CI=>C1,
                LI=>I2,
                O=>S2);
   
   I_36_111 : MUXCY_L
      port map (CI=>CI,
                DI=>A0,
                S=>I0,
                LO=>C0);
   
   I_36_175 : FMAP
      port map (I1=>A1,
                I2=>B1,
                I3=>dummy,
                I4=>dummy,
                O=>I1);
   
   I_36_178 : FMAP
      port map (I1=>A0,
                I2=>B0,
                I3=>dummy,
                I4=>dummy,
                O=>I0);
   
   I_36_182 : FMAP
      port map (I1=>A2,
                I2=>B2,
                I3=>dummy,
                I4=>dummy,
                O=>I2);
   
   I_36_206 : FMAP
      port map (I1=>A3,
                I2=>B3,
                I3=>dummy,
                I4=>dummy,
                O=>I3);
   
   I_36_239 : XOR2
      port map (I0=>A0,
                I1=>B0,
                O=>I0);
   
   I_36_240 : XOR2
      port map (I0=>A1,
                I1=>B1,
                O=>I1);
   
   I_36_241 : XOR2
      port map (I0=>A2,
                I1=>B2,
                O=>I2);
   
   I_36_242 : XOR2
      port map (I0=>A3,
                I1=>B3,
                O=>I3);
   
   I_36_259 : XOR2
      port map (I0=>C2O,
                I1=>CO_DUMMY,
                O=>OFL);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ALU is
   port ( A0   : in    std_logic; 
          A1   : in    std_logic; 
          A2   : in    std_logic; 
          A3   : in    std_logic; 
          B0   : in    std_logic; 
          B1   : in    std_logic; 
          B2   : in    std_logic; 
          B3   : in    std_logic; 
          S0   : in    std_logic; 
          S1   : in    std_logic; 
          Cout : out   std_logic; 
          C0   : out   std_logic; 
          C1   : out   std_logic; 
          C2   : out   std_logic; 
          C3   : out   std_logic);
end ALU;

architecture BEHAVIORAL of ALU is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_24  : std_logic;
   signal XLXN_25  : std_logic;
   signal XLXN_26  : std_logic;
   signal XLXN_27  : std_logic;
   signal XLXN_35  : std_logic;
   signal XLXN_36  : std_logic;
   signal XLXN_37  : std_logic;
   signal XLXN_38  : std_logic;
   signal XLXN_44  : std_logic;
   signal XLXN_45  : std_logic;
   signal XLXN_46  : std_logic;
   signal XLXN_47  : std_logic;
   signal XLXN_94  : std_logic;
   signal XLXN_95  : std_logic;
   signal XLXN_96  : std_logic;
   signal XLXN_97  : std_logic;
   signal XLXN_98  : std_logic;
   signal XLXN_99  : std_logic;
   signal XLXN_100 : std_logic;
   signal XLXN_102 : std_logic;
   signal XLXN_104 : std_logic;
   signal XLXN_105 : std_logic;
   signal XLXN_106 : std_logic;
   signal XLXN_107 : std_logic;
   signal XLXN_108 : std_logic;
   signal XLXN_109 : std_logic;
   signal XLXN_118 : std_logic;
   component ADD4_MXILINX_ALU
      port ( A0  : in    std_logic; 
             A1  : in    std_logic; 
             A2  : in    std_logic; 
             A3  : in    std_logic; 
             B0  : in    std_logic; 
             B1  : in    std_logic; 
             B2  : in    std_logic; 
             B3  : in    std_logic; 
             CI  : in    std_logic; 
             CO  : out   std_logic; 
             OFL : out   std_logic; 
             S0  : out   std_logic; 
             S1  : out   std_logic; 
             S2  : out   std_logic; 
             S3  : out   std_logic);
   end component;
   
   component mux4
      port ( A0 : in    std_logic; 
             B0 : in    std_logic; 
             S0 : in    std_logic; 
             A1 : in    std_logic; 
             B1 : in    std_logic; 
             A2 : in    std_logic; 
             B2 : in    std_logic; 
             A3 : in    std_logic; 
             B3 : in    std_logic; 
             C0 : out   std_logic; 
             C1 : out   std_logic; 
             C2 : out   std_logic; 
             C3 : out   std_logic);
   end component;
   
   component INV4_MXILINX_ALU
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O0 : out   std_logic; 
             O1 : out   std_logic; 
             O2 : out   std_logic; 
             O3 : out   std_logic);
   end component;
   
   component and_4bit
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             A2 : in    std_logic; 
             A3 : in    std_logic; 
             B0 : in    std_logic; 
             B1 : in    std_logic; 
             B2 : in    std_logic; 
             B3 : in    std_logic; 
             C0 : out   std_logic; 
             C1 : out   std_logic; 
             C2 : out   std_logic; 
             C3 : out   std_logic);
   end component;
   
   component or_4bit
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             A2 : in    std_logic; 
             A3 : in    std_logic; 
             B0 : in    std_logic; 
             B1 : in    std_logic; 
             B2 : in    std_logic; 
             B3 : in    std_logic; 
             C0 : out   std_logic; 
             C1 : out   std_logic; 
             C2 : out   std_logic; 
             C3 : out   std_logic);
   end component;
   
   component M2_1_MXILINX_ALU
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_0";
   attribute HU_SET of XLXI_10 : label is "XLXI_10_1";
   attribute HU_SET of XLXI_21 : label is "XLXI_21_2";
begin
   XLXI_1 : ADD4_MXILINX_ALU
      port map (A0=>A0,
                A1=>A1,
                A2=>A2,
                A3=>A3,
                B0=>XLXN_24,
                B1=>XLXN_25,
                B2=>XLXN_26,
                B3=>XLXN_27,
                CI=>S0,
                CO=>XLXN_108,
                OFL=>XLXN_118,
                S0=>XLXN_44,
                S1=>XLXN_45,
                S2=>XLXN_46,
                S3=>XLXN_47);
   
   XLXI_2 : mux4
      port map (A0=>B0,
                A1=>B1,
                A2=>B2,
                A3=>B3,
                B0=>XLXN_38,
                B1=>XLXN_37,
                B2=>XLXN_36,
                B3=>XLXN_35,
                S0=>S0,
                C0=>XLXN_24,
                C1=>XLXN_25,
                C2=>XLXN_26,
                C3=>XLXN_27);
   
   XLXI_10 : INV4_MXILINX_ALU
      port map (I0=>B3,
                I1=>B2,
                I2=>B1,
                I3=>B0,
                O0=>XLXN_35,
                O1=>XLXN_36,
                O2=>XLXN_37,
                O3=>XLXN_38);
   
   XLXI_11 : mux4
      port map (A0=>XLXN_44,
                A1=>XLXN_45,
                A2=>XLXN_46,
                A3=>XLXN_47,
                B0=>XLXN_104,
                B1=>XLXN_105,
                B2=>XLXN_106,
                B3=>XLXN_107,
                S0=>S1,
                C0=>C0,
                C1=>C1,
                C2=>C2,
                C3=>C3);
   
   XLXI_18 : and_4bit
      port map (A0=>A0,
                A1=>A1,
                A2=>A2,
                A3=>A3,
                B0=>B0,
                B1=>B1,
                B2=>B2,
                B3=>B3,
                C0=>XLXN_94,
                C1=>XLXN_95,
                C2=>XLXN_96,
                C3=>XLXN_97);
   
   XLXI_19 : or_4bit
      port map (A0=>A0,
                A1=>A1,
                A2=>A2,
                A3=>A3,
                B0=>B0,
                B1=>B1,
                B2=>B2,
                B3=>B3,
                C0=>XLXN_98,
                C1=>XLXN_99,
                C2=>XLXN_100,
                C3=>XLXN_102);
   
   XLXI_20 : mux4
      port map (A0=>XLXN_94,
                A1=>XLXN_95,
                A2=>XLXN_96,
                A3=>XLXN_97,
                B0=>XLXN_98,
                B1=>XLXN_99,
                B2=>XLXN_100,
                B3=>XLXN_102,
                S0=>S0,
                C0=>XLXN_104,
                C1=>XLXN_105,
                C2=>XLXN_106,
                C3=>XLXN_107);
   
   XLXI_21 : M2_1_MXILINX_ALU
      port map (D0=>XLXN_108,
                D1=>XLXN_109,
                S0=>S1,
                O=>Cout);
   
   XLXI_22 : GND
      port map (G=>XLXN_109);
   
   XLXI_23 : VCC
      port map (P=>XLXN_118);
   
end BEHAVIORAL;


