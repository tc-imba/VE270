`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:36:27 06/16/2017 
// Design Name: 
// Module Name:    Q3 
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
module Q3(x, clock);
    parameter f0 = 1;
    input clock;
    output [3:0] x;
    reg [3:0] x = 4'h0;
    reg f = f0;
    always @(posedge clock)
    begin
        x[0] <= x[1];
        x[1] <= x[2];
        x[2] <= x[3];
        x[3] <= f;
        f <= x[3] ^ x[0];
    end
endmodule
