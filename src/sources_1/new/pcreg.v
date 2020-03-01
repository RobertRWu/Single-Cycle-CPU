//1752149 吴子�? 计一
`timescale 1ns / 1ns

module pcreg(
    input clk, 
    input rst, 
    input ena, 
    input [31:0] data_in, 
    output [31:0] data_out 
    );

    reg [31:0] pc;

    always @ (negedge clk or posedge rst)
    begin
        if(rst == 1) begin
            pc <= 32'h00400000;
        end

        else begin
            if(ena == 1) begin
                pc <= data_in;
            end
        end
    end
    
    assign data_out = pc;

endmodule