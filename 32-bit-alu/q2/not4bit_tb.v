`include "not4bit.v"
module not4bit_tb;
    reg [3:0] a;
    wire [3:0] out;

    not4bit a1(a,out);
    initial begin
        $dumpfile("not4bit_tb.vcd");
        $dumpvars(0, not4bit_tb);
        
        a = 4'b1010;        
        #1; a = 4'b0001;
        #1; a = 4'b0110;
        #1;
    end
endmodule
//iverilog -o not4bit_tb.vvp not4bit_tb.v
//vvp not4bit_tb.vvp