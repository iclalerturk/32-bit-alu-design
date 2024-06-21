`include "mux4x2_4b.v"

module mux4x2_4b_tb();
    reg [3:0] a, b, c, d; 
    reg [1:0] select;
    wire [3:0] out;
    mux4x2_4b mux1(out, a, b, c, d, select);
    
    initial begin
        $dumpfile("mux4x2_4b_tb.vcd");
        $dumpvars(0, mux4x2_4b_tb);
        select = 01; a = 4'b1010; b = 4'b0010; c = 4'b0001; d = 4'b1000;#1;
        select = 10; a = 4'b0001; b = 4'b1000; c = 4'b0110; d = 4'b0111;#1;//1 a 0 b
        select = 11; a = 4'b0110; b = 4'b0111; c = 4'b1010; d = 4'b0010;#1;
        select = 00; a = 4'b0110; b = 4'b0111; c = 4'b1010; d = 4'b0010;#1;         

    end

endmodule

//iverilog -o mux4x2_4b_tb.vvp mux4x2_4b_tb.v
//vvp mux4x2_4b_tb.vvp