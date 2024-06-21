`include "and1bit.v"
module and1bit_tb;
    reg a, b;
    wire out;
    and1bit a1(a,b,out);
    
    initial begin
        $dumpfile("and1bit_tb.vcd");
        $dumpvars(0, and1bit_tb);
        a = 0; b = 0; #1;
        a = 1; b = 0; #1;
        a = 1; b = 1; #1;
    end
endmodule
//iverilog -o and1bit_tb.vvp and1bit_tb.v
//vvp and1bit_tb.vvp