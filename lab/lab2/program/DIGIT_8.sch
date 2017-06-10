VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL IN3
        SIGNAL IN0
        SIGNAL IN1
        SIGNAL IN2
        SIGNAL OUT8
        PORT Input IN3
        PORT Input IN0
        PORT Input IN1
        PORT Input IN2
        PORT Output OUT8
        BEGIN BLOCKDEF and4b3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 40 -192 
            CIRCLE N 40 -204 64 -180 
            LINE N 0 -256 64 -256 
            LINE N 256 -160 192 -160 
            LINE N 64 -64 64 -256 
            LINE N 144 -112 64 -112 
            ARC N 96 -208 192 -112 144 -112 144 -208 
            LINE N 64 -208 144 -208 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 and4b3
            PIN I0 IN2
            PIN I1 IN1
            PIN I2 IN0
            PIN I3 IN3
            PIN O OUT8
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1328 1536 R0
        BEGIN BRANCH IN3
            WIRE 1296 1280 1328 1280
        END BRANCH
        IOMARKER 1296 1280 IN3 R180 28
        BEGIN BRANCH IN0
            WIRE 1296 1344 1328 1344
        END BRANCH
        IOMARKER 1296 1344 IN0 R180 28
        BEGIN BRANCH IN1
            WIRE 1296 1408 1328 1408
        END BRANCH
        IOMARKER 1296 1408 IN1 R180 28
        BEGIN BRANCH IN2
            WIRE 1296 1472 1328 1472
        END BRANCH
        IOMARKER 1296 1472 IN2 R180 28
        BEGIN BRANCH OUT8
            WIRE 1584 1376 1616 1376
        END BRANCH
        IOMARKER 1616 1376 OUT8 R0 28
    END SHEET
END SCHEMATIC
