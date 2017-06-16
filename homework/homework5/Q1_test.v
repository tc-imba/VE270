`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:13:40 06/15/2017 
// Design Name: 
// Module Name:    Q1_test 
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
module Q1_test();
    wire [31:0] F;
    reg [31:0] A, B;
    reg sel;
    Q1 UUT (F, A, B, sel);
    initial begin
        #0 sel=0; A=32'h12345678; B=32'h87654321;
        #50 sel=1;
        #50 sel=0; A=32'h9abcdef; B=32'hfedcba9;
        #50 sel=1;
        #50 $stop;
    end
endmodule
