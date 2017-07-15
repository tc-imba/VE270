`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:33:38 07/11/2017 
// Design Name: 
// Module Name:    test 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module test();
    wire [3:0] col, AN;
    wire [6:0] C;
    wire [2:0] state;
    reg [3:0] row;
    reg clock, reset;
    keypad_reader UUT(col, C, AN, state, row, clock, reset);
    initial begin
        #0 clock=1;reset=0;row=0;
        #5 row=4'b0001;
        #20 row=4'b0000;
    end
    always #1 clock=~clock;
endmodule
