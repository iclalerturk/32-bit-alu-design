`include "mux2x1_2nd.v"
module mux2x1_2nd_tb();
    reg a, b, select;
    wire out;
    mux2x1_2nd mux1(out, a, b, select);
    
    initial begin
        $dumpfile("mux2x1_2nd_tb.vcd");
        $dumpvars(0, mux2x1_2nd_tb);
        select = 0; a = 0; b = 0; #1;
        select = 1; a = 1; b = 0; #1;//1 a 0 b
        select = 1; a = 0; b = 1; #1;
    end

endmodule

//iverilog -o mux2x1_2nd_tb.vvp mux2x1_2nd_tb.v
//vvp mux2x1_2nd_tb.vvp