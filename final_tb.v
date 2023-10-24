`timescale 1ns / 1ps

module final_tb();

    reg Cin;
    reg [3:0] A, B;
    reg en = 0;
    reg clk = 0;
    wire [15:0] bcd_d_out;
    wire rdy;
    
    final uut2(.Cin(Cin), .A(A), .B(B), .en(en), .clk(clk), .bcd_d_out(bcd_d_out), .rdy(rdy));


    initial begin 
        forever begin
                #10 clk=~clk;
            end
    end
    
     initial
        begin
        forever
        begin
        A = 4'b0001; B = 4'b0000; Cin = 0;
        en = 1;
        #20 //en must catch rising edge of clk
        en = 0;
        #620; 
        
        A = 4'b0001; B = 4'b0010; Cin = 0;
        en = 1;
        #20
        en = 0;
        #620; 
        
        A = 4'b1010; B = 4'b0100; Cin = 0;
        en = 1;
        #20
        en = 0;
        #620; 
        
        A = 4'b1111; B = 4'b1110; Cin = 0;
        en = 1;
        #20
        en = 0;
        #620; 
        
        A = 4'b1111; B = 4'b1111; Cin = 0;
        en = 1;
        #20
        en = 0;
        #620; 
        
     A = 4'b1111; B = 4'b1110; Cin = 0;
        en = 1;
        
        #20
        en = 0;
        #1340; 
        
       A = 4'b1100; B = 4'b1110; Cin = 0;
        en = 1;
        #20
        en = 0;
        #1340; 
        
      A = 4'b0111; B = 4'b1110; Cin = 0;
        en = 1;
        #20
        en = 0;
        #1340; 
        
      A = 4'b0001; B = 4'b1110; Cin = 0;
        en = 1;
        #20
        en = 0;
        #1340; 
        
       A = 4'b1111; B = 4'b1100; Cin = 0;
        en = 1;
        #20
        en = 0;
        
        #1340; 
        
       A = 4'b1100; B = 4'b1110; Cin = 0;
        en = 1;
        #20
        en = 0;
        #1340;
        
      A = 4'b1111; B = 4'b1000; Cin = 0;
        en = 1;
        #20
        en = 0;
        #1340; 
        end 
    end
        
endmodule
