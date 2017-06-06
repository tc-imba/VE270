VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL CB
        SIGNAL B0
        SIGNAL B2
        SIGNAL XLXN_29
        SIGNAL XLXN_5
        SIGNAL XLXN_30
        SIGNAL B3
        SIGNAL B1
        PORT Output CB
        PORT Input B0
        PORT Input B2
        PORT Input B3
        PORT Input B1
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
        BEGIN BLOCKDEF DIGIT_5
            TIMESTAMP 2017 6 5 12 10 25
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
        BEGIN BLOCK XLXI_14 nor2
            PIN I0 XLXN_30
            PIN I1 XLXN_29
            PIN O CB
        END BLOCK
        BEGIN BLOCK XLXI_16 DIGIT_5
            PIN IN0 B0
            PIN IN1 B1
            PIN IN2 B2
            PIN IN3 B3
            PIN OUT5 XLXN_29
        END BLOCK
        BEGIN BLOCK XLXI_17 DIGIT_6
            PIN IN0 B0
            PIN IN1 B1
            PIN IN2 B2
            PIN IN3 B3
            PIN OUT6 XLXN_30
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH CB
            WIRE 1616 1344 1632 1344
            WIRE 1632 1344 1648 1344
        END BRANCH
        BEGIN BRANCH B0
            WIRE 528 880 528 1184
            WIRE 528 1184 528 1536
            WIRE 528 1536 864 1536
            WIRE 528 1184 864 1184
        END BRANCH
        BEGIN BRANCH B2
            WIRE 688 880 688 896
            WIRE 688 896 688 1312
            WIRE 688 1312 848 1312
            WIRE 848 1312 864 1312
            WIRE 688 1312 688 1664
            WIRE 688 1664 864 1664
        END BRANCH
        INSTANCE XLXI_14 1360 1440 R0
        BEGIN BRANCH XLXN_29
            WIRE 1248 1184 1264 1184
            WIRE 1264 1184 1264 1312
            WIRE 1264 1312 1344 1312
            WIRE 1344 1312 1360 1312
        END BRANCH
        BEGIN BRANCH XLXN_30
            WIRE 1248 1536 1264 1536
            WIRE 1264 1376 1360 1376
            WIRE 1264 1376 1264 1536
        END BRANCH
        BEGIN BRANCH B3
            WIRE 768 880 768 896
            WIRE 768 896 768 1376
            WIRE 768 1376 848 1376
            WIRE 848 1376 864 1376
            WIRE 768 1376 768 1728
            WIRE 768 1728 864 1728
        END BRANCH
        BEGIN BRANCH B1
            WIRE 608 880 608 896
            WIRE 608 896 608 1248
            WIRE 608 1248 848 1248
            WIRE 848 1248 864 1248
            WIRE 608 1248 608 1600
            WIRE 608 1600 864 1600
        END BRANCH
        IOMARKER 528 880 B0 R270 28
        IOMARKER 608 880 B1 R270 28
        IOMARKER 688 880 B2 R270 28
        IOMARKER 768 880 B3 R270 28
        IOMARKER 1648 1344 CB R0 28
        BEGIN INSTANCE XLXI_16 864 1408 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_17 864 1760 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
