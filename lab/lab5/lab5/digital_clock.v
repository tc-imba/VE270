`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:50:20 06/27/2017 
// Design Name: 
// Module Name:    digital_clock 
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
module digital_clock(C, AN, clock, reset);
    input clock, reset;
    output [6:0] C;
    output [3:0] AN;
    wire clock_500, clock_1;
    wire [1:0] ring;
    wire [3:0] A, B;
    reg [3:0] Q = 4'ha;
    reg [3:0] AN = 4'hf;
    clock_divider #(100000) cd1(clock_500, clock, reset);
    clock_divider #(500) cd2(clock_1, clock_500, reset);
    ring_counter rc(ring, clock_500, reset);
    timer t(A, B, clock_1, reset);
    ssd_driver ssd(C, Q);
    
    always @(ring) begin
        case (ring)
            2'b00: begin Q = 4'ha; AN = 4'b0111; end
            2'b01: begin Q = 4'ha; AN = 4'b1011; end
            2'b10: begin Q = B; AN = 4'b1101; end
            2'b11: begin Q = A; AN = 4'b1110; end
            default: begin Q = 4'ha; AN = 4'b1111; end
        endcase
    end

endmodule
