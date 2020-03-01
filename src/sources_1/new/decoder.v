`timescale 1ns / 1ns

module decoder(
    input [4:0] iData,      
    (* DONT_TOUCH = "1" *) input iEna,            
    output [31:0] oData      
    );        
    
    assign oData = (iEna == 1) ? (32'h00000001 << iData) : 32'bz;
    
endmodule
