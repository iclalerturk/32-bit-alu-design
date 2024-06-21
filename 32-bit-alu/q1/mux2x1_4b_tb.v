`include "mux2x1_4b.v"

module mux2x1_4b_tb();
    reg [3:0] a, b; 
    reg select;
    wire [3:0] out;
    mux2x1_4b mux1(out, a, b, select);
    
    initial begin
        $dumpfile("mux2x1_4b_tb.vcd");
        $dumpvars(0, mux2x1_4b_tb);
        select = 0; a = 4'b1010; b = 4'b0010; #1;
        select = 1; a = 4'b0001; b = 4'b1000; #1;//1 a 0 b
        select = 1; a = 4'b0110; b = 4'b0111; #1;
                 

    end

endmodule

//iverilog -o mux2x1_4b_tb.vvp mux2x1_4b_tb.v
//vvp mux2x1_4b_tb.vvp