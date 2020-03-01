//1752149 吴子�? 计一
`timescale 1ns / 1ns

module extend_cut(
    input [31:0] data_in,
    input [2:0] EC_CS,
    input SIGN_EC,
    output [31:0] data_out
    );
    
    reg [31:0] temp;
    
    always @ (*) begin
        case(EC_CS)
            3'b001: temp <= {(SIGN_EC && data_in[15]) ? 16'hffff : 16'h0000, data_in[15:0]};
            3'b010: temp <= {(SIGN_EC && data_in[7]) ? 24'hffffff : 24'h000000, data_in[7:0]};
            3'b011: temp <= {24'h000000, data_in[7:0]};
            3'b100: temp <= {16'h0000, data_in[15:0]};
            default: temp <= data_in;
        endcase
    end
    
    assign data_out = temp;
    
endmodule

