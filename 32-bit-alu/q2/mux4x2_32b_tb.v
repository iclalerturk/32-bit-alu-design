`include "mux4x2_32b.v"

module mux4x2_32b_tb();
    reg [31:0] a, b, c, d; 
    reg [1:0]select;
    wire [31:0] out;
    mux4x2_32b mux1(out, a, b, c, d, select);
    
    initial begin
        $dumpfile("mux4x2_32b_tb.vcd");
        $dumpvars(0, mux4x2_32b_tb);
        select = 00; a = 32'hFFFFFFFF; b = 32'h12345678; c = 32'h00000001; d = 32'hFFFFFFFF; #1;//d
        select = 01; a = 32'h00000001; b = 32'hFFFFFFFF; c = 32'h10000001; d = 32'h10000000; #1;//c
        select = 10; a = 32'h10000001; b = 32'h10000000; c = 32'hFFFFFFFF; d = 32'h12345678; #1;  //b     
        select = 11; a = 32'h00000001; b = 32'hFFFFFFFF; c = 32'h10000001; d = 32'h10000000; #1;//a
    end

endmodule

//iverilog -o mux4x2_32b_tb.vvp mux4x2_32b_tb.v
//vvp mux4x2_32b_tb.vvp