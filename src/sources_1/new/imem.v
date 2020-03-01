//1752149 吴子�? 计一
`timescale 1ns / 1ns

module imem (
    input rena,
    input [31:0] addr,
    output [31:0] data_out
    );

    reg [31:0] temp [1023:0];

    assign data_out = (rena == 1) ? temp[(addr - 32'h00400000) / 4] : 32'bz;
    
endmodule