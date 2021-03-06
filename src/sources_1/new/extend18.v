//////////////////////////////////////////////////////////////////////////////////
// Engineer: Robert Wu
// 
// Create Date: 05/01/2019 11:24:22 AM
// Project Name: Single Cycle CPU with 31 Instructions Based on MIPS Architecture
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module extend18 (
    input [15:0] a,
    output [31:0] b
    );

    assign b = (a[15] == 0) ? {14'b0, a, 2'b00} : {14'b11111111111111, a, 2'b00};
    
endmodule