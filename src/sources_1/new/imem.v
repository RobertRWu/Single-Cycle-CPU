//////////////////////////////////////////////////////////////////////////////////
// Engineer: Robert Wu
// 
// Create Date: 05/01/2019 11:24:22 AM
// Project Name: Single Cycle CPU with 31 Instructions Based on MIPS Architecture
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module imem (
    input rena,
    input [31:0] addr,
    output [31:0] data_out
    );

    reg [31:0] temp [1023:0];

    assign data_out = (rena == 1) ? temp[(addr - 32'h00400000) / 4] : 32'bz;
    
endmodule