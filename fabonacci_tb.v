`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.02.2024 12:11:29
// Design Name: 
// Module Name: fabonacci_tb
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


module fabonacci_tb();
    reg clk = 0;
    reg rst = 1;
    wire [31:0] out;
    // Instantiate the Fibonacci module
    fibonacci_series uut (
        .clk(clk),
        .rst(rst),
        .out(out)
    );
    // Generate clock
    always #5 clk = !clk; // 100 MHz clock
    // Test sequence
    initial begin
        // Reset sequence
        #10 rst = 0; // Release reset after 10 time units
        // Observe output
        #1000; // Let it run for 1000 time units
        // End simulation
        $finish;
    end
    // Monitor changes
    initial begin
        $monitor("Time = %0t | Fibonacci number = %0d", $time, out);
    end
endmodule
