`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:30:51 06/16/2017 
// Design Name: 
// Module Name:    Q4 
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
module Q4(counter, cnt, clear, set, clock);
    input cnt, clear, set, clock;
    output [3:0] counter;
    reg [3:0] counter = 4'b1111;
    always @(posedge clock)
    begin
        if (clear == 1) counter = 4'b1111;
        else if (set == 1) counter = 4'b0000;
        else if (cnt == 1) counter = counter - 1;
    end
endmodule
