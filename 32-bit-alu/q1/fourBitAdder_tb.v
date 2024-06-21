`include "fourBitAdder.v"

module fourBitAdder_tb;
    reg [3:0]a, b;
    reg cin;
    wire [3:0]sum;
    wire cout;

    fourBitAdder add1(a, b, cin, sum, cout);

    initial begin
        $dumpfile("fourBitAdder.vcd");
        $dumpvars(0, fourBitAdder_tb);
        a = 4'b0001;
        b = 4'b0111;
        cin = 1'b1;
        #10;
        
    end
endmodule
//iverilog -o fourBitAdder_tb.vvp fourBitAdder_tb.v
//vvp fourBitAdder_tb.vvp