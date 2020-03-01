`timescale 1ns / 1ns

module adder4(
    input [31:0] a,
    output [31:0] r
    );

    assign r = a + 4;

endmodule