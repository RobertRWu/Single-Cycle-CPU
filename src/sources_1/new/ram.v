`timescale 1ns / 1ns

module ram (
    input clk,
    input ena, 
    input wena, 
    input [4:0] addr, 
    input [31:0] data_in,  
    output reg [31:0] data_out 
    );
    
    reg [31:0] temp[31:0];

    always @(posedge clk or ena or wena)
    begin
        if(1 == ena) begin
          if(1 == wena) begin
            temp[addr] <= data_in;
          end

          else
            data_out <= temp[addr];
        end
           
        else 
          data_out <= 32'bz;
        
    end
    
endmodule