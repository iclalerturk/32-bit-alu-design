`include "not32bit.v"
module not32bit_tb;
    reg [31:0] a;
    wire [31:0] out;

    not32bit a1(a, out);
    initial begin
        $dumpfile("not32bit_tb.vcd");
        $dumpvars(0, not32bit_tb);
        
        a = 32'hFFFFFFFF;     
        #1; a = 32'h00000001; 
        #1; a = 32'h10000001;
        #1;
    end

endmodule
//iverilog -o not32bit_tb.vvp not32bit_tb.v
//vvp not32bit_tb.vvp