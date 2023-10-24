`timescale 1ns / 1ps

module CLA_Adder_tb();

reg [3:0] At, Bt;
reg Cint;
wire Coutt;
wire [3:0] Sumt;

CLA_Adder uut0(.A(At), .B(Bt), .Cin(Cint), .Cout(Coutt),.S(Sumt));

initial begin
    At = 1; Bt = 0; Cint = 0; #1;
    At = 2; Bt = 4; Cint = 1; #1;
    At = 4'hb; Bt = 4'h6; Cint = 0; #1;
    At = 5; Bt = 3; Cint = 1; #1;
    $finish;
end 


endmodule
