`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:34:36 07/25/2017 
// Design Name: 
// Module Name:    digital_device 
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
module digital_device(C, AN, led, clock, number, push);
    input clock, push;
    input [3:0] number;
    output [6:0] C;
    output [3:0] AN;
    output led;
    wire clock_500, clock_1;
    wire [1:0] ring;
    wire [3:0] A, B;
    wire reset = 0;
    reg [3:0] Q = 4'ha;
    reg [3:0] Q1=4'h0, Q2=4'h0, Q3=4'h0, Q4=4'h0, Q5=4'h0;
    reg [3:0] AN = 4'hf;
    reg [1:0] ssd_ctl = 2'h0;
    reg [1:0] c1=2'h2, c2=2'h2, c3=2'h2, c4=2'h2, c5=2'h2, c6=2'h2;
    reg led = 0;
    reg type = 0;
    reg [3:0] xuehao = 4'h0;
    reg [3:0] M = 4'h0;
    reg [3:0] new = 4'h0;
    
    clock_divider #(100000) cd1(clock_500, clock, reset);
    clock_divider #(250) cd2(clock_1, clock_500, reset);
    ring_counter rc(ring, clock_500, reset);
    //timer t(A, B, clock_1, reset);
    ssd_driver ssd(C, Q, ssd_ctl);
    
    always @(ring) begin
        if (type==0) begin
            case (ring)
                2'b00: begin Q = Q1; ssd_ctl = c1; AN = 4'b0111; end
                2'b01: begin Q = Q2; ssd_ctl = c2; AN = 4'b1011; end
                2'b10: begin Q = Q3; ssd_ctl = c3; AN = 4'b1101; end
                2'b11: begin Q = Q4; ssd_ctl = c4; AN = 4'b1110; end
                default: begin Q = Q1; ssd_ctl = c1; AN = 4'b1111; end
            endcase
        end else begin
            case (ring)
                2'b00: begin ssd_ctl = 4'h2; AN = 4'b0111; end
                2'b01: begin ssd_ctl = 4'h2; AN = 4'b1011; end
                2'b10: begin ssd_ctl = c5; AN = 4'b1101; end
                2'b11: begin Q = Q5; ssd_ctl = c6; AN = 4'b1110; end
                default: begin AN = 4'b1111; end
            endcase
        end
    end
    
    always @(posedge clock_1) begin
        if (type==0) begin
            case (xuehao)
                4'h0: begin Q4 = 4'h5; c4 = 4'h0; end
                4'h1: begin Q4 = 4'h1; Q3 = 4'h5; c3 = 4'h0; end
                4'h2: begin Q4 = 4'h5; Q3 = 4'h1; Q2 = 4'h5; c2 = 4'h0; end
                4'h3: begin Q4 = 4'h3; Q3 = 4'h5; Q2 = 4'h1; Q1 = 4'h5; c1 = 4'h0; end
                4'h4: begin Q4 = 4'h7; Q3 = 4'h3; Q2 = 4'h5; Q1 = 4'h1; end
                4'h5: begin Q4 = 4'h0; Q3 = 4'h7; Q2 = 4'h3; Q1 = 4'h5; end
                4'h6: begin Q4 = 4'h9; Q3 = 4'h0; Q2 = 4'h7; Q1 = 4'h3; end
                4'h7: begin Q4 = 4'h1; Q3 = 4'h9; Q2 = 4'h0; Q1 = 4'h7; end
                4'h8: begin Q4 = 4'h0; Q3 = 4'h1; Q2 = 4'h9; Q1 = 4'h0; end
                4'h9: begin Q4 = 4'h2; Q3 = 4'h0; Q2 = 4'h1; Q1 = 4'h9; end
                4'ha: begin Q4 = 4'h0; Q3 = 4'h2; Q2 = 4'h0; Q1 = 4'h1; end
                4'hb: begin Q4 = 4'h7; Q3 = 4'h0; Q2 = 4'h2; Q1 = 4'h0; end
                4'hc: begin c4 = 4'h2; Q3 = 4'h7; Q2 = 4'h0; Q1 = 4'h2; end
                4'hd: begin c3 = 4'h2;            Q2 = 4'h7; Q1 = 4'h0; end
                4'he: begin c2 = 4'h2;                        Q1 = 4'h7; end
                4'hf: begin c1 = 4'h2; type = 1; end
            endcase
            xuehao = xuehao + 1;
        end
    end
    
    always @(posedge push) begin
        if (type==1) begin
            new = M + number;
            if (M[3] == number[3] && M[3] ^ new[3]) begin
                led = 1;
            end else begin
                led = 0;
            end
            M = new;
            if (M[3] == 1) begin
                Q5 = ~(M-1);
                c5 = 4'h1;
                c6 = 4'h0;
            end else begin
                Q5 = M;
                c5 = 4'h2;
                c6 = 4'h0;
            end
        end
    end
    
endmodule
