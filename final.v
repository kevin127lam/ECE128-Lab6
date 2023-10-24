`timescale 1ns / 1ps

module final(
    input Cin,
    input [3:0] A, B,
    input en,
    input clk,
    output [15:0] bcd_d_out,
    output rdy
);

wire [11:0] finalSum;
wire Cout;
wire [3:0] S;


CLA_Adder uut0(.Cin(Cin), .A(A), .B(B), .Cout(Cout), .S(S));
assign finalSum = {7'b0000000, Cout, S};
bin2BCD uut1(.clk(clk), .en(en), .bin_d_in(finalSum), .bcd_d_out(bcd_d_out), .rdy(rdy));

endmodule
