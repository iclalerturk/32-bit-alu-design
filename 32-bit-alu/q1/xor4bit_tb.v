`include "xor4bit.v"
module xor4bit_tb;
    reg [3:0] a, b;
    wire [3:0] out;

    xor4bit a1(a,b,out);
    initial begin
        $dumpfile("xor4bit_tb.vcd");
        $dumpvars(0, xor4bit_tb);
        
        a = 4'b1010; b = 4'b0010;         
        #1; a = 4'b0001; b = 4'b1000; 
        #1; a = 4'b0110; b = 4'b0110;
        #1;
    end
endmodule
//iverilog -o xor4bit_tb.vvp xor4bit_tb.v
//vvp xor4bit_tb.vvp