`include "mux8x3.v"
module mux8x3_tb;

    reg a, b, c, d, e, f, g, h;
    reg [2:0] select;
    wire out;

    // 4x1
    mux8x3 uut (out,a,b,c,d,e,f,g,h,select);

    initial begin
        $dumpfile("mux8x3_tb.vcd");
        $dumpvars(0, mux8x3_tb);
        a = 0; b = 0; c = 0; d = 0; e = 0; f = 0; g = 0; h = 1; select = 3'b000;//hs  
        #1; a = 0; b = 0; c = 0; d = 0; e = 0; f = 0; g = 1; h = 0; select = 3'b001; //g
        #1; a = 0; b = 0; c = 0; d = 1; e = 0; f = 0; g = 0; h = 0; select = 3'b100; // d
        #1; a = 0; b = 0; c = 0; d = 0; e = 0; f = 1; g = 0; h = 0; select = 3'b010; // f
        #1; a = 1; b = 0; c = 0; d = 1; e = 0; f = 0; g = 0; h = 0; select = 3'b111; // a

        #1; $finish;
    end
endmodule

//iverilog -o mux8x3_tb.vvp mux8x3_tb.v
//vvp mux8x3_tb.vvp