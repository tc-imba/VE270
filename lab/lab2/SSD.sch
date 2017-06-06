VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL B0
        SIGNAL B2
        SIGNAL B3
        SIGNAL B1
        SIGNAL CA
        SIGNAL CB
        SIGNAL CC
        SIGNAL CD
        SIGNAL CE
        SIGNAL CF
        SIGNAL CG
        SIGNAL AN0
        SIGNAL XLXN_52
        SIGNAL XLXN_53
        SIGNAL XLXN_55
        SIGNAL XLXN_56
        SIGNAL AN1
        SIGNAL AN2
        SIGNAL AN3
        PORT Input B0
        PORT Input B2
        PORT Input B3
        PORT Input B1
        PORT Output CA
        PORT Output CB
        PORT Output CC
        PORT Output CD
        PORT Output CE
        PORT Output CF
        PORT Output CG
        PORT Output AN0
        PORT Output AN1
        PORT Output AN2
        PORT Output AN3
        BEGIN BLOCKDEF SSD_CA
            TIMESTAMP 2017 6 5 13 7 11
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF SSD_CB
            TIMESTAMP 2017 6 5 13 7 24
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF SSD_CC
            TIMESTAMP 2017 6 5 13 7 47
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF SSD_CD
            TIMESTAMP 2017 6 5 13 7 52
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF SSD_CE
            TIMESTAMP 2017 6 5 13 7 57
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF SSD_CF
            TIMESTAMP 2017 6 5 13 8 2
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF SSD_CG
            TIMESTAMP 2017 6 5 13 8 9
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_15 SSD_CA
            PIN B0 B0
            PIN B1 B1
            PIN B2 B2
            PIN B3 B3
            PIN CA CA
        END BLOCK
        BEGIN BLOCK XLXI_16 SSD_CB
            PIN B0 B0
            PIN B1 B1
            PIN B2 B2
            PIN B3 B3
            PIN CB CB
        END BLOCK
        BEGIN BLOCK XLXI_18 SSD_CC
            PIN B0 B0
            PIN B1 B1
            PIN B2 B2
            PIN B3 B3
            PIN CC CC
        END BLOCK
        BEGIN BLOCK XLXI_19 SSD_CD
            PIN B0 B0
            PIN B1 B1
            PIN B2 B2
            PIN B3 B3
            PIN CD CD
        END BLOCK
        BEGIN BLOCK XLXI_20 SSD_CE
            PIN B0 B0
            PIN B1 B1
            PIN B2 B2
            PIN B3 B3
            PIN CE CE
        END BLOCK
        BEGIN BLOCK XLXI_21 SSD_CF
            PIN B0 B0
            PIN B1 B1
            PIN B2 B2
            PIN B3 B3
            PIN CE CF
        END BLOCK
        BEGIN BLOCK XLXI_22 SSD_CG
            PIN B0 B0
            PIN B1 B1
            PIN B2 B2
            PIN B3 B3
            PIN CD CG
        END BLOCK
        BEGIN BLOCK XLXI_23 vcc
            PIN P AN0
        END BLOCK
        BEGIN BLOCK XLXI_24 gnd
            PIN G AN1
        END BLOCK
        BEGIN BLOCK XLXI_25 gnd
            PIN G AN2
        END BLOCK
        BEGIN BLOCK XLXI_26 gnd
            PIN G AN3
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH B0
            WIRE 112 144 112 448
            WIRE 112 448 112 800
            WIRE 112 800 448 800
            WIRE 112 800 112 1136
            WIRE 112 1136 448 1136
            WIRE 112 1136 112 1472
            WIRE 112 1472 448 1472
            WIRE 112 1472 112 1808
            WIRE 112 1808 448 1808
            WIRE 112 1808 112 2144
            WIRE 112 2144 448 2144
            WIRE 112 2144 112 2480
            WIRE 112 2480 448 2480
            WIRE 112 448 448 448
        END BRANCH
        BEGIN BRANCH B2
            WIRE 272 144 272 160
            WIRE 272 160 272 576
            WIRE 272 576 432 576
            WIRE 432 576 448 576
            WIRE 272 576 272 928
            WIRE 272 928 448 928
            WIRE 272 928 272 1264
            WIRE 272 1264 448 1264
            WIRE 272 1264 272 1600
            WIRE 272 1600 448 1600
            WIRE 272 1600 272 1936
            WIRE 272 1936 448 1936
            WIRE 272 1936 272 2272
            WIRE 272 2272 448 2272
            WIRE 272 2272 272 2608
            WIRE 272 2608 448 2608
        END BRANCH
        BEGIN BRANCH B3
            WIRE 352 144 352 160
            WIRE 352 160 352 640
            WIRE 352 640 432 640
            WIRE 432 640 448 640
            WIRE 352 640 352 992
            WIRE 352 992 448 992
            WIRE 352 992 352 1328
            WIRE 352 1328 448 1328
            WIRE 352 1328 352 1664
            WIRE 352 1664 448 1664
            WIRE 352 1664 352 2000
            WIRE 352 2000 448 2000
            WIRE 352 2000 352 2336
            WIRE 352 2336 448 2336
            WIRE 352 2336 352 2672
            WIRE 352 2672 448 2672
        END BRANCH
        BEGIN BRANCH B1
            WIRE 192 144 192 160
            WIRE 192 160 192 512
            WIRE 192 512 432 512
            WIRE 432 512 448 512
            WIRE 192 512 192 864
            WIRE 192 864 448 864
            WIRE 192 864 192 1200
            WIRE 192 1200 448 1200
            WIRE 192 1200 192 1536
            WIRE 192 1536 448 1536
            WIRE 192 1536 192 1872
            WIRE 192 1872 448 1872
            WIRE 192 1872 192 2208
            WIRE 192 2208 448 2208
            WIRE 192 2208 192 2544
            WIRE 192 2544 448 2544
        END BRANCH
        IOMARKER 112 144 B0 R270 28
        IOMARKER 192 144 B1 R270 28
        IOMARKER 272 144 B2 R270 28
        IOMARKER 352 144 B3 R270 28
        BEGIN INSTANCE XLXI_15 448 672 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_16 448 1024 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_18 448 1360 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_19 448 1696 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_20 448 2032 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_21 448 2368 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_22 448 2704 R0
        END INSTANCE
        BEGIN BRANCH CA
            WIRE 832 448 864 448
        END BRANCH
        IOMARKER 864 448 CA R0 28
        BEGIN BRANCH CB
            WIRE 832 800 864 800
        END BRANCH
        IOMARKER 864 800 CB R0 28
        BEGIN BRANCH CC
            WIRE 832 1136 864 1136
        END BRANCH
        IOMARKER 864 1136 CC R0 28
        BEGIN BRANCH CD
            WIRE 832 1472 864 1472
        END BRANCH
        IOMARKER 864 1472 CD R0 28
        BEGIN BRANCH CE
            WIRE 832 1808 864 1808
        END BRANCH
        IOMARKER 864 1808 CE R0 28
        BEGIN BRANCH CF
            WIRE 832 2144 864 2144
        END BRANCH
        IOMARKER 864 2144 CF R0 28
        BEGIN BRANCH CG
            WIRE 832 2480 864 2480
        END BRANCH
        IOMARKER 864 2480 CG R0 28
        BEGIN BRANCH AN0
            WIRE 1152 336 1520 336
        END BRANCH
        IOMARKER 1520 336 AN0 R0 28
        INSTANCE XLXI_23 1152 400 R270
        INSTANCE XLXI_24 1024 384 R90
        INSTANCE XLXI_25 1024 480 R90
        INSTANCE XLXI_26 1024 576 R90
        BEGIN BRANCH AN1
            WIRE 1152 448 1520 448
        END BRANCH
        BEGIN BRANCH AN2
            WIRE 1152 544 1520 544
        END BRANCH
        BEGIN BRANCH AN3
            WIRE 1152 640 1520 640
        END BRANCH
        IOMARKER 1520 448 AN1 R0 28
        IOMARKER 1520 544 AN2 R0 28
        IOMARKER 1520 640 AN3 R0 28
    END SHEET
END SCHEMATIC
