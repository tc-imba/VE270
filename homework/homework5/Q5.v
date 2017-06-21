`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:52:47 06/21/2017 
// Design Name: 
// Module Name:    Q5 
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
module Q5(counter, upper, clock);
    output [3:0] counter;
    output upper;
    input clock;
    reg [3:0] counter = 4'h0;
    reg upper = 0;
    always @(posedge clock)
    begin
        counter = counter + 1;
        if (counter[3]) upper = 1;
        else upper = 0;
    end
endmodule
