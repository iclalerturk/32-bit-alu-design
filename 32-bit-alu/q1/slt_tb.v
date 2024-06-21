`include "slt.v"
module slt_tb;
    reg a, b, alu0, alu1, sumN;
    wire [31:0]out;
    slt slt1(a, b, alu0, alu1, sumN, out);

    initial
        begin
            $dumpfile("slt.vcd");
            $dumpvars(0, slt_tb); 
            a = 0; b = 0; alu0 = 0; alu1 = 0; sumN =0;
            #1
            a = 0; b = 1; alu0 = 0; alu1 = 0; sumN =0;
            #1
            a = 1; b = 0; alu0 = 0; alu1 = 0; sumN =0;
            #1
            a = 1; b = 1; alu0 = 0; alu1 = 0; sumN =0;
        end
endmodule
//iverilog -o slt_tb.vvp slt_tb.v
//vvp slt_tb.vvp