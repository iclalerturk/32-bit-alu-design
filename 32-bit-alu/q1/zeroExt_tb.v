`include "zeroExt.v"
module zeroExt_tb;
    reg a;
    wire [31:0] out;

    zeroExt a1(a, out);
    initial begin
        $dumpfile("zeroExt_tb.vcd");
        $dumpvars(0, zeroExt_tb);
        
        a = 1; #1;       
        a = 0; #1;
        
    end

endmodule
//iverilog -o zeroExt_tb.vvp zeroExt_tb.v
//vvp zeroExt_tb.vvp