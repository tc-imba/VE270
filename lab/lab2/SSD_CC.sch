VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL B0
        SIGNAL B1
        SIGNAL B2
        SIGNAL B3
        SIGNAL XLXN_5
        SIGNAL CC
        PORT Input B0
        PORT Input B1
        PORT Input B2
        PORT Input B3
        PORT Output CC
        BEGIN BLOCKDEF DIGIT_2
            TIMESTAMP 2017 6 5 12 15 39
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 DIGIT_2
            PIN IN0 B0
            PIN IN1 B1
            PIN IN2 B2
            PIN IN3 B3
            PIN OUT2 XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_5 inv
            PIN I XLXN_5
            PIN O CC
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1296 1504 R0
        END INSTANCE
        BEGIN BRANCH B0
            WIRE 1264 1280 1280 1280
            WIRE 1280 1280 1296 1280
        END BRANCH
        IOMARKER 1264 1280 B0 R180 28
        BEGIN BRANCH B1
            WIRE 1264 1344 1280 1344
            WIRE 1280 1344 1296 1344
        END BRANCH
        IOMARKER 1264 1344 B1 R180 28
        BEGIN BRANCH B2
            WIRE 1264 1408 1280 1408
            WIRE 1280 1408 1296 1408
        END BRANCH
        IOMARKER 1264 1408 B2 R180 28
        BEGIN BRANCH B3
            WIRE 1264 1472 1280 1472
            WIRE 1280 1472 1296 1472
        END BRANCH
        IOMARKER 1264 1472 B3 R180 28
        BEGIN BRANCH XLXN_5
            WIRE 1680 1280 1712 1280
        END BRANCH
        INSTANCE XLXI_5 1712 1312 R0
        BEGIN BRANCH CC
            WIRE 1936 1280 1968 1280
        END BRANCH
        IOMARKER 1968 1280 CC R0 28
    END SHEET
END SCHEMATIC
