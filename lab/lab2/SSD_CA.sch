VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_25
        SIGNAL XLXN_26
        SIGNAL XLXN_27
        SIGNAL XLXN_28
        SIGNAL XLXN_29
        SIGNAL XLXN_30
        SIGNAL CA
        SIGNAL XLXN_32
        SIGNAL XLXN_33
        SIGNAL XLXN_34
        SIGNAL B0
        SIGNAL B1
        SIGNAL B2
        SIGNAL B3
        SIGNAL XLXN_39
        SIGNAL XLXN_48
        SIGNAL XLXN_49
        SIGNAL XLXN_50
        PORT Output CA
        PORT Input B0
        PORT Input B1
        PORT Input B2
        PORT Input B3
        BEGIN BLOCKDEF DIGIT_1
            TIMESTAMP 2017 6 5 11 48 20
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF DIGIT_4
            TIMESTAMP 2017 6 5 11 53 38
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF nor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 216 -96 
            CIRCLE N 192 -108 216 -84 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N 28 -144 204 32 192 -96 112 -144 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -48 48 -48 
            LINE N 112 -144 48 -144 
        END BLOCKDEF
        BEGIN BLOCK XLXI_8 DIGIT_1
            PIN IN0 B0
            PIN IN1 B1
            PIN IN2 B2
            PIN IN3 B3
            PIN OUT1 XLXN_29
        END BLOCK
        BEGIN BLOCK XLXI_12 DIGIT_4
            PIN IN0 B0
            PIN IN1 B1
            PIN IN2 B2
            PIN IN3 B3
            PIN OUT4 XLXN_30
        END BLOCK
        BEGIN BLOCK XLXI_14 nor2
            PIN I0 XLXN_30
            PIN I1 XLXN_29
            PIN O CA
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH CA
            WIRE 1728 1168 1744 1168
            WIRE 1744 1168 1760 1168
        END BRANCH
        BEGIN BRANCH B0
            WIRE 640 704 640 1008
            WIRE 640 1008 640 1360
            WIRE 640 1360 976 1360
            WIRE 640 1008 976 1008
        END BRANCH
        BEGIN BRANCH B2
            WIRE 800 704 800 720
            WIRE 800 720 800 1136
            WIRE 800 1136 960 1136
            WIRE 960 1136 976 1136
            WIRE 800 1136 800 1488
            WIRE 800 1488 976 1488
        END BRANCH
        IOMARKER 640 704 B0 R270 28
        IOMARKER 720 704 B1 R270 28
        IOMARKER 800 704 B2 R270 28
        IOMARKER 880 704 B3 R270 28
        BEGIN INSTANCE XLXI_12 976 1584 R0
        END INSTANCE
        INSTANCE XLXI_14 1472 1264 R0
        BEGIN BRANCH XLXN_29
            WIRE 1360 1008 1376 1008
            WIRE 1376 1008 1376 1136
            WIRE 1376 1136 1456 1136
            WIRE 1456 1136 1472 1136
        END BRANCH
        BEGIN BRANCH XLXN_30
            WIRE 1360 1360 1376 1360
            WIRE 1376 1200 1472 1200
            WIRE 1376 1200 1376 1360
        END BRANCH
        BEGIN BRANCH B3
            WIRE 880 704 880 720
            WIRE 880 720 880 1200
            WIRE 880 1200 960 1200
            WIRE 960 1200 976 1200
            WIRE 880 1200 880 1552
            WIRE 880 1552 976 1552
        END BRANCH
        BEGIN BRANCH B1
            WIRE 720 704 720 720
            WIRE 720 720 720 1072
            WIRE 720 1072 960 1072
            WIRE 960 1072 976 1072
            WIRE 720 1072 720 1424
            WIRE 720 1424 976 1424
        END BRANCH
        BEGIN INSTANCE XLXI_8 976 1232 R0
        END INSTANCE
        IOMARKER 1760 1168 CA R0 28
    END SHEET
END SCHEMATIC
