`include "not1bit.v"
module not1bit_tb;
    reg a;
    wire out;
    not1bit a1(a,out);
    
    initial begin
        $dumpfile("not1bit_tb.vcd");
        $dumpvars(0, not1bit_tb);
        a = 0; #1;
        a = 1; #1;
    end
endmodule
//iverilog -o not1bit_tb.vvp not1bit_tb.v
//vvp not1bit_tb.vvp