VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL B0
        SIGNAL B2
        SIGNAL XLXN_29
        SIGNAL B3
        SIGNAL B1
        SIGNAL XLXN_30
        SIGNAL XLXN_33
        SIGNAL CD
        PORT Input B0
        PORT Input B2
        PORT Input B3
        PORT Input B1
        PORT Output CD
        BEGIN BLOCKDEF DIGIT_1
            TIMESTAMP 2017 6 5 11 48 20
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF DIGIT_7
            TIMESTAMP 2017 6 5 12 28 8
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF DIGIT_0
            TIMESTAMP 2017 6 5 12 48 58
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF or3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 72 -128 
            LINE N 0 -192 48 -192 
            LINE N 256 -128 192 -128 
            ARC N 28 -256 204 -80 112 -80 192 -128 
            ARC N -40 -184 72 -72 48 -80 48 -176 
            LINE N 48 -64 48 -80 
            LINE N 48 -192 48 -176 
            LINE N 112 -80 48 -80 
            ARC N 28 -176 204 0 192 -128 112 -176 
            LINE N 112 -176 48 -176 
        END BLOCKDEF
        BEGIN BLOCK XLXI_16 DIGIT_7
            PIN IN0 B0
            PIN IN1 B1
            PIN IN2 B2
            PIN IN3 B3
            PIN OUT7 XLXN_33
        END BLOCK
        BEGIN BLOCK XLXI_17 DIGIT_0
            PIN IN0 B0
            PIN IN1 B1
            PIN IN2 B2
            PIN IN3 B3
            PIN OUT0 XLXN_29
        END BLOCK
        BEGIN BLOCK XLXI_20 DIGIT_1
            PIN IN0 B0
            PIN IN1 B1
            PIN IN2 B2
            PIN IN3 B3
            PIN OUT1 XLXN_30
        END BLOCK
        BEGIN BLOCK XLXI_21 or3
            PIN I0 XLXN_33
            PIN I1 XLXN_30
            PIN I2 XLXN_29
            PIN O CD
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH B0
            WIRE 960 768 960 1072
            WIRE 960 1072 960 1424
            WIRE 960 1424 960 1776
            WIRE 960 1776 1296 1776
            WIRE 960 1424 1280 1424
            WIRE 1280 1424 1296 1424
            WIRE 960 1072 1296 1072
        END BRANCH
        BEGIN BRANCH B2
            WIRE 1120 768 1120 784
            WIRE 1120 784 1120 1200
            WIRE 1120 1200 1280 1200
            WIRE 1280 1200 1296 1200
            WIRE 1120 1200 1120 1552
            WIRE 1120 1552 1120 1904
            WIRE 1120 1904 1296 1904
            WIRE 1120 1552 1280 1552
            WIRE 1280 1552 1296 1552
        END BRANCH
        BEGIN BRANCH XLXN_29
            WIRE 1680 1072 1856 1072
            WIRE 1856 1072 1856 1360
        END BRANCH
        BEGIN BRANCH B3
            WIRE 1200 768 1200 784
            WIRE 1200 784 1200 1264
            WIRE 1200 1264 1280 1264
            WIRE 1280 1264 1296 1264
            WIRE 1200 1264 1200 1616
            WIRE 1200 1616 1200 1968
            WIRE 1200 1968 1296 1968
            WIRE 1200 1616 1280 1616
            WIRE 1280 1616 1296 1616
        END BRANCH
        BEGIN BRANCH B1
            WIRE 1040 768 1040 784
            WIRE 1040 784 1040 1136
            WIRE 1040 1136 1280 1136
            WIRE 1280 1136 1296 1136
            WIRE 1040 1136 1040 1488
            WIRE 1040 1488 1040 1840
            WIRE 1040 1840 1296 1840
            WIRE 1040 1488 1280 1488
            WIRE 1280 1488 1296 1488
        END BRANCH
        BEGIN INSTANCE XLXI_16 1296 2000 R0
        END INSTANCE
        BEGIN BRANCH XLXN_30
            WIRE 1680 1424 1696 1424
            WIRE 1696 1424 1856 1424
        END BRANCH
        BEGIN BRANCH XLXN_33
            WIRE 1680 1776 1856 1776
            WIRE 1856 1488 1856 1776
        END BRANCH
        BEGIN BRANCH CD
            WIRE 2112 1424 2144 1424
        END BRANCH
        IOMARKER 960 768 B0 R270 28
        IOMARKER 1040 768 B1 R270 28
        IOMARKER 1120 768 B2 R270 28
        IOMARKER 1200 768 B3 R270 28
        IOMARKER 2144 1424 CD R0 28
        BEGIN INSTANCE XLXI_17 1296 1296 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_20 1296 1648 R0
        END INSTANCE
        INSTANCE XLXI_21 1856 1552 R0
    END SHEET
END SCHEMATIC
