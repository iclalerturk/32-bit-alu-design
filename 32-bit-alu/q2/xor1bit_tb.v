`include "xor1bit.v"
module xor1bit_tb;
    reg a, b;
    wire out;
    xor1bit a1(a,b,out);
    
    initial begin
        $dumpfile("xor1bit_tb.vcd");
        $dumpvars(0, xor1bit_tb);
        a = 0; b = 0; #1;
        a = 1; b = 0; #1;
        a = 1; b = 1; #1;
    end
endmodule
//iverilog -o xor1bit_tb.vvp xor1bit_tb.v
//vvp xor1bit_tb.vvp