VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_24
        SIGNAL XLXN_30
        SIGNAL XLXN_31
        SIGNAL Q1
        SIGNAL XLXN_56
        SIGNAL updown
        SIGNAL XLXN_58
        SIGNAL Q2
        SIGNAL XLXN_63
        SIGNAL XLXN_66
        SIGNAL XLXN_69
        SIGNAL XLXN_72
        SIGNAL XLXN_73
        SIGNAL XLXN_74
        SIGNAL Q3
        SIGNAL XLXN_76
        SIGNAL XLXN_77
        SIGNAL XLXN_78
        SIGNAL XLXN_79
        SIGNAL XLXN_1
        SIGNAL Q0
        SIGNAL clear
        SIGNAL XLXN_83
        SIGNAL XLXN_84
        SIGNAL XLXN_85
        BEGIN SIGNAL clock
        END SIGNAL
        SIGNAL clk
        PORT Output Q1
        PORT Input updown
        PORT Output Q2
        PORT Output Q3
        PORT Output Q0
        PORT Input clear
        PORT Input clk
        BEGIN BLOCKDEF fdc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            RECTANGLE N 64 -320 320 -64 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
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
        BEGIN BLOCKDEF m2_1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 96 -64 96 -192 
            LINE N 256 -96 96 -64 
            LINE N 256 -160 256 -96 
            LINE N 96 -192 256 -160 
            LINE N 176 -32 96 -32 
            LINE N 176 -80 176 -32 
            LINE N 0 -32 96 -32 
            LINE N 320 -128 256 -128 
            LINE N 0 -96 96 -96 
            LINE N 0 -160 96 -160 
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
        BEGIN BLOCKDEF ibufg
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 0 64 -64 
            LINE N 128 -32 64 0 
            LINE N 64 -64 128 -32 
            LINE N 224 -32 128 -32 
            LINE N 0 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fdc
            PIN C clock
            PIN CLR clear
            PIN D XLXN_77
            PIN Q Q3
        END BLOCK
        BEGIN BLOCK XLXI_3 fdc
            PIN C clock
            PIN CLR clear
            PIN D XLXN_24
            PIN Q Q1
        END BLOCK
        BEGIN BLOCK XLXI_14 or2
            PIN I0 Q0
            PIN I1 Q1
            PIN O XLXN_30
        END BLOCK
        BEGIN BLOCK XLXI_15 and2
            PIN I0 Q0
            PIN I1 Q1
            PIN O XLXN_31
        END BLOCK
        BEGIN BLOCK XLXI_10 m2_1
            PIN D0 XLXN_58
            PIN D1 XLXN_56
            PIN S0 updown
            PIN O XLXN_24
        END BLOCK
        BEGIN BLOCK XLXI_32 m2_1
            PIN D0 XLXN_31
            PIN D1 XLXN_30
            PIN S0 updown
            PIN O XLXN_63
        END BLOCK
        BEGIN BLOCK XLXI_34 xor2
            PIN I0 Q0
            PIN I1 Q1
            PIN O XLXN_58
        END BLOCK
        BEGIN BLOCK XLXI_36 inv
            PIN I XLXN_58
            PIN O XLXN_56
        END BLOCK
        BEGIN BLOCK XLXI_2 fdc
            PIN C clock
            PIN CLR clear
            PIN D XLXN_69
            PIN Q Q2
        END BLOCK
        BEGIN BLOCK XLXI_37 and2
            PIN I0 XLXN_63
            PIN I1 Q2
            PIN O XLXN_73
        END BLOCK
        BEGIN BLOCK XLXI_38 or2
            PIN I0 XLXN_63
            PIN I1 Q2
            PIN O XLXN_74
        END BLOCK
        BEGIN BLOCK XLXI_42 xor2
            PIN I0 XLXN_63
            PIN I1 Q2
            PIN O XLXN_66
        END BLOCK
        BEGIN BLOCK XLXI_44 m2_1
            PIN D0 XLXN_66
            PIN D1 XLXN_72
            PIN S0 updown
            PIN O XLXN_69
        END BLOCK
        BEGIN BLOCK XLXI_46 inv
            PIN I XLXN_66
            PIN O XLXN_72
        END BLOCK
        BEGIN BLOCK XLXI_47 m2_1
            PIN D0 XLXN_73
            PIN D1 XLXN_74
            PIN S0 updown
            PIN O XLXN_76
        END BLOCK
        BEGIN BLOCK XLXI_48 xor2
            PIN I0 XLXN_76
            PIN I1 Q3
            PIN O XLXN_79
        END BLOCK
        BEGIN BLOCK XLXI_49 m2_1
            PIN D0 XLXN_79
            PIN D1 XLXN_78
            PIN S0 updown
            PIN O XLXN_77
        END BLOCK
        BEGIN BLOCK XLXI_50 inv
            PIN I XLXN_79
            PIN O XLXN_78
        END BLOCK
        BEGIN BLOCK XLXI_9 inv
            PIN I Q0
            PIN O XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_4 fdc
            PIN C clock
            PIN CLR clear
            PIN D XLXN_1
            PIN Q Q0
        END BLOCK
        BEGIN BLOCK XLXI_53 ibufg
            PIN I clk
            PIN O clock
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_3 2080 1120 R0
        INSTANCE XLXI_15 2624 512 R180
        INSTANCE XLXI_14 2624 352 R180
        BEGIN BRANCH XLXN_30
            WIRE 2288 544 2352 544
            WIRE 2352 448 2368 448
            WIRE 2352 448 2352 544
        END BRANCH
        BEGIN BRANCH XLXN_31
            WIRE 2288 608 2368 608
        END BRANCH
        INSTANCE XLXI_34 2768 400 R270
        BEGIN BRANCH Q1
            WIRE 2464 864 2640 864
            WIRE 2640 864 2640 960
            WIRE 2624 480 2640 480
            WIRE 2640 480 2640 640
            WIRE 2640 640 2640 864
            WIRE 2624 640 2640 640
            WIRE 2640 400 2640 480
        END BRANCH
        BEGIN BRANCH XLXN_56
            WIRE 2256 224 2304 224
        END BRANCH
        BEGIN BRANCH updown
            WIRE 160 80 528 80
            WIRE 528 80 528 160
            WIRE 528 80 1408 80
            WIRE 1408 80 2288 80
            WIRE 2288 80 2288 160
            WIRE 2288 160 2288 480
            WIRE 1408 80 1408 160
            WIRE 1408 160 1408 480
            WIRE 496 160 528 160
            WIRE 1376 160 1408 160
            WIRE 2256 160 2288 160
        END BRANCH
        BEGIN BRANCH XLXN_58
            WIRE 2256 288 2560 288
            WIRE 2528 224 2560 224
            WIRE 2560 224 2560 288
            WIRE 2560 128 2672 128
            WIRE 2672 128 2672 144
            WIRE 2560 128 2560 224
        END BRANCH
        INSTANCE XLXI_36 2528 192 R180
        BEGIN BRANCH XLXN_24
            WIRE 1920 256 1920 864
            WIRE 1920 864 2080 864
            WIRE 1920 256 1936 256
        END BRANCH
        INSTANCE XLXI_10 2256 128 R180
        INSTANCE XLXI_2 1200 1120 R0
        INSTANCE XLXI_37 1744 512 R180
        BEGIN BRANCH Q2
            WIRE 1584 864 1760 864
            WIRE 1760 864 1760 960
            WIRE 1744 480 1760 480
            WIRE 1760 480 1760 640
            WIRE 1760 640 1760 864
            WIRE 1744 640 1760 640
            WIRE 1760 400 1760 480
        END BRANCH
        INSTANCE XLXI_38 1744 352 R180
        INSTANCE XLXI_42 1888 400 R270
        INSTANCE XLXI_32 2288 448 R180
        BEGIN BRANCH XLXN_63
            WIRE 1744 416 1824 416
            WIRE 1824 416 1824 576
            WIRE 1824 576 1968 576
            WIRE 1744 576 1824 576
            WIRE 1824 400 1824 416
        END BRANCH
        INSTANCE XLXI_44 1376 128 R180
        BEGIN BRANCH XLXN_69
            WIRE 1040 256 1056 256
            WIRE 1040 256 1040 864
            WIRE 1040 864 1200 864
        END BRANCH
        BEGIN BRANCH XLXN_66
            WIRE 1376 288 1680 288
            WIRE 1648 224 1680 224
            WIRE 1680 224 1680 288
            WIRE 1680 128 1792 128
            WIRE 1792 128 1792 144
            WIRE 1680 128 1680 224
        END BRANCH
        BEGIN BRANCH XLXN_72
            WIRE 1376 224 1424 224
        END BRANCH
        INSTANCE XLXI_46 1648 192 R180
        INSTANCE XLXI_47 1408 448 R180
        BEGIN BRANCH XLXN_73
            WIRE 1408 608 1488 608
        END BRANCH
        BEGIN BRANCH XLXN_74
            WIRE 1408 544 1472 544
            WIRE 1472 448 1488 448
            WIRE 1472 448 1472 544
        END BRANCH
        INSTANCE XLXI_1 320 1120 R0
        BEGIN BRANCH Q3
            WIRE 704 864 880 864
            WIRE 880 864 880 960
            WIRE 880 400 880 864
        END BRANCH
        INSTANCE XLXI_48 1008 400 R270
        BEGIN BRANCH XLXN_76
            WIRE 944 400 944 576
            WIRE 944 576 1088 576
        END BRANCH
        INSTANCE XLXI_49 496 128 R180
        BEGIN BRANCH XLXN_77
            WIRE 160 256 176 256
            WIRE 160 256 160 864
            WIRE 160 864 320 864
        END BRANCH
        BEGIN BRANCH XLXN_78
            WIRE 496 224 544 224
        END BRANCH
        INSTANCE XLXI_50 768 192 R180
        BEGIN BRANCH XLXN_79
            WIRE 496 288 800 288
            WIRE 768 224 800 224
            WIRE 800 224 800 288
            WIRE 800 128 912 128
            WIRE 912 128 912 144
            WIRE 800 128 800 224
        END BRANCH
        IOMARKER 160 80 updown R180 28
        INSTANCE XLXI_9 3264 608 R180
        INSTANCE XLXI_4 2960 1120 R0
        BEGIN BRANCH XLXN_1
            WIRE 2960 640 3040 640
            WIRE 2960 640 2960 864
        END BRANCH
        BEGIN BRANCH Q0
            WIRE 2624 416 2704 416
            WIRE 2704 416 3360 416
            WIRE 3360 416 3360 576
            WIRE 3360 576 3360 640
            WIRE 3360 640 3360 864
            WIRE 3360 864 3360 960
            WIRE 2624 576 3360 576
            WIRE 2704 400 2704 416
            WIRE 3264 640 3360 640
            WIRE 3344 864 3360 864
        END BRANCH
        IOMARKER 1760 960 Q2 R90 28
        IOMARKER 2640 960 Q1 R90 28
        IOMARKER 3360 960 Q0 R90 28
        IOMARKER 880 960 Q3 R90 28
        BEGIN BRANCH clear
            WIRE 160 1200 320 1200
            WIRE 320 1200 1200 1200
            WIRE 1200 1200 2080 1200
            WIRE 2080 1200 2400 1200
            WIRE 2400 1200 2960 1200
            WIRE 320 1088 320 1200
            WIRE 1200 1088 1200 1200
            WIRE 2080 1088 2080 1200
            WIRE 2960 1088 2960 1200
        END BRANCH
        BEGIN BRANCH clock
            WIRE 160 1360 240 1360
            WIRE 240 1360 1120 1360
            WIRE 1120 1360 2000 1360
            WIRE 2000 1360 2880 1360
            WIRE 240 992 320 992
            WIRE 240 992 240 1360
            WIRE 1120 992 1200 992
            WIRE 1120 992 1120 1360
            WIRE 2000 992 2080 992
            WIRE 2000 992 2000 1360
            WIRE 2880 992 2960 992
            WIRE 2880 992 2880 1360
        END BRANCH
        IOMARKER 160 1200 clear R180 28
        INSTANCE XLXI_53 192 1584 R270
        BEGIN BRANCH clk
            WIRE 160 1584 160 1616
        END BRANCH
        IOMARKER 160 1616 clk R90 28
    END SHEET
END SCHEMATIC
