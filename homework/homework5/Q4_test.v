`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:54:31 06/17/2017 
// Design Name: 
// Module Name:    Q4_test 
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
module Q4_test();
    wire [3:0] counter; 
    reg cnt, clear, set, clock;
    Q4 UUT(counter, cnt, clear, set, clock);
    initial begin
        #0 cnt=0; clear=0; set=0; clock=0;
        #20 clear=1;
        #50 set=1; clear=0;
        #50 set=0; cnt=1;
    end
    initial #1000 $stop;
    always #25 clock = ~clock;
endmodule
