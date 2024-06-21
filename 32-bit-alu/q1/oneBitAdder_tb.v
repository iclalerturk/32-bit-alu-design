`include "oneBitAdder.v"

module oneBitAdder_tb;
    reg a, b, cin;
    wire sum, cout;

    oneBitAdder add1(a, b, cin, sum, cout);

    initial
        begin
            $dumpfile("oneBitAdder.vcd");
            $dumpvars(0, oneBitAdder_tb);
            cin = 0; a = 0; b = 0; #1
            cin = 0; a = 0; b = 1; #1
            cin = 0; a = 1; b = 0; #1
            cin = 0; a = 1; b = 1; #1
            cin = 1; a = 0; b = 0; #1
            cin = 1; a = 0; b = 1; #1
            cin = 1; a = 1; b = 0; #1
            cin = 1; a = 1; b = 1;
        end
endmodule
//iverilog -o oneBitAdder_tb.vvp oneBitAdder_tb.v
//vvp oneBitAdder_tb.vvp