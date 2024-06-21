`include "mux8x3_4b.v"

module mux8x3_4b_tb();
    reg [3:0] a, b, c, d, e, f, g, h; 
    reg [2:0] select;
    wire [3:0] out;
    mux8x3_4b mux1(out, a, b, c, d, e, f, g, h, select);
    
    initial begin
        $dumpfile("mux8x3_4b_tb.vcd");
        $dumpvars(0, mux8x3_4b_tb);
        select = 001; a = 4'b1010; b = 4'b0010; c = 4'b0001; d = 4'b1000; e = 4'b0001; f = 4'b1000; g = 4'b0110; h = 4'b0111;#1;//g
        select = 100; a = 4'b0001; b = 4'b1000; c = 4'b0110; d = 4'b0111; e = 4'b0110; f = 4'b0111; g = 4'b1010; h = 4'b0010;#1;//d
        select = 111; a = 4'b0110; b = 4'b0111; c = 4'b1010; d = 4'b0010; e = 4'b1010; f = 4'b0010; g = 4'b0001; h = 4'b1000;#1;//a
        select = 000; a = 4'b0110; b = 4'b0111; c = 4'b1010; d = 4'b0010; e = 4'b0001; f = 4'b1000; g = 4'b0110; h = 4'b0111;#1;//h        

    end

endmodule

//iverilog -o mux8x3_4b_tb.vvp mux8x3_4b_tb.v
//vvp mux8x3_4b_tb.vvp