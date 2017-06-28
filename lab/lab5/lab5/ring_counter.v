`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:47:02 06/27/2017 
// Design Name: 
// Module Name:    ring_counter 
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
module ring_counter(Q, clock, reset);
    input clock, reset;
    output [1:0] Q;
    reg [1:0] Q = 0;
    always @(posedge clock or posedge reset) begin
        if (reset == 1) Q = 0;
        else Q = Q + 1;
    end
endmodule
