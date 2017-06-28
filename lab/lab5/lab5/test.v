`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:56:43 06/27/2017 
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
    reg clock, reset;
    wire [3:0] AN;
    wire [6:0] C;
    //wire clk_div;
    //wire [1:0] ring;
    //wire [3:0] A, B;
    
    //clock_divider cd(clk_div, clock, reset);
    //ring_counter rc(ring, clock, reset);
    //timer t(A, B, clock, reset);
    digital_clock dc(C, AN, clock, reset);
    initial begin
        #0 clock=1;reset=0;
        //#300 reset=1;
        //#10 reset=0;
    end
    always #1 clock=~clock;
endmodule
