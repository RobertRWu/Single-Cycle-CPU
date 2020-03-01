`timescale 1ns / 1ns

module clz(
    input [31:0] data_in,
    input ena,
    output [31:0] data_out
    );
    
    reg [31:0] count;

    always @(*) begin
        if (ena) begin
            for (count = 0; count < 32 && data_in[31 - count] != 1; count = count) begin
                count = count + 1;
            end
        end
    end 

    assign data_out = count;

endmodule

