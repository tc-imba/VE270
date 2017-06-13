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
        SIGNAL XLXN_9
        SIGNAL S0
        SIGNAL XLXN_11
        SIGNAL XLXN_12
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
        PORT Input S0
        PORT Output C0
        PORT Output C1
        PORT Output C2
        PORT Output C3
        BEGIN BLOCKDEF m2_1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 96 -64 96 -192 
            LINE N 256 -96 96 -64 
            LINE N 256 -160 256 -96 
            LINE N 96 -192 256 -160 
            LINE N 176 -32 96 -32 
            LINE N 176 -80 176 -32 
            LINE N 0 -32 96 -32 
            LINE N 320 -128 256 -128 
            LINE N 0 -96 96 -96 
            LINE N 0 -160 96 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_5 m2_1
            PIN D0 A0
            PIN D1 B0
            PIN S0 S0
            PIN O C0
        END BLOCK
        BEGIN BLOCK XLXI_6 m2_1
            PIN D0 A1
            PIN D1 B1
            PIN S0 S0
            PIN O C1
        END BLOCK
        BEGIN BLOCK XLXI_7 m2_1
            PIN D0 A2
            PIN D1 B2
            PIN S0 S0
            PIN O C2
        END BLOCK
        BEGIN BLOCK XLXI_8 m2_1
            PIN D0 A3
            PIN D1 B3
            PIN S0 S0
            PIN O C3
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_5 896 912 R0
        INSTANCE XLXI_6 912 1168 R0
        INSTANCE XLXI_7 928 1424 R0
        INSTANCE XLXI_8 928 1712 R0
        BEGIN BRANCH A0
            WIRE 864 752 896 752
        END BRANCH
        IOMARKER 864 752 A0 R180 28
        BEGIN BRANCH B0
            WIRE 864 816 896 816
        END BRANCH
        IOMARKER 864 816 B0 R180 28
        BEGIN BRANCH A1
            WIRE 880 1008 912 1008
        END BRANCH
        IOMARKER 880 1008 A1 R180 28
        BEGIN BRANCH B1
            WIRE 880 1072 912 1072
        END BRANCH
        IOMARKER 880 1072 B1 R180 28
        BEGIN BRANCH A2
            WIRE 896 1264 928 1264
        END BRANCH
        IOMARKER 896 1264 A2 R180 28
        BEGIN BRANCH B2
            WIRE 896 1328 928 1328
        END BRANCH
        IOMARKER 896 1328 B2 R180 28
        BEGIN BRANCH A3
            WIRE 896 1552 928 1552
        END BRANCH
        IOMARKER 896 1552 A3 R180 28
        BEGIN BRANCH B3
            WIRE 896 1616 928 1616
        END BRANCH
        IOMARKER 896 1616 B3 R180 28
        BEGIN BRANCH S0
            WIRE 352 880 496 880
            WIRE 496 880 896 880
            WIRE 496 880 496 1136
            WIRE 496 1136 912 1136
            WIRE 496 1136 496 1392
            WIRE 496 1392 928 1392
            WIRE 496 1392 496 1680
            WIRE 496 1680 928 1680
        END BRANCH
        IOMARKER 352 880 S0 R180 28
        BEGIN BRANCH C0
            WIRE 1216 784 1248 784
        END BRANCH
        IOMARKER 1248 784 C0 R0 28
        BEGIN BRANCH C1
            WIRE 1232 1040 1264 1040
        END BRANCH
        IOMARKER 1264 1040 C1 R0 28
        BEGIN BRANCH C2
            WIRE 1248 1296 1280 1296
        END BRANCH
        IOMARKER 1280 1296 C2 R0 28
        BEGIN BRANCH C3
            WIRE 1248 1584 1280 1584
        END BRANCH
        IOMARKER 1280 1584 C3 R0 28
    END SHEET
END SCHEMATIC
