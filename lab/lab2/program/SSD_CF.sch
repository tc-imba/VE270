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
        BEGIN BLOCKDEF DIGIT_2
            TIMESTAMP 2017 6 5 12 15 39
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
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
        BEGIN BLOCKDEF DIGIT_3
            TIMESTAMP 2017 6 5 12 56 51
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF or4
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 48 -256 
            LINE N 256 -160 192 -160 
            ARC N 28 -208 204 -32 192 -160 112 -208 
            LINE N 112 -208 48 -208 
            LINE N 112 -112 48 -112 
            LINE N 48 -256 48 -208 
            LINE N 48 -64 48 -112 
            ARC N -40 -216 72 -104 48 -112 48 -208 
            ARC N 28 -288 204 -112 112 -112 192 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_18 DIGIT_2
            PIN IN0 B0
            PIN IN1 B1
            PIN IN2 B2
            PIN IN3 B3
            PIN OUT2 XLXN_30
        END BLOCK
        BEGIN BLOCK XLXI_22 DIGIT_1
            PIN IN0 B0
            PIN IN1 B1
            PIN IN2 B2
            PIN IN3 B3
            PIN OUT1 XLXN_29
        END BLOCK
        BEGIN BLOCK XLXI_23 DIGIT_7
            PIN IN0 B0
            PIN IN1 B1
            PIN IN2 B2
            PIN IN3 B3
            PIN OUT7 XLXN_43
        END BLOCK
        BEGIN BLOCK XLXI_24 DIGIT_3
            PIN IN0 B0
            PIN IN1 B1
            PIN IN2 B2
            PIN IN3 B3
            PIN OUT3 XLXN_33
        END BLOCK
        BEGIN BLOCK XLXI_26 or4
            PIN I0 XLXN_43
            PIN I1 XLXN_33
            PIN I2 XLXN_30
            PIN I3 XLXN_29
            PIN O CE
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH B0
            WIRE 576 592 576 896
            WIRE 576 896 576 1248
            WIRE 576 1248 912 1248
            WIRE 576 1248 576 1600
            WIRE 576 1600 912 1600
            WIRE 576 1600 576 1952
            WIRE 576 1952 912 1952
            WIRE 576 896 912 896
        END BRANCH
        BEGIN BRANCH B2
            WIRE 736 592 736 608
            WIRE 736 608 736 1024
            WIRE 736 1024 896 1024
            WIRE 896 1024 912 1024
            WIRE 736 1024 736 1376
            WIRE 736 1376 912 1376
            WIRE 736 1376 736 1728
            WIRE 736 1728 912 1728
            WIRE 736 1728 736 2080
            WIRE 736 2080 912 2080
        END BRANCH
        BEGIN BRANCH XLXN_29
            WIRE 1296 896 1536 896
            WIRE 1536 896 1536 1392
        END BRANCH
        BEGIN BRANCH B3
            WIRE 816 592 816 608
            WIRE 816 608 816 1088
            WIRE 816 1088 896 1088
            WIRE 896 1088 912 1088
            WIRE 816 1088 816 1440
            WIRE 816 1440 912 1440
            WIRE 816 1440 816 1792
            WIRE 816 1792 912 1792
            WIRE 816 1792 816 2144
            WIRE 816 2144 912 2144
        END BRANCH
        BEGIN BRANCH B1
            WIRE 656 592 656 608
            WIRE 656 608 656 960
            WIRE 656 960 896 960
            WIRE 896 960 912 960
            WIRE 656 960 656 1312
            WIRE 656 1312 912 1312
            WIRE 656 1312 656 1664
            WIRE 656 1664 912 1664
            WIRE 656 1664 656 2016
            WIRE 656 2016 912 2016
        END BRANCH
        BEGIN INSTANCE XLXI_18 912 1472 R0
        END INSTANCE
        BEGIN BRANCH XLXN_30
            WIRE 1296 1248 1312 1248
            WIRE 1312 1248 1312 1456
            WIRE 1312 1456 1536 1456
        END BRANCH
        BEGIN BRANCH XLXN_33
            WIRE 1296 1600 1312 1600
            WIRE 1312 1520 1536 1520
            WIRE 1312 1520 1312 1600
        END BRANCH
        BEGIN BRANCH XLXN_43
            WIRE 1296 1952 1536 1952
            WIRE 1536 1584 1536 1600
            WIRE 1536 1600 1536 1952
        END BRANCH
        BEGIN BRANCH CE
            WIRE 1792 1488 1824 1488
        END BRANCH
        IOMARKER 576 592 B0 R270 28
        IOMARKER 656 592 B1 R270 28
        IOMARKER 736 592 B2 R270 28
        IOMARKER 816 592 B3 R270 28
        IOMARKER 1824 1488 CE R0 28
        BEGIN INSTANCE XLXI_22 912 1120 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_23 912 2176 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_24 912 1824 R0
        END INSTANCE
        INSTANCE XLXI_26 1536 1648 R0
    END SHEET
END SCHEMATIC
