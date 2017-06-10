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
        SIGNAL XLXN_30
        SIGNAL B3
        SIGNAL B1
        SIGNAL XLXN_33
        SIGNAL CD
        PORT Input B0
        PORT Input B2
        PORT Input B3
        PORT Input B1
        PORT Output CD
        BEGIN BLOCKDEF DIGIT_4
            TIMESTAMP 2017 6 5 11 53 38
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
        BEGIN BLOCK XLXI_12 DIGIT_4
            PIN IN0 B0
            PIN IN1 B1
            PIN IN2 B2
            PIN IN3 B3
            PIN OUT4 XLXN_30
        END BLOCK
        BEGIN BLOCK XLXI_8 DIGIT_1
            PIN IN0 B0
            PIN IN1 B1
            PIN IN2 B2
            PIN IN3 B3
            PIN OUT1 XLXN_29
        END BLOCK
        BEGIN BLOCK XLXI_16 DIGIT_7
            PIN IN0 B0
            PIN IN1 B1
            PIN IN2 B2
            PIN IN3 B3
            PIN OUT7 XLXN_33
        END BLOCK
        BEGIN BLOCK XLXI_17 or3
            PIN I0 XLXN_33
            PIN I1 XLXN_30
            PIN I2 XLXN_29
            PIN O CD
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH B0
            WIRE 672 736 672 1040
            WIRE 672 1040 672 1392
            WIRE 672 1392 1008 1392
            WIRE 672 1392 672 1744
            WIRE 672 1744 1008 1744
            WIRE 672 1040 1008 1040
        END BRANCH
        BEGIN BRANCH B2
            WIRE 832 736 832 752
            WIRE 832 752 832 1168
            WIRE 832 1168 992 1168
            WIRE 992 1168 1008 1168
            WIRE 832 1168 832 1520
            WIRE 832 1520 1008 1520
            WIRE 832 1520 832 1872
            WIRE 832 1872 1008 1872
        END BRANCH
        BEGIN INSTANCE XLXI_12 1008 1616 R0
        END INSTANCE
        BEGIN BRANCH XLXN_29
            WIRE 1392 1040 1568 1040
            WIRE 1568 1040 1568 1328
        END BRANCH
        BEGIN BRANCH B3
            WIRE 912 736 912 752
            WIRE 912 752 912 1232
            WIRE 912 1232 992 1232
            WIRE 992 1232 1008 1232
            WIRE 912 1232 912 1584
            WIRE 912 1584 1008 1584
            WIRE 912 1584 912 1936
            WIRE 912 1936 1008 1936
        END BRANCH
        BEGIN BRANCH B1
            WIRE 752 736 752 752
            WIRE 752 752 752 1104
            WIRE 752 1104 992 1104
            WIRE 992 1104 1008 1104
            WIRE 752 1104 752 1456
            WIRE 752 1456 1008 1456
            WIRE 752 1456 752 1808
            WIRE 752 1808 1008 1808
        END BRANCH
        BEGIN INSTANCE XLXI_8 1008 1264 R0
        END INSTANCE
        IOMARKER 672 736 B0 R270 28
        IOMARKER 752 736 B1 R270 28
        IOMARKER 832 736 B2 R270 28
        IOMARKER 912 736 B3 R270 28
        BEGIN INSTANCE XLXI_16 1008 1968 R0
        END INSTANCE
        BEGIN BRANCH XLXN_30
            WIRE 1392 1392 1568 1392
        END BRANCH
        BEGIN BRANCH XLXN_33
            WIRE 1392 1744 1568 1744
            WIRE 1568 1456 1568 1744
        END BRANCH
        BEGIN BRANCH CD
            WIRE 1824 1392 1856 1392
        END BRANCH
        IOMARKER 1856 1392 CD R0 28
        INSTANCE XLXI_17 1568 1520 R0
    END SHEET
END SCHEMATIC
