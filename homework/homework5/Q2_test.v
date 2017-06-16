`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:01:35 06/16/2017 
// Design Name: 
// Module Name:    Q2_test 
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
module Q2_test();
    wire [3:0] Data_out;
    reg clock, reset;
    reg [3:0] Data_in;
    Q2 UUT(Data_out, Data_in, clock, reset);
    initial begin
        #0 clock = 0; reset = 0; Data_in = 4'h0;
        #25 Data_in = 4'h1;
        #25 Data_in = 4'h2;
        #25 Data_in = 4'h3;
        #25 Data_in = 4'h4;
        #25 Data_in = 4'h5;
        #25 Data_in = 4'h6;
        #25 Data_in = 4'h7;
        #25 Data_in = 4'h8;
        #25 Data_in = 4'h9;
        #25 Data_in = 4'ha;
        #25 Data_in = 4'hb;
        #25 Data_in = 4'hc;
        #25 Data_in = 4'hd;
        #25 Data_in = 4'he;
        #25 Data_in = 4'hf;
        #25 $stop;
    end
    always begin
        #0 clock = 0;
        #35 clock = 1;
        #5 clock = 0;
        #35 clock = 0;
    end
    always begin
        #80 reset = 1;
        #5 reset = 0;
    end
endmodule
