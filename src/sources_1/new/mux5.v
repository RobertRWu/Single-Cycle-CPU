`timescale 1ns / 1ns
module mux5(
    input [4:0] C0,
    input [4:0] C1,
    input [1:0] S0,
    output [4:0] oZ
    );

    reg [4:0] temp;

    always @(*) begin
        case(S0)
            2'b00: temp <= C0;
            2'b01: temp <= C1;
            2'b10: temp <= 5'b11111;
            2'b11: temp <= 5'b11111;
            default: temp <= 5'bz;
        endcase
   end
   
   assign oZ = temp;
   
endmodule