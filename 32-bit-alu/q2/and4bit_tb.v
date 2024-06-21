`include "and4bit.v"
module and4bit_tb;
    reg [3:0] a, b;
    wire [3:0] out;

    and4bit a1(a,b,out);
    initial begin
        $dumpfile("and4bit_tb.vcd");
        $dumpvars(0, and4bit_tb);
        
        a = 4'b1010; b = 4'b0010;         
        #1; a = 4'b0001; b = 4'b1000; 
        #1; a = 4'b0110; b = 4'b0110;
        #1;
    end
endmodule
//iverilog -o and4bit_tb.vvp and4bit_tb.v
//vvp and4bit_tb.vvp