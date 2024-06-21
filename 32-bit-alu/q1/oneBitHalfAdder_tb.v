`include "oneBitHalfAdder.v"
module oneBitHalfAdder_tb;
    reg a, b;
    wire sum, carry;

    oneBitHalfAdder add1(a, b, sum, carry);

    initial
        begin
            // we need to dump the changes of sum & carry

            $dumpfile("oneBitHalfAdder.vcd"); // value changed dump file
            $dumpvars(0, oneBitHalfAdder_tb); // 0 = we are dumping all the variables instantiated by half_adder_tb
            a = 0; b = 0;
            #1 // after 1 timescale
            a = 0; b = 1;
            #1
            a = 1; b = 0;
            #1
            a = 1; b = 1;
        end
endmodule