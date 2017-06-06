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
        SIGNAL IN3
        SIGNAL IN2
        SIGNAL OUT3
        PORT Input IN0
        PORT Input IN1
        PORT Input IN3
        PORT Input IN2
        PORT Output OUT3
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
        BEGIN BLOCK XLXI_1 and4b2
            PIN I0 IN3
            PIN I1 IN2
            PIN I2 IN1
            PIN I3 IN0
            PIN O OUT3
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1200 1408 R0
        BEGIN BRANCH IN0
            WIRE 1168 1152 1200 1152
        END BRANCH
        IOMARKER 1168 1152 IN0 R180 28
        BEGIN BRANCH IN1
            WIRE 1168 1216 1200 1216
        END BRANCH
        IOMARKER 1168 1216 IN1 R180 28
        BEGIN BRANCH IN3
            WIRE 1168 1344 1200 1344
        END BRANCH
        IOMARKER 1168 1344 IN3 R180 28
        BEGIN BRANCH IN2
            WIRE 1168 1280 1200 1280
        END BRANCH
        IOMARKER 1168 1280 IN2 R180 28
        BEGIN BRANCH OUT3
            WIRE 1456 1248 1472 1248
            WIRE 1472 1248 1488 1248
        END BRANCH
        IOMARKER 1488 1248 OUT3 R0 28
    END SHEET
END SCHEMATIC
