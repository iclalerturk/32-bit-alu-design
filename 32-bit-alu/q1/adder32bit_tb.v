`include "adder32bit.v"

module adder32bit_tb;
    reg [31:0]a, b;
    reg cin;
    wire [31:0]sum;
    wire cout;

    adder32bit add1(a, b, cin, sum, cout);

    initial begin
        $dumpfile("adder32bit.vcd");
        $dumpvars(0, adder32bit_tb);
        a = 32'b00000000000000000000000011110000;
        b = 32'b00000000000000000000000000000001;
        cin = 1'b0;
        #10;
        
    end
endmodule
//iverilog -o adder32bit_tb.vvp adder32bit_tb.v
//vvp adder32bit_tb.vvp