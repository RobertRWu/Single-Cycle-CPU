//1752149 吴子睿 计一 
`timescale 1ns / 1ns

module mux2(
    input [31:0] C0,
    input [31:0] C1,
    input S0,
    output reg [31:0] oZ
    );

    always @ (C0 or C1 or S0) begin
        case(S0)
            1'b0: oZ <= C0;
            1'b1: oZ <= C1;
        endcase
   end
   
endmodule