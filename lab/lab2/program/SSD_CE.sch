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
        SIGNAL XLXN_43
        SIGNAL CE
        PORT Input B0
        PORT Input B2
        PORT Input B3
        PORT Input B1
        PORT Output CE
        BEGIN BLOCKDEF DIGIT_0
            TIMESTAMP 2017 6 5 12 48 58
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF DIGIT_2
            TIMESTAMP 2017 6 5 12 15 39
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF DIGIT_6
            TIMESTAMP 2017 6 5 12 10 42
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF DIGIT_8
            TIMESTAMP 2017 6 5 12 49 12
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF nor4
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 48 -256 
            LINE N 256 -160 216 -160 
            CIRCLE N 192 -172 216 -148 
            LINE N 112 -208 48 -208 
            ARC N 28 -208 204 -32 192 -160 112 -208 
            LINE N 112 -112 48 -112 
            LINE N 48 -256 48 -208 
            LINE N 48 -64 48 -112 
            ARC N -40 -216 72 -104 48 -112 48 -208 
            ARC N 28 -288 204 -112 112 -112 192 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_17 DIGIT_0
            PIN IN0 B0
            PIN IN1 B1
            PIN IN2 B2
            PIN IN3 B3
            PIN OUT0 XLXN_29
        END BLOCK
        BEGIN BLOCK XLXI_18 DIGIT_2
            PIN IN0 B0
            PIN IN1 B1
            PIN IN2 B2
            PIN IN3 B3
            PIN OUT2 XLXN_30
        END BLOCK
        BEGIN BLOCK XLXI_19 DIGIT_6
            PIN IN0 B0
            PIN IN1 B1
            PIN IN2 B2
            PIN IN3 B3
            PIN OUT6 XLXN_33
        END BLOCK
        BEGIN BLOCK XLXI_20 DIGIT_8
            PIN IN0 B0
            PIN IN1 B1
            PIN IN2 B2
            PIN IN3 B3
            PIN OUT8 XLXN_43
        END BLOCK
        BEGIN BLOCK XLXI_22 nor4
            PIN I0 XLXN_43
            PIN I1 XLXN_33
            PIN I2 XLXN_30
            PIN I3 XLXN_29
            PIN O CE
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH B0
            WIRE 784 672 784 976
            WIRE 784 976 784 1328
            WIRE 784 1328 1120 1328
            WIRE 784 1328 784 1680
            WIRE 784 1680 1120 1680
            WIRE 784 1680 784 2032
            WIRE 784 2032 1120 2032
            WIRE 784 976 1120 976
        END BRANCH
        BEGIN BRANCH B2
            WIRE 944 672 944 688
            WIRE 944 688 944 1104
            WIRE 944 1104 1104 1104
            WIRE 1104 1104 1120 1104
            WIRE 944 1104 944 1456
            WIRE 944 1456 1120 1456
            WIRE 944 1456 944 1808
            WIRE 944 1808 1120 1808
            WIRE 944 1808 944 2160
            WIRE 944 2160 1120 2160
        END BRANCH
        BEGIN BRANCH XLXN_29
            WIRE 1504 976 1744 976
            WIRE 1744 976 1744 1472
        END BRANCH
        BEGIN BRANCH B3
            WIRE 1024 672 1024 688
            WIRE 1024 688 1024 1168
            WIRE 1024 1168 1104 1168
            WIRE 1104 1168 1120 1168
            WIRE 1024 1168 1024 1520
            WIRE 1024 1520 1120 1520
            WIRE 1024 1520 1024 1872
            WIRE 1024 1872 1120 1872
            WIRE 1024 1872 1024 2224
            WIRE 1024 2224 1120 2224
        END BRANCH
        BEGIN BRANCH B1
            WIRE 864 672 864 688
            WIRE 864 688 864 1040
            WIRE 864 1040 1104 1040
            WIRE 1104 1040 1120 1040
            WIRE 864 1040 864 1392
            WIRE 864 1392 1120 1392
            WIRE 864 1392 864 1744
            WIRE 864 1744 1120 1744
            WIRE 864 1744 864 2096
            WIRE 864 2096 1120 2096
        END BRANCH
        IOMARKER 784 672 B0 R270 28
        IOMARKER 864 672 B1 R270 28
        IOMARKER 944 672 B2 R270 28
        IOMARKER 1024 672 B3 R270 28
        BEGIN INSTANCE XLXI_17 1120 1200 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_18 1120 1552 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_19 1120 1904 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_20 1120 2256 R0
        END INSTANCE
        BEGIN BRANCH XLXN_30
            WIRE 1504 1328 1520 1328
            WIRE 1520 1328 1520 1536
            WIRE 1520 1536 1744 1536
        END BRANCH
        BEGIN BRANCH XLXN_33
            WIRE 1504 1680 1520 1680
            WIRE 1520 1600 1744 1600
            WIRE 1520 1600 1520 1680
        END BRANCH
        BEGIN BRANCH XLXN_43
            WIRE 1504 2032 1744 2032
            WIRE 1744 1664 1744 2032
        END BRANCH
        BEGIN BRANCH CE
            WIRE 2000 1568 2032 1568
        END BRANCH
        IOMARKER 2032 1568 CE R0 28
        INSTANCE XLXI_22 1744 1728 R0
    END SHEET
END SCHEMATIC
