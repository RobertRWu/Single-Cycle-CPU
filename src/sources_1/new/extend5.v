//////////////////////////////////////////////////////////////////////////////////
// Engineer: Robert Wu
// 
// Create Date: 05/01/2019 11:24:22 AM
// Project Name: Single Cycle CPU with 31 Instructions Based on MIPS Architecture
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module extend5 (
    input [4:0] a,
    output [31:0] b
    );

    assign b = {27'b0, a};
    
endmodule