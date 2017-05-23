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
        SIGNAL XLXN_3
        SIGNAL A
        SIGNAL B
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL Cin
        SIGNAL XLXN_12
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL XLXN_23
        SIGNAL Sum
        SIGNAL Cout
        PORT Input A
        PORT Input B
        PORT Input Cin
        PORT Output Sum
        PORT Output Cout
        BEGIN BLOCKDEF xor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            LINE N 256 -96 208 -96 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            LINE N 128 -144 64 -144 
            LINE N 128 -48 64 -48 
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
        END BLOCKDEF
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
        BEGIN BLOCK XLXI_1 xor2
            PIN I0 B
            PIN I1 A
            PIN O XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_2 and2
            PIN I0 B
            PIN I1 A
            PIN O XLXN_16
        END BLOCK
        BEGIN BLOCK XLXI_3 and2
            PIN I0 Cin
            PIN I1 XLXN_1
            PIN O XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_4 xor2
            PIN I0 Cin
            PIN I1 XLXN_1
            PIN O Sum
        END BLOCK
        BEGIN BLOCK XLXI_5 or2
            PIN I0 XLXN_16
            PIN I1 XLXN_3
            PIN O Cout
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 800 800 R0
        INSTANCE XLXI_2 800 1120 R0
        BEGIN BRANCH A
            WIRE 560 672 704 672
            WIRE 704 672 800 672
            WIRE 704 672 704 992
            WIRE 704 992 800 992
        END BRANCH
        IOMARKER 560 672 A R180 28
        BEGIN BRANCH B
            WIRE 560 736 624 736
            WIRE 624 736 800 736
            WIRE 624 736 624 1056
            WIRE 624 1056 800 1056
        END BRANCH
        IOMARKER 560 736 B R180 28
        BEGIN BRANCH Cin
            WIRE 560 1232 1152 1232
            WIRE 1152 768 1392 768
            WIRE 1152 768 1152 1056
            WIRE 1152 1056 1152 1232
            WIRE 1152 1056 1424 1056
        END BRANCH
        IOMARKER 560 1232 Cin R180 28
        INSTANCE XLXI_4 1392 832 R0
        INSTANCE XLXI_3 1424 1120 R0
        BEGIN BRANCH XLXN_1
            WIRE 1056 704 1280 704
            WIRE 1280 704 1392 704
            WIRE 1280 704 1280 992
            WIRE 1280 992 1424 992
        END BRANCH
        INSTANCE XLXI_5 1792 1248 R0
        BEGIN BRANCH XLXN_3
            WIRE 1680 1024 1696 1024
            WIRE 1696 1024 1696 1120
            WIRE 1696 1120 1792 1120
        END BRANCH
        BEGIN BRANCH XLXN_16
            WIRE 1056 1024 1072 1024
            WIRE 1072 1024 1072 1184
            WIRE 1072 1184 1792 1184
        END BRANCH
        BEGIN BRANCH Sum
            WIRE 1648 736 1680 736
        END BRANCH
        IOMARKER 1680 736 Sum R0 28
        BEGIN BRANCH Cout
            WIRE 2048 1152 2080 1152
        END BRANCH
        IOMARKER 2080 1152 Cout R0 28
    END SHEET
END SCHEMATIC
