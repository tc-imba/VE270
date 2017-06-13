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
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 and2
            PIN I0 B0
            PIN I1 A0
            PIN O C0
        END BLOCK
        BEGIN BLOCK XLXI_2 and2
            PIN I0 B1
            PIN I1 A1
            PIN O C1
        END BLOCK
        BEGIN BLOCK XLXI_3 and2
            PIN I0 B2
            PIN I1 A2
            PIN O C2
        END BLOCK
        BEGIN BLOCK XLXI_4 and2
            PIN I0 B3
            PIN I1 A3
            PIN O C3
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1008 752 R0
        INSTANCE XLXI_2 1008 976 R0
        INSTANCE XLXI_3 1008 1248 R0
        INSTANCE XLXI_4 1008 1488 R0
        BEGIN BRANCH A0
            WIRE 976 624 1008 624
        END BRANCH
        IOMARKER 976 624 A0 R180 28
        BEGIN BRANCH B0
            WIRE 976 688 1008 688
        END BRANCH
        IOMARKER 976 688 B0 R180 28
        BEGIN BRANCH A1
            WIRE 976 848 1008 848
        END BRANCH
        IOMARKER 976 848 A1 R180 28
        BEGIN BRANCH B1
            WIRE 976 912 1008 912
        END BRANCH
        IOMARKER 976 912 B1 R180 28
        BEGIN BRANCH A2
            WIRE 976 1120 1008 1120
        END BRANCH
        IOMARKER 976 1120 A2 R180 28
        BEGIN BRANCH B2
            WIRE 976 1184 1008 1184
        END BRANCH
        IOMARKER 976 1184 B2 R180 28
        BEGIN BRANCH A3
            WIRE 976 1360 1008 1360
        END BRANCH
        IOMARKER 976 1360 A3 R180 28
        BEGIN BRANCH B3
            WIRE 976 1424 1008 1424
        END BRANCH
        IOMARKER 976 1424 B3 R180 28
        BEGIN BRANCH C0
            WIRE 1264 656 1296 656
        END BRANCH
        IOMARKER 1296 656 C0 R0 28
        BEGIN BRANCH C1
            WIRE 1264 880 1280 880
            WIRE 1280 880 1296 880
        END BRANCH
        IOMARKER 1296 880 C1 R0 28
        BEGIN BRANCH C2
            WIRE 1264 1152 1296 1152
        END BRANCH
        IOMARKER 1296 1152 C2 R0 28
        BEGIN BRANCH C3
            WIRE 1264 1392 1296 1392
        END BRANCH
        IOMARKER 1296 1392 C3 R0 28
    END SHEET
END SCHEMATIC
