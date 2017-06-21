`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:55:48 06/21/2017 
// Design Name: 
// Module Name:    Q5_test 
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
module Q5_test();
    wire [3:0] counter;
    wire upper; 
    reg clock;
    Q5 UUT(counter, upper, clock);
    initial begin
        #0 clock=0;
        #1000 $stop;
    end
    always #25 clock = ~clock;
endmodule
