`timescale 1ns / 1ps

module CLA_Adder(
        input Cin,
        input [3:0] A, B,
        output Cout,
        output [3:0] S
    );
    
    wire [3:0] p;
    wire [3:0] G;
    wire [4:0] C;
    
    
    assign p[0] = A[0] ^ B[0];
    assign p[1] = A[1] ^ B[1];
    assign p[2] = A[2] ^ B[2];
    assign p[3] = A[3] ^ B[3];
    
    assign G[0] = A[0] & B[0];    
    assign G[1] = A[1] & B[1];  
    assign G[2] = A[2] & B[2];  
    assign G[3] = A[3] & B[3];  
    
    assign S[0] = p[0] ^ C[0];
    assign S[1] = p[1] ^ C[1];
    assign S[2] = p[2] ^ C[2];
    assign S[3] = p[3] ^ C[3];
    
    assign C[0] = Cin;
    assign C[1] = (C[0] * p[0]) + G[0];
    assign C[2] = (C[1] * p[1]) + G[1];
    assign C[3] = (C[2] * p[2]) + G[2];
    assign C[4] = (C[3] * p[3]) + G[3];
    assign Cout = C[4];
    
endmodule
