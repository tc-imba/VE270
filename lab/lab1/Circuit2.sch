VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL C
        SIGNAL B
        SIGNAL A
        SIGNAL Carry
        SIGNAL S
        PORT Input C
        PORT Input B
        PORT Input A
        PORT Output Carry
        PORT Output S
        BEGIN BLOCKDEF Circuit1
            TIMESTAMP 2017 5 23 10 58 22
            RECTANGLE N 64 -192 192 -64 
            LINE N 96 -192 96 -256 
            LINE N 160 -192 160 -256 
            LINE N 192 -160 256 -160 
            LINE N 64 -160 0 -160 
            LINE N 96 -64 96 0 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 Circuit1
            PIN A A
            PIN B B
            PIN Cin C
            PIN Cout Carry
            PIN Sum S
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1472 1344 R0
        END INSTANCE
        BEGIN BRANCH C
            WIRE 1728 1184 1760 1184
        END BRANCH
        IOMARKER 1760 1184 C R0 28
        BEGIN BRANCH B
            WIRE 1632 1056 1632 1088
        END BRANCH
        IOMARKER 1632 1056 B R270 28
        BEGIN BRANCH A
            WIRE 1568 1056 1568 1088
        END BRANCH
        IOMARKER 1568 1056 A R270 28
        BEGIN BRANCH Carry
            WIRE 1440 1184 1472 1184
        END BRANCH
        IOMARKER 1440 1184 Carry R180 28
        BEGIN BRANCH S
            WIRE 1568 1344 1568 1376
        END BRANCH
        IOMARKER 1568 1376 S R90 28
    END SHEET
END SCHEMATIC
