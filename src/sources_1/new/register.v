//////////////////////////////////////////////////////////////////////////////////
// Engineer: Robert Wu
// 
// Create Date: 05/01/2019 11:24:22 AM
// Project Name: Single Cycle CPU with 31 Instructions Based on MIPS Architecture
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module register(
    input clk, 
    input rst, 
    input ena, 
    input [31:0] data_in, 
    output [31:0] data_out 
    );

    reg [31:0] data;

    always @ (negedge clk or posedge rst)
    begin
        if(rst == 1) begin
            data <= 0;
        end

        else begin
            if(ena == 1) begin
                data <= data_in;
            end
        end
    end
    
    assign data_out = data;

endmodule