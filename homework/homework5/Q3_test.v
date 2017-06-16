`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:53:33 06/16/2017 
// Design Name: 
// Module Name:    Q3_test 
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
module Q3_test();
    wire [3:0] x;
    reg clock;
    Q3 UUT(x, clock);
    initial begin
        #0 clock = 1;
        #1000 $stop;
    end
    always begin
        #25 clock = ~clock;
    end
endmodule
