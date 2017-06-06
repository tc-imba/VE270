VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL IN0
        SIGNAL IN2
        SIGNAL IN1
        SIGNAL IN3
        SIGNAL OUT5
        PORT Input IN0
        PORT Input IN2
        PORT Input IN1
        PORT Input IN3
        PORT Output OUT5
        BEGIN BLOCKDEF and4b2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 64 -256 
            LINE N 256 -160 192 -160 
            LINE N 64 -208 144 -208 
            ARC N 96 -208 192 -112 144 -112 144 -208 
            LINE N 64 -64 64 -256 
            LINE N 144 -112 64 -112 
        END BLOCKDEF
        BEGIN BLOCK XLXI_13 and4b2
            PIN I0 IN3
            PIN I1 IN1
            PIN I2 IN2
            PIN I3 IN0
            PIN O OUT5
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH IN0
            WIRE 1280 1296 1312 1296
        END BRANCH
        BEGIN BRANCH IN2
            WIRE 1280 1360 1312 1360
        END BRANCH
        BEGIN BRANCH IN1
            WIRE 1280 1424 1312 1424
        END BRANCH
        BEGIN BRANCH IN3
            WIRE 1280 1488 1312 1488
        END BRANCH
        BEGIN BRANCH OUT5
            WIRE 1568 1392 1600 1392
        END BRANCH
        IOMARKER 1280 1296 IN0 R180 28
        IOMARKER 1280 1360 IN2 R180 28
        IOMARKER 1280 1424 IN1 R180 28
        IOMARKER 1280 1488 IN3 R180 28
        IOMARKER 1600 1392 OUT5 R0 28
        INSTANCE XLXI_13 1312 1552 R0
    END SHEET
END SCHEMATIC
