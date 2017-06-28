`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:43:15 06/27/2017 
// Design Name: 
// Module Name:    timer 
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
module timer(A, B, clock, reset);
    input clock, reset;
    output [3:0] A, B;
    reg [3:0] A = 0, B = 0;
    always @(posedge clock or posedge reset) begin
        if (reset == 1) begin
            A = 0; B = 0;
        end
        else begin
            if (A < 9) A = A + 1;
            else begin
                A = 0;
                if (B < 5) B = B + 1;
                else B = 0;
            end
        end
    end
endmodule
