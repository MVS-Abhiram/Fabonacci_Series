`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2024 11:59:34
// Design Name: 
// Module Name: fabonacci_series
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fibonacci_series(
    input wire clk,
    input wire rst,
    output reg [31:0] out
);
    reg [31:0] a = 0;
    reg [31:0] b = 1;
    reg [31:0] next;
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            a <= 0;
            b <= 1;
            out <= 0;
        end else begin
            next = a + b; // Calculate the next number in the series
            a <= b;       // Shift the window
            b <= next;
            out <= next;  // Output the next Fibonacci number
        end
    end

endmodule

