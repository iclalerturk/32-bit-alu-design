`include "xor32bit.v"
module xor32bit_tb;
    reg [31:0] a,b;
    wire [31:0] out;

    xor32bit a1(a, b, out);
    initial begin
        $dumpfile("xor32bit_tb.vcd");
        $dumpvars(0, xor32bit_tb);
        
        a = 32'hFFFFFFFF; b = 32'h12345678;         
        #1; a = 32'h00000001; b = 32'hFFFFFFFF; 
        #1; a = 32'h10000001; b = 32'h10000000;
        #1;
    end

endmodule
//iverilog -o xor32bit_tb.vvp xor32bit_tb.v
//vvp xor32bit_tb.vvp