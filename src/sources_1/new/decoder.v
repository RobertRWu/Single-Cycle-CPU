//////////////////////////////////////////////////////////////////////////////////
// Engineer: Robert Wu
// 
// Create Date: 05/01/2019 11:24:22 AM
// Project Name: Single Cycle CPU with 31 Instructions Based on MIPS Architecture
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module decoder(
    input [4:0] iData,      
    (* DONT_TOUCH = "1" *) input iEna,            
    output [31:0] oData      
    );        
    
    assign oData = (iEna == 1) ? (32'h00000001 << iData) : 32'bz;
    
endmodule
