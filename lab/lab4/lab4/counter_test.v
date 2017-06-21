`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:50:15 06/20/2017 
// Design Name: 
// Module Name:    counter_test 
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
module counter_test();
    wire [3:0] Q, AN;
    wire [6:0] C;
    reg clock, reset, updown;
    counter_verilog UUT(Q, C, AN, updown, reset, clock);
    initial begin
        #0 clock = 1; updown = 0; reset = 0;
        #500 updown = 1;
        #1000 $stop;
    end
    always begin
        #10 clock = ~clock;
    end
    initial begin
        #300 reset = 1;
        #25 reset = 0;
    end
endmodule
