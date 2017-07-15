`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:39:02 07/11/2017 
// Design Name: 
// Module Name:    keypad_reader 
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
module keypad_reader(col, C, AN, display, row, clock, reset);
    input clock, reset;
    input [3:0] row;
    output [3:0] col, AN;
    output [6:0] C;
    //output [2:0] state;
    output [3:0] display;
    wire clock_1;
    wire [3:0] code;
    reg [2:0] state=0;
    reg [3:0] col=4'b1111;
    reg [3:0] display=4'b0000;
    reg or_row=0;
    clock_divider #(50000000) cd(clock_1, clock, reset);
    keypad_encoder ke(code, AN, row, col, clock_1, reset);
    ssd_driver ssd(C, code);
    
    always @(row) display=row;
    
    always @(posedge clock_1 or posedge reset) begin
        if (reset) begin    
            state=0;
            col=4'b1111;
        end
        else begin
            or_row = row[0] | row[1] | row[2] | row[3];
            case (state)
                3'd0: begin
                    if (or_row) begin
                        state=1;
                        col=4'b0001;
                    end
                end
                3'd1: begin
                    if (or_row) begin 
                        state=5;
                        col=4'b1111;
                    end
                    else begin 
                        state=2;
                        col=4'b0010;
                    end
                end
                3'd2: begin
                    if (or_row) begin 
                        state=5;
                        col=4'b1111;
                    end
                    else begin 
                        state=3;
                        col=4'b0100;
                    end
                end
                3'd3: begin
                    if (or_row) begin 
                        state=5;
                        col=4'b1111;
                    end
                    else begin 
                        state=4;
                        col=4'b1000;
                    end
                end
                3'd4: begin
                    if (or_row) begin 
                        state=5;
                        col=4'b1111;
                    end
                    else begin 
                        state=0;
                        col=4'b1111;
                    end
                end
                3'd5: begin
                    if (or_row) begin
                        col=4'b1111;
                    end
                    else begin
                        state=0;
                        col=4'b1111;
                    end
                end
            endcase
        end
    end
endmodule
