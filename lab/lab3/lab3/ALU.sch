VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_15
        SIGNAL XLXN_30
        SIGNAL XLXN_39
        SIGNAL XLXN_40
        SIGNAL XLXN_41
        SIGNAL XLXN_42
        SIGNAL S0
        SIGNAL A0
        SIGNAL A1
        SIGNAL A2
        SIGNAL A3
        SIGNAL XLXN_24
        SIGNAL XLXN_25
        SIGNAL XLXN_26
        SIGNAL XLXN_27
        SIGNAL B0
        SIGNAL B1
        SIGNAL B2
        SIGNAL B3
        SIGNAL XLXN_35
        SIGNAL XLXN_36
        SIGNAL XLXN_37
        SIGNAL XLXN_38
        SIGNAL XLXN_44
        SIGNAL XLXN_45
        SIGNAL XLXN_46
        SIGNAL XLXN_47
        SIGNAL S1
        SIGNAL XLXN_73
        SIGNAL XLXN_74
        SIGNAL XLXN_75
        SIGNAL XLXN_76
        SIGNAL XLXN_81
        SIGNAL XLXN_82
        SIGNAL XLXN_83
        SIGNAL XLXN_84
        SIGNAL XLXN_85
        SIGNAL XLXN_86
        SIGNAL XLXN_87
        SIGNAL XLXN_88
        SIGNAL XLXN_89
        SIGNAL XLXN_90
        SIGNAL XLXN_91
        SIGNAL XLXN_92
        SIGNAL XLXN_94
        SIGNAL XLXN_95
        SIGNAL XLXN_96
        SIGNAL XLXN_97
        SIGNAL XLXN_98
        SIGNAL XLXN_99
        SIGNAL XLXN_100
        SIGNAL XLXN_102
        SIGNAL XLXN_103
        SIGNAL XLXN_104
        SIGNAL XLXN_105
        SIGNAL XLXN_106
        SIGNAL XLXN_107
        SIGNAL XLXN_108
        SIGNAL XLXN_109
        SIGNAL Cout
        SIGNAL C0
        SIGNAL C1
        SIGNAL C2
        SIGNAL C3
        SIGNAL XLXN_118
        PORT Input S0
        PORT Input A0
        PORT Input A1
        PORT Input A2
        PORT Input A3
        PORT Input B0
        PORT Input B1
        PORT Input B2
        PORT Input B3
        PORT Input S1
        PORT Output Cout
        PORT Output C0
        PORT Output C1
        PORT Output C2
        PORT Output C3
        BEGIN BLOCKDEF add4
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 112 -832 112 -804 
            LINE N 64 -832 112 -832 
            LINE N 0 -832 64 -832 
            LINE N 0 -192 64 -192 
            LINE N 448 -352 384 -352 
            LINE N 448 -416 384 -416 
            LINE N 448 -480 384 -480 
            LINE N 448 -544 384 -544 
            LINE N 0 -256 64 -256 
            LINE N 0 -320 64 -320 
            LINE N 0 -384 64 -384 
            LINE N 0 -512 64 -512 
            LINE N 0 -576 64 -576 
            LINE N 0 -640 64 -640 
            LINE N 0 -704 64 -704 
            LINE N 240 -64 384 -64 
            LINE N 240 -124 240 -64 
            LINE N 336 -128 336 -148 
            LINE N 384 -128 336 -128 
            LINE N 384 -736 64 -816 
            LINE N 384 -160 384 -736 
            LINE N 64 -80 384 -160 
            LINE N 64 -416 64 -80 
            LINE N 144 -448 64 -416 
            LINE N 64 -480 144 -448 
            LINE N 64 -816 64 -480 
            LINE N 448 -64 384 -64 
            LINE N 448 -128 384 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF mux4
            TIMESTAMP 2017 6 13 10 32 40
            RECTANGLE N 64 -576 320 0 
            LINE N 64 -544 0 -544 
            LINE N 64 -288 0 -288 
            LINE N 64 -32 0 -32 
            LINE N 64 -480 0 -480 
            LINE N 64 -224 0 -224 
            LINE N 64 -416 0 -416 
            LINE N 64 -160 0 -160 
            LINE N 64 -352 0 -352 
            LINE N 64 -96 0 -96 
            LINE N 320 -544 384 -544 
            LINE N 320 -480 384 -480 
            LINE N 320 -416 384 -416 
            LINE N 320 -352 384 -352 
        END BLOCKDEF
        BEGIN BLOCKDEF inv4
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 224 -32 160 -32 
            LINE N 224 -96 160 -96 
            LINE N 224 -160 160 -160 
            LINE N 224 -224 160 -224 
            LINE N 0 -32 64 -32 
            LINE N 0 -96 64 -96 
            LINE N 0 -160 64 -160 
            LINE N 0 -224 64 -224 
            LINE N 64 -256 128 -224 
            LINE N 128 -224 64 -192 
            LINE N 64 -192 64 -256 
            CIRCLE N 128 -48 160 -16 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            LINE N 64 -128 128 -96 
            LINE N 128 -96 64 -64 
            LINE N 64 -64 64 -128 
            CIRCLE N 128 -112 160 -80 
            LINE N 64 -192 128 -160 
            LINE N 128 -160 64 -128 
            LINE N 64 -128 64 -192 
            CIRCLE N 128 -176 160 -144 
            CIRCLE N 128 -240 160 -208 
        END BLOCKDEF
        BEGIN BLOCKDEF and_4bit
            TIMESTAMP 2017 6 13 10 54 4
            RECTANGLE N 64 -512 320 0 
            LINE N 64 -480 0 -480 
            LINE N 64 -416 0 -416 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -480 384 -480 
            LINE N 320 -416 384 -416 
            LINE N 320 -352 384 -352 
            LINE N 320 -288 384 -288 
        END BLOCKDEF
        BEGIN BLOCKDEF or_4bit
            TIMESTAMP 2017 6 13 10 53 42
            RECTANGLE N 64 -512 320 0 
            LINE N 64 -480 0 -480 
            LINE N 64 -416 0 -416 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -480 384 -480 
            LINE N 320 -416 384 -416 
            LINE N 320 -352 384 -352 
            LINE N 320 -288 384 -288 
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
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 add4
            PIN A0 A0
            PIN A1 A1
            PIN A2 A2
            PIN A3 A3
            PIN B0 XLXN_24
            PIN B1 XLXN_25
            PIN B2 XLXN_26
            PIN B3 XLXN_27
            PIN CI S0
            PIN CO XLXN_108
            PIN OFL XLXN_118
            PIN S0 XLXN_44
            PIN S1 XLXN_45
            PIN S2 XLXN_46
            PIN S3 XLXN_47
        END BLOCK
        BEGIN BLOCK XLXI_2 mux4
            PIN A0 B0
            PIN B0 XLXN_38
            PIN S0 S0
            PIN A1 B1
            PIN B1 XLXN_37
            PIN A2 B2
            PIN B2 XLXN_36
            PIN A3 B3
            PIN B3 XLXN_35
            PIN C0 XLXN_24
            PIN C1 XLXN_25
            PIN C2 XLXN_26
            PIN C3 XLXN_27
        END BLOCK
        BEGIN BLOCK XLXI_10 inv4
            PIN I0 B3
            PIN I1 B2
            PIN I2 B1
            PIN I3 B0
            PIN O0 XLXN_35
            PIN O1 XLXN_36
            PIN O2 XLXN_37
            PIN O3 XLXN_38
        END BLOCK
        BEGIN BLOCK XLXI_11 mux4
            PIN A0 XLXN_44
            PIN B0 XLXN_104
            PIN S0 S1
            PIN A1 XLXN_45
            PIN B1 XLXN_105
            PIN A2 XLXN_46
            PIN B2 XLXN_106
            PIN A3 XLXN_47
            PIN B3 XLXN_107
            PIN C0 C0
            PIN C1 C1
            PIN C2 C2
            PIN C3 C3
        END BLOCK
        BEGIN BLOCK XLXI_18 and_4bit
            PIN A0 A0
            PIN A1 A1
            PIN A2 A2
            PIN A3 A3
            PIN B0 B0
            PIN B1 B1
            PIN B2 B2
            PIN B3 B3
            PIN C0 XLXN_94
            PIN C1 XLXN_95
            PIN C2 XLXN_96
            PIN C3 XLXN_97
        END BLOCK
        BEGIN BLOCK XLXI_19 or_4bit
            PIN A0 A0
            PIN A1 A1
            PIN A2 A2
            PIN A3 A3
            PIN B0 B0
            PIN B1 B1
            PIN B2 B2
            PIN B3 B3
            PIN C0 XLXN_98
            PIN C1 XLXN_99
            PIN C2 XLXN_100
            PIN C3 XLXN_102
        END BLOCK
        BEGIN BLOCK XLXI_20 mux4
            PIN A0 XLXN_94
            PIN B0 XLXN_98
            PIN S0 S0
            PIN A1 XLXN_95
            PIN B1 XLXN_99
            PIN A2 XLXN_96
            PIN B2 XLXN_100
            PIN A3 XLXN_97
            PIN B3 XLXN_102
            PIN C0 XLXN_104
            PIN C1 XLXN_105
            PIN C2 XLXN_106
            PIN C3 XLXN_107
        END BLOCK
        BEGIN BLOCK XLXI_21 m2_1
            PIN D0 XLXN_108
            PIN D1 XLXN_109
            PIN S0 S1
            PIN O Cout
        END BLOCK
        BEGIN BLOCK XLXI_22 gnd
            PIN G XLXN_109
        END BLOCK
        BEGIN BLOCK XLXI_23 vcc
            PIN P XLXN_118
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1504 1296 R0
        BEGIN BRANCH S0
            WIRE 16 112 256 112
            WIRE 16 112 16 464
            WIRE 16 464 1504 464
            WIRE 16 464 16 1424
            WIRE 16 1424 1088 1424
            WIRE 16 1424 16 2080
            WIRE 16 2080 1760 2080
        END BRANCH
        BEGIN BRANCH XLXN_24
            WIRE 1472 912 1504 912
        END BRANCH
        BEGIN BRANCH XLXN_25
            WIRE 1472 976 1504 976
        END BRANCH
        BEGIN BRANCH XLXN_26
            WIRE 1472 1040 1504 1040
        END BRANCH
        BEGIN BRANCH XLXN_27
            WIRE 1472 1104 1504 1104
        END BRANCH
        BEGIN INSTANCE XLXI_2 1088 1456 R0
        END INSTANCE
        BEGIN BRANCH B0
            WIRE 128 912 528 912
            WIRE 528 912 1088 912
            WIRE 528 912 528 1168
            WIRE 528 1168 832 1168
            WIRE 528 1168 528 1824
            WIRE 528 1824 1088 1824
            WIRE 528 1824 528 2416
            WIRE 528 2416 1088 2416
        END BRANCH
        BEGIN BRANCH B1
            WIRE 128 976 608 976
            WIRE 608 976 1088 976
            WIRE 608 976 608 1232
            WIRE 608 1232 832 1232
            WIRE 608 1232 608 1888
            WIRE 608 1888 1088 1888
            WIRE 608 1888 608 2480
            WIRE 608 2480 1088 2480
        END BRANCH
        BEGIN BRANCH B2
            WIRE 128 1040 672 1040
            WIRE 672 1040 1088 1040
            WIRE 672 1040 672 1296
            WIRE 672 1296 832 1296
            WIRE 672 1296 672 1952
            WIRE 672 1952 1088 1952
            WIRE 672 1952 672 2544
            WIRE 672 2544 1088 2544
        END BRANCH
        BEGIN BRANCH B3
            WIRE 128 1104 752 1104
            WIRE 752 1104 1088 1104
            WIRE 752 1104 752 1360
            WIRE 752 1360 832 1360
            WIRE 752 1360 752 2016
            WIRE 752 2016 1088 2016
            WIRE 752 2016 752 2608
            WIRE 752 2608 1088 2608
        END BRANCH
        BEGIN BRANCH XLXN_35
            WIRE 1056 1360 1088 1360
        END BRANCH
        BEGIN BRANCH XLXN_36
            WIRE 1056 1296 1088 1296
        END BRANCH
        BEGIN BRANCH XLXN_37
            WIRE 1056 1232 1088 1232
        END BRANCH
        BEGIN BRANCH XLXN_38
            WIRE 1056 1168 1088 1168
        END BRANCH
        INSTANCE XLXI_10 832 1392 R0
        BEGIN BRANCH XLXN_44
            WIRE 1952 752 1968 752
            WIRE 1968 752 2704 752
        END BRANCH
        BEGIN BRANCH XLXN_45
            WIRE 1952 816 1968 816
            WIRE 1968 816 2704 816
        END BRANCH
        BEGIN BRANCH XLXN_46
            WIRE 1952 880 1968 880
            WIRE 1968 880 2704 880
        END BRANCH
        BEGIN BRANCH XLXN_47
            WIRE 1952 944 1968 944
            WIRE 1968 944 2704 944
        END BRANCH
        BEGIN INSTANCE XLXI_11 2704 1296 R0
        END INSTANCE
        BEGIN BRANCH S1
            WIRE 1664 1440 1984 1440
            WIRE 1984 1440 2688 1440
            WIRE 1984 1360 1984 1440
            WIRE 2688 1264 2704 1264
            WIRE 2688 1264 2688 1440
        END BRANCH
        IOMARKER 256 112 S0 R0 28
        BEGIN INSTANCE XLXI_18 1088 2048 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_19 1088 2640 R0
        END INSTANCE
        IOMARKER 128 912 B0 R180 28
        IOMARKER 128 976 B1 R180 28
        IOMARKER 128 1040 B2 R180 28
        IOMARKER 128 1104 B3 R180 28
        IOMARKER 128 592 A0 R180 28
        IOMARKER 128 656 A1 R180 28
        IOMARKER 128 720 A2 R180 28
        IOMARKER 128 784 A3 R180 28
        BEGIN BRANCH A3
            WIRE 128 784 368 784
            WIRE 368 784 1488 784
            WIRE 1488 784 1504 784
            WIRE 368 784 368 1760
            WIRE 368 1760 1088 1760
            WIRE 368 1760 368 2352
            WIRE 368 2352 1088 2352
        END BRANCH
        BEGIN BRANCH A2
            WIRE 128 720 304 720
            WIRE 304 720 1488 720
            WIRE 1488 720 1504 720
            WIRE 304 720 304 1696
            WIRE 304 1696 1088 1696
            WIRE 304 1696 304 2288
            WIRE 304 2288 1088 2288
        END BRANCH
        BEGIN BRANCH A1
            WIRE 128 656 240 656
            WIRE 240 656 1488 656
            WIRE 1488 656 1504 656
            WIRE 240 656 240 1632
            WIRE 240 1632 1088 1632
            WIRE 240 1632 240 2224
            WIRE 240 2224 1088 2224
        END BRANCH
        BEGIN BRANCH A0
            WIRE 128 592 160 592
            WIRE 160 592 1488 592
            WIRE 1488 592 1504 592
            WIRE 160 592 160 1568
            WIRE 160 1568 1088 1568
            WIRE 160 1568 160 2160
            WIRE 160 2160 1088 2160
        END BRANCH
        BEGIN INSTANCE XLXI_20 1760 2112 R0
        END INSTANCE
        BEGIN BRANCH XLXN_94
            WIRE 1472 1568 1488 1568
            WIRE 1488 1568 1760 1568
        END BRANCH
        BEGIN BRANCH XLXN_95
            WIRE 1472 1632 1488 1632
            WIRE 1488 1632 1760 1632
        END BRANCH
        BEGIN BRANCH XLXN_96
            WIRE 1472 1696 1488 1696
            WIRE 1488 1696 1760 1696
        END BRANCH
        BEGIN BRANCH XLXN_97
            WIRE 1472 1760 1488 1760
            WIRE 1488 1760 1760 1760
        END BRANCH
        BEGIN BRANCH XLXN_98
            WIRE 1472 2160 1488 2160
            WIRE 1488 2160 1616 2160
            WIRE 1616 1824 1616 2160
            WIRE 1616 1824 1760 1824
        END BRANCH
        BEGIN BRANCH XLXN_99
            WIRE 1472 2224 1488 2224
            WIRE 1488 2224 1632 2224
            WIRE 1632 1888 1632 2224
            WIRE 1632 1888 1760 1888
        END BRANCH
        BEGIN BRANCH XLXN_100
            WIRE 1472 2288 1488 2288
            WIRE 1488 2288 1648 2288
            WIRE 1648 1952 1648 2288
            WIRE 1648 1952 1760 1952
        END BRANCH
        BEGIN BRANCH XLXN_102
            WIRE 1472 2352 1664 2352
            WIRE 1664 2016 1664 2352
            WIRE 1664 2016 1760 2016
        END BRANCH
        BEGIN BRANCH XLXN_104
            WIRE 2144 1568 2416 1568
            WIRE 2416 1008 2416 1568
            WIRE 2416 1008 2704 1008
        END BRANCH
        BEGIN BRANCH XLXN_105
            WIRE 2144 1632 2432 1632
            WIRE 2432 1072 2432 1632
            WIRE 2432 1072 2704 1072
        END BRANCH
        BEGIN BRANCH XLXN_106
            WIRE 2144 1696 2448 1696
            WIRE 2448 1136 2448 1696
            WIRE 2448 1136 2704 1136
        END BRANCH
        BEGIN BRANCH XLXN_107
            WIRE 2144 1760 2464 1760
            WIRE 2464 1200 2464 1760
            WIRE 2464 1200 2704 1200
        END BRANCH
        BEGIN BRANCH XLXN_108
            WIRE 1952 1232 1968 1232
            WIRE 1968 1232 1984 1232
        END BRANCH
        INSTANCE XLXI_21 1984 1392 R0
        IOMARKER 1664 1440 S1 R180 28
        BEGIN BRANCH XLXN_109
            WIRE 1856 1296 1872 1296
            WIRE 1872 1296 1984 1296
        END BRANCH
        INSTANCE XLXI_22 1728 1232 R90
        BEGIN BRANCH Cout
            WIRE 2304 1264 2336 1264
        END BRANCH
        IOMARKER 2336 1264 Cout R0 28
        BEGIN BRANCH C0
            WIRE 3088 752 3120 752
        END BRANCH
        IOMARKER 3120 752 C0 R0 28
        BEGIN BRANCH C1
            WIRE 3088 816 3120 816
        END BRANCH
        IOMARKER 3120 816 C1 R0 28
        BEGIN BRANCH C2
            WIRE 3088 880 3120 880
        END BRANCH
        IOMARKER 3120 880 C2 R0 28
        BEGIN BRANCH C3
            WIRE 3088 944 3120 944
        END BRANCH
        IOMARKER 3120 944 C3 R0 28
        BEGIN BRANCH XLXN_118
            WIRE 1952 1168 1968 1168
            WIRE 1968 1168 1984 1168
        END BRANCH
        INSTANCE XLXI_23 1920 1168 R0
    END SHEET
END SCHEMATIC
