//////////////////////////////////////////////////////////////////////////////////
// Engineer: Robert Wu
// 
// Create Date: 05/01/2019 11:24:22 AM
// Project Name: Single Cycle CPU with 31 Instructions Based on MIPS Architecture
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module inst_decoder(
    input [31:0] inst_code,
    output reg [31:0] i
    );

    parameter Add = 12'b000000100000;
    parameter Addu = 12'b000000100001;
    parameter Sub = 12'b000000100010;
    parameter Subu = 12'b000000100011;
    parameter And = 12'b000000100100;
    parameter Or = 12'b000000100101;
    parameter Xor = 12'b000000100110;
    parameter Nor = 12'b000000100111;
    parameter Slt = 12'b000000101010;
    parameter Sltu = 12'b000000101011;
    parameter Sll = 12'b000000000000;
    parameter Srl = 12'b000000000010;
    parameter Sra = 12'b000000000011;
    parameter Sllv = 12'b000000000100;
    parameter Srlv = 12'b000000000110;
    parameter Srav = 12'b000000000111;
    parameter Jr = 12'b000000001000;
    parameter Addi = 12'b001000??????;
    parameter Addiu = 12'b001001??????;
    parameter Andi = 12'b001100??????;
    parameter Ori = 12'b001101??????;
    parameter Xori = 12'b001110??????;
    parameter Lw = 12'b100011??????;
    parameter Sw = 12'b101011??????;
    parameter Beq = 12'b000100??????;
    parameter Bne = 12'b000101??????;
    parameter Slti = 12'b001010??????;
    parameter Sltiu = 12'b001011??????;
    parameter Lui = 12'b001111??????;
    parameter J = 12'b000010??????;
    parameter Jal = 12'b000011??????;

    wire [11:0] t;
    assign t = {inst_code[31:26], inst_code[5:0]};

    always @ (*) begin
        casez(t)
            Add: i = 32'b00000000000000000000000000000001;   //0
            Addu: i = 32'b00000000000000000000000000000010;  //1
            Subu: i = 32'b00000000000000000000000000000100;  //2
            Sub: i = 32'b00000000000000000000000000001000;   //3
            And: i = 32'b00000000000000000000000000010000;   //4
            Or: i = 32'b00000000000000000000000000100000;    //5
            Xor: i = 32'b00000000000000000000000001000000;   //6
            Nor: i = 32'b00000000000000000000000010000000;   //7
            Slt: i = 32'b00000000000000000000000100000000;   //8
            Sltu: i = 32'b00000000000000000000001000000000;  //9
            Sll: i = 32'b00000000000000000000010000000000;   //10
            Srl: i = 32'b00000000000000000000100000000000;   //11
            Sra: i = 32'b00000000000000000001000000000000;   //12
            Sllv: i = 32'b00000000000000000010000000000000;  //13
            Srlv: i = 32'b00000000000000000100000000000000;  //14
            Srav: i = 32'b00000000000000001000000000000000;  //15
            Jr: i = 32'b00000000000000010000000000000000;    //16
            Addi: i = 32'b00000000000000100000000000000000;  //17
            Addiu: i = 32'b00000000000001000000000000000000; //18
            Andi: i = 32'b00000000000010000000000000000000;  //19
            Ori: i = 32'b00000000000100000000000000000000;   //20
            Xori: i = 32'b00000000001000000000000000000000;  //21
            Lw: i = 32'b00000000010000000000000000000000;    //22
            Sw: i = 32'b00000000100000000000000000000000;    //23
            Beq: i = 32'b00000001000000000000000000000000;   //24
            Bne: i = 32'b00000010000000000000000000000000;   //25
            Slti: i = 32'b00000100000000000000000000000000;  //26
            Sltiu: i = 32'b00001000000000000000000000000000; //27
            Lui: i = 32'b00010000000000000000000000000000;   //28
            J: i = 32'b00100000000000000000000000000000;     //29
            Jal: i = 32'b01000000000000000000000000000000;   //30
            default: i = 32'bx;
        endcase
    end

endmodule
