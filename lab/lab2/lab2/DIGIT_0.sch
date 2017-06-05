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
        SIGNAL OUT0
        PORT Input IN0
        PORT Input IN1
        PORT Input IN2
        PORT Input IN3
        PORT Output OUT0
        BEGIN BLOCKDEF and4b4
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 40 -192 
            CIRCLE N 40 -204 64 -180 
            LINE N 0 -256 40 -256 
            CIRCLE N 40 -268 64 -244 
            LINE N 256 -160 192 -160 
            LINE N 64 -208 144 -208 
            ARC N 96 -208 192 -112 144 -112 144 -208 
            LINE N 64 -64 64 -256 
            LINE N 144 -112 64 -112 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 and4b4
            PIN I0 IN3
            PIN I1 IN2
            PIN I2 IN1
            PIN I3 IN0
            PIN O OUT0
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1344 1456 R0
        BEGIN BRANCH IN0
            WIRE 1312 1200 1344 1200
        END BRANCH
        IOMARKER 1312 1200 IN0 R180 28
        BEGIN BRANCH IN1
            WIRE 1312 1264 1344 1264
        END BRANCH
        IOMARKER 1312 1264 IN1 R180 28
        BEGIN BRANCH IN2
            WIRE 1312 1328 1344 1328
        END BRANCH
        IOMARKER 1312 1328 IN2 R180 28
        BEGIN BRANCH IN3
            WIRE 1312 1392 1344 1392
        END BRANCH
        IOMARKER 1312 1392 IN3 R180 28
        BEGIN BRANCH OUT0
            WIRE 1600 1296 1632 1296
        END BRANCH
        IOMARKER 1632 1296 OUT0 R0 28
    END SHEET
END SCHEMATIC
