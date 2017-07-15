`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:39:21 07/11/2017 
// Design Name: 
// Module Name:    keypad_encoder 
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
module keypad_encoder(code, AN, row, col, clock, reset);
    input [3:0] row, col;
    input clock, reset;
    output [3:0] code, AN;
    reg [3:0] code=0, AN=4'b1111;
    always @(posedge clock or posedge reset) begin
        if (reset) begin AN=4'b1111; end
        else begin
            if      (row==4'b0001 && col==4'b0001) begin code=4'b0000; AN=4'b1110; end
            else if (row==4'b0001 && col==4'b0010) begin code=4'b0001; AN=4'b1110; end
            else if (row==4'b0001 && col==4'b0100) begin code=4'b0010; AN=4'b1110; end
            else if (row==4'b0001 && col==4'b1000) begin code=4'b0011; AN=4'b1110; end
            else if (row==4'b0010 && col==4'b0001) begin code=4'b0100; AN=4'b1110; end
            else if (row==4'b0010 && col==4'b0010) begin code=4'b0101; AN=4'b1110; end
            else if (row==4'b0010 && col==4'b0100) begin code=4'b0110; AN=4'b1110; end
            else if (row==4'b0010 && col==4'b1000) begin code=4'b0111; AN=4'b1110; end
            else if (row==4'b0100 && col==4'b0001) begin code=4'b1000; AN=4'b1110; end
            else if (row==4'b0100 && col==4'b0010) begin code=4'b1001; AN=4'b1110; end
            else if (row==4'b0100 && col==4'b0100) begin code=4'b1010; AN=4'b1110; end
            else if (row==4'b0100 && col==4'b1000) begin code=4'b1011; AN=4'b1110; end
            else if (row==4'b1000 && col==4'b0001) begin code=4'b1100; AN=4'b1110; end
            else if (row==4'b1000 && col==4'b0010) begin code=4'b1101; AN=4'b1110; end
            else if (row==4'b1000 && col==4'b0100) begin code=4'b1110; AN=4'b1110; end
            else if (row==4'b1000 && col==4'b1000) begin code=4'b1111; AN=4'b1110; end
            else AN=4'b1111;
        end
    end
endmodule
