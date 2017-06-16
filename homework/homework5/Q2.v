`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:52:42 06/15/2017 
// Design Name: 
// Module Name:    Q2 
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
module Q2(Data_out, Data_in, clock, reset);
	input [3:0] Data_in;
    input clock, reset;
    output [3:0] Data_out;
    d_flip_flop d0(Data_out[0], Data_in[0], clock, reset);
    d_flip_flop d1(Data_out[1], Data_in[1], clock, reset);
    d_flip_flop d2(Data_out[2], Data_in[2], clock, reset);
    d_flip_flop d3(Data_out[3], Data_in[3], clock, reset);
endmodule

module d_flip_flop(Data_out, Data_in, clock, reset);
    input Data_in, clock, reset;
    output Data_out;
    reg Data_out;
    always @(posedge clock or posedge reset)
    begin
        if (reset == 1) Data_out = 0;
        else Data_out = Data_in;
    end
endmodule
