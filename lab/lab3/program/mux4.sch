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
        SIGNAL S0
        SIGNAL C1
        SIGNAL C2
        SIGNAL C3
        SIGNAL C0
        PORT Input A0
        PORT Input B0
        PORT Input A1
        PORT Input B1
        PORT Input A2
        PORT Input B2
        PORT Input A3
        PORT Input B3
        PORT Input S0
        PORT Output C1
        PORT Output C2
        PORT Output C3
        PORT Output C0
        BEGIN BLOCKDEF mux2
            TIMESTAMP 2017 6 13 12 10 55
            RECTANGLE N 64 -192 320 0 
            LINE N 320 -160 384 -160 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_13 mux2
            PIN C C0
            PIN D0 A0
            PIN D1 B0
            PIN S S0
        END BLOCK
        BEGIN BLOCK XLXI_14 mux2
            PIN C C1
            PIN D0 A1
            PIN D1 B1
            PIN S S0
        END BLOCK
        BEGIN BLOCK XLXI_15 mux2
            PIN C C2
            PIN D0 A2
            PIN D1 B2
            PIN S S0
        END BLOCK
        BEGIN BLOCK XLXI_16 mux2
            PIN C C3
            PIN D0 A3
            PIN D1 B3
            PIN S S0
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        IOMARKER 864 752 A0 R180 28
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
            WIRE 496 880 496 896
            WIRE 496 896 496 1136
            WIRE 496 1136 912 1136
            WIRE 496 1136 496 1392
            WIRE 496 1392 928 1392
            WIRE 496 1392 496 1680
            WIRE 496 1680 928 1680
            WIRE 496 880 896 880
        END BRANCH
        IOMARKER 352 880 S0 R180 28
        BEGIN BRANCH C1
            WIRE 1296 1008 1360 1008
            WIRE 1360 992 1392 992
            WIRE 1360 992 1360 1008
        END BRANCH
        BEGIN BRANCH C2
            WIRE 1312 1264 1376 1264
            WIRE 1376 1248 1408 1248
            WIRE 1376 1248 1376 1264
        END BRANCH
        BEGIN BRANCH C3
            WIRE 1312 1552 1376 1552
            WIRE 1376 1536 1408 1536
            WIRE 1376 1536 1376 1552
        END BRANCH
        IOMARKER 1392 992 C1 R0 28
        IOMARKER 1408 1248 C2 R0 28
        IOMARKER 1408 1536 C3 R0 28
        BEGIN INSTANCE XLXI_14 912 1168 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_15 928 1424 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_16 928 1712 R0
        END INSTANCE
        BEGIN BRANCH B0
            WIRE 864 816 880 816
            WIRE 880 816 896 816
        END BRANCH
        BEGIN BRANCH A0
            WIRE 864 752 880 752
            WIRE 880 752 896 752
        END BRANCH
        BEGIN INSTANCE XLXI_13 896 912 R0
        END INSTANCE
        BEGIN BRANCH C0
            WIRE 1280 752 1344 752
            WIRE 1344 736 1376 736
            WIRE 1344 736 1344 752
        END BRANCH
        IOMARKER 1376 736 C0 R0 28
    END SHEET
END SCHEMATIC
