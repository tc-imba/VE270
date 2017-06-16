VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL C
        SIGNAL D1
        SIGNAL D0
        SIGNAL S
        SIGNAL XLXN_11
        PORT Output C
        PORT Input D1
        PORT Input D0
        PORT Input S
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
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
        BEGIN BLOCK XLXI_1 and2
            PIN I0 S
            PIN I1 D1
            PIN O XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_2 and2
            PIN I0 XLXN_11
            PIN I1 D0
            PIN O XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_3 or2
            PIN I0 XLXN_2
            PIN I1 XLXN_1
            PIN O C
        END BLOCK
        BEGIN BLOCK XLXI_4 inv
            PIN I S
            PIN O XLXN_11
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 832 1264 R0
        INSTANCE XLXI_2 832 1504 R0
        BEGIN BRANCH C
            WIRE 1424 1296 1440 1296
        END BRANCH
        BEGIN BRANCH D1
            WIRE 800 1136 832 1136
        END BRANCH
        IOMARKER 800 1136 D1 R180 28
        BEGIN BRANCH D0
            WIRE 800 1376 832 1376
        END BRANCH
        IOMARKER 800 1376 D0 R180 28
        BEGIN BRANCH S
            WIRE 352 1200 576 1200
            WIRE 576 1200 832 1200
            WIRE 576 1200 576 1440
        END BRANCH
        BEGIN BRANCH XLXN_11
            WIRE 800 1440 816 1440
            WIRE 816 1440 832 1440
        END BRANCH
        INSTANCE XLXI_4 576 1472 R0
        IOMARKER 352 1200 S R180 28
        INSTANCE XLXI_3 1168 1392 R0
        BEGIN BRANCH XLXN_1
            WIRE 1088 1168 1104 1168
            WIRE 1104 1168 1104 1264
            WIRE 1104 1264 1168 1264
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 1088 1408 1104 1408
            WIRE 1104 1328 1168 1328
            WIRE 1104 1328 1104 1408
        END BRANCH
        IOMARKER 1440 1296 C R0 28
    END SHEET
END SCHEMATIC
