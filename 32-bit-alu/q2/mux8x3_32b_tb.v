`include "mux8x3_32b.v"

module mux8x3_32b_tb();
    reg [31:0] a, b, c, d, e, f, g, h; 
    reg [2:0]select;
    wire [31:0] out;
    mux8x3_32b mux1(out, a, b, c, d, e, f, g, h, select);
    
    initial begin
        $dumpfile("mux8x3_32b_tb.vcd");
        $dumpvars(0, mux8x3_32b_tb);
        select = 3'b000; a = 32'hFFFFFFFF; b = 32'h12345678; c = 32'h00000001; d = 32'hFFFFFFFF; e = 32'h00000001; f = 32'hFFFFFFFF; g = 32'h10000001; h = 32'h10000000; #1;//h
        select = 3'b010; a = 32'h00000001; b = 32'hFFFFFFFF; c = 32'h10000001; d = 32'h10000000; e = 32'h10000001; f = 32'h10000000; g = 32'hFFFFFFFF; h = 32'h12345678;#1;//f
        select = 3'b100; a = 32'h10000001; b = 32'h10000000; c = 32'hFFFFFFFF; d = 32'h12345678; e = 32'h00000001; f = 32'hFFFFFFFF; g = 32'h10000001; h = 32'h10000000;#1;  //d     
        select = 3'b111; a = 32'h00000001; b = 32'hFFFFFFFF; c = 32'h10000001; d = 32'h10000000; e = 32'hFFFFFFFF; f = 32'h12345678; g = 32'h00000001; h = 32'hFFFFFFFF;#1;//a
    end

endmodule

//iverilog -o mux8x3_32b_tb.vvp mux8x3_32b_tb.v
//vvp mux8x3_32b_tb.vvp