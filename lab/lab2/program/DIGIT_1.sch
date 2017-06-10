VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_8
        SIGNAL IN0
        SIGNAL IN1
        SIGNAL IN2
        SIGNAL IN3
        SIGNAL OUT1
        PORT Input IN0
        PORT Input IN1
        PORT Input IN2
        PORT Input IN3
        PORT Output OUT1
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
        BEGIN BLOCK XLXI_12 and4b3
            PIN I0 IN3
            PIN I1 IN2
            PIN I2 IN1
            PIN I3 IN0
            PIN O OUT1
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_12 1552 1104 R0
        BEGIN BRANCH IN0
            WIRE 1520 848 1552 848
        END BRANCH
        IOMARKER 1520 848 IN0 R180 28
        BEGIN BRANCH IN1
            WIRE 1520 912 1552 912
        END BRANCH
        IOMARKER 1520 912 IN1 R180 28
        BEGIN BRANCH IN2
            WIRE 1520 976 1552 976
        END BRANCH
        IOMARKER 1520 976 IN2 R180 28
        BEGIN BRANCH IN3
            WIRE 1520 1040 1552 1040
        END BRANCH
        IOMARKER 1520 1040 IN3 R180 28
        BEGIN BRANCH OUT1
            WIRE 1808 944 1840 944
        END BRANCH
        IOMARKER 1840 944 OUT1 R0 28
    END SHEET
END SCHEMATIC
