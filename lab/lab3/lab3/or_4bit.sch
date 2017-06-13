VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A0
        SIGNAL B0
        SIGNAL A1
        SIGNAL B1
        SIGNAL A2
        SIGNAL B2
        SIGNAL A3
        SIGNAL B3
        SIGNAL C0
        SIGNAL C1
        SIGNAL C2
        SIGNAL C3
        PORT Input A0
        PORT Input B0
        PORT Input A1
        PORT Input B1
        PORT Input A2
        PORT Input B2
        PORT Input A3
        PORT Input B3
        PORT Output C0
        PORT Output C1
        PORT Output C2
        PORT Output C3
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCK XLXI_5 or2
            PIN I0 B0
            PIN I1 A0
            PIN O C0
        END BLOCK
        BEGIN BLOCK XLXI_6 or2
            PIN I0 B1
            PIN I1 A1
            PIN O C1
        END BLOCK
        BEGIN BLOCK XLXI_8 or2
            PIN I0 B2
            PIN I1 A2
            PIN O C2
        END BLOCK
        BEGIN BLOCK XLXI_9 or2
            PIN I0 B3
            PIN I1 A3
            PIN O C3
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH A0
            WIRE 864 1008 896 1008
        END BRANCH
        BEGIN BRANCH B0
            WIRE 864 1072 896 1072
        END BRANCH
        BEGIN BRANCH A1
            WIRE 864 1232 880 1232
            WIRE 880 1232 896 1232
        END BRANCH
        BEGIN BRANCH B1
            WIRE 864 1296 880 1296
            WIRE 880 1296 896 1296
        END BRANCH
        BEGIN BRANCH A2
            WIRE 864 1504 880 1504
            WIRE 880 1504 896 1504
        END BRANCH
        BEGIN BRANCH B2
            WIRE 864 1568 880 1568
            WIRE 880 1568 896 1568
        END BRANCH
        BEGIN BRANCH A3
            WIRE 864 1744 896 1744
        END BRANCH
        BEGIN BRANCH B3
            WIRE 864 1808 896 1808
        END BRANCH
        BEGIN BRANCH C0
            WIRE 1152 1040 1184 1040
        END BRANCH
        BEGIN BRANCH C1
            WIRE 1152 1264 1168 1264
            WIRE 1168 1264 1184 1264
        END BRANCH
        BEGIN BRANCH C2
            WIRE 1152 1536 1184 1536
        END BRANCH
        BEGIN BRANCH C3
            WIRE 1152 1776 1184 1776
        END BRANCH
        IOMARKER 864 1008 A0 R180 28
        IOMARKER 864 1072 B0 R180 28
        IOMARKER 864 1232 A1 R180 28
        IOMARKER 864 1296 B1 R180 28
        IOMARKER 864 1504 A2 R180 28
        IOMARKER 864 1568 B2 R180 28
        IOMARKER 864 1744 A3 R180 28
        IOMARKER 864 1808 B3 R180 28
        IOMARKER 1184 1040 C0 R0 28
        IOMARKER 1184 1264 C1 R0 28
        IOMARKER 1184 1536 C2 R0 28
        IOMARKER 1184 1776 C3 R0 28
        INSTANCE XLXI_5 896 1136 R0
        INSTANCE XLXI_6 896 1360 R0
        INSTANCE XLXI_8 896 1632 R0
        INSTANCE XLXI_9 896 1872 R0
    END SHEET
END SCHEMATIC
