`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:38:05 06/15/2017 
// Design Name: 
// Module Name:    Q1 
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
module Q1(F, A, B, sel);
    input [31:0] A, B;
    input sel;
    output [31:0] F;
    reg [31:0] F;
    
    always @(A, B, sel)
    begin
        if (sel == 0) F = A;
        else F = B;
    end
endmodule
