VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL IN1
        SIGNAL IN2
        SIGNAL IN0
        SIGNAL IN3
        SIGNAL OUT2
        PORT Input IN1
        PORT Input IN2
        PORT Input IN0
        PORT Input IN3
        PORT Output OUT2
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
        BEGIN BLOCK XLXI_15 and4b3
            PIN I0 IN3
            PIN I1 IN0
            PIN I2 IN2
            PIN I3 IN1
            PIN O OUT2
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH IN1
            WIRE 1216 1328 1248 1328
        END BRANCH
        BEGIN BRANCH IN2
            WIRE 1216 1392 1248 1392
        END BRANCH
        BEGIN BRANCH IN0
            WIRE 1216 1456 1248 1456
        END BRANCH
        BEGIN BRANCH IN3
            WIRE 1216 1520 1248 1520
        END BRANCH
        BEGIN BRANCH OUT2
            WIRE 1504 1424 1536 1424
        END BRANCH
        IOMARKER 1216 1328 IN1 R180 28
        IOMARKER 1216 1392 IN2 R180 28
        IOMARKER 1216 1456 IN0 R180 28
        IOMARKER 1216 1520 IN3 R180 28
        IOMARKER 1536 1424 OUT2 R0 28
        INSTANCE XLXI_15 1248 1584 R0
    END SHEET
END SCHEMATIC
