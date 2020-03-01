//////////////////////////////////////////////////////////////////////////////////
// Engineer: Robert Wu
// 
// Create Date: 05/01/2019 11:24:22 AM
// Project Name: Single Cycle CPU with 31 Instructions Based on MIPS Architecture
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module adder(
    input [31:0] a,
    input [31:0] b,
    output [31:0] r
    );

    assign r = a + b;
   
endmodule