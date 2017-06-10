VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL IN0
        SIGNAL IN1
        SIGNAL IN2
        SIGNAL IN3
        SIGNAL OUT7
        PORT Input IN0
        PORT Input IN1
        PORT Input IN2
        PORT Input IN3
        PORT Output OUT7
        BEGIN BLOCKDEF and4b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 64 -256 
            LINE N 256 -160 192 -160 
            LINE N 64 -64 64 -256 
            LINE N 144 -112 64 -112 
            ARC N 96 -208 192 -112 144 -112 144 -208 
            LINE N 64 -208 144 -208 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 and4b1
            PIN I0 IN3
            PIN I1 IN2
            PIN I2 IN1
            PIN I3 IN0
            PIN O OUT7
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1376 1552 R0
        BEGIN BRANCH IN0
            WIRE 1344 1296 1376 1296
        END BRANCH
        IOMARKER 1344 1296 IN0 R180 28
        BEGIN BRANCH IN1
            WIRE 1344 1360 1376 1360
        END BRANCH
        IOMARKER 1344 1360 IN1 R180 28
        BEGIN BRANCH IN2
            WIRE 1344 1424 1376 1424
        END BRANCH
        IOMARKER 1344 1424 IN2 R180 28
        BEGIN BRANCH IN3
            WIRE 1344 1488 1376 1488
        END BRANCH
        IOMARKER 1344 1488 IN3 R180 28
        BEGIN BRANCH OUT7
            WIRE 1632 1392 1664 1392
        END BRANCH
        IOMARKER 1664 1392 OUT7 R0 28
    END SHEET
END SCHEMATIC
