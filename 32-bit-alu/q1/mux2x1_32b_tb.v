`include "mux2x1_32b.v"

module mux2x1_32b_tb();
    reg [31:0] a, b; 
    reg select;
    wire [31:0] out;
    mux2x1_32b mux1(out, a, b, select);
    
    initial begin
        $dumpfile("mux2x1_32b_tb.vcd");
        $dumpvars(0, mux2x1_32b_tb);
        select = 0; a = 32'hFFFFFFFF; b = 32'h12345678; #1;
        select = 1; a = 32'h00000001; b = 32'hFFFFFFFF; #1;//1 a 0 b
        select = 1; a = 32'h10000001; b = 32'h10000000; #1;        

    end

endmodule

//iverilog -o mux2x1_32b_tb.vvp mux2x1_32b_tb.v
//vvp mux2x1_32b_tb.vvp