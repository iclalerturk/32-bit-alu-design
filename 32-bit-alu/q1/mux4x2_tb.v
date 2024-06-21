`include "mux4x2.v"
module mux4x2_tb;

    reg a, b, c, d;
    reg [1:0] select;
    wire out;

    // 4x1
    mux4x2 uut (out,a,b,c,d,select);

    initial begin
        $dumpfile("mux4x2_tb.vcd");
        $dumpvars(0, mux4x2_tb);
        a = 0; b = 0; c = 0; d = 0; select = 2'b00;
        
        #10; a = 0; b = 0; c = 0; d = 1; select = 2'b00; // d
        #10; a = 0; b = 1; c = 0; d = 0; select = 2'b10; // b
        #10; a = 0; b = 0; c = 1; d = 0; select = 2'b01; // c
        #10; a = 1; b = 0; c = 0; d = 1; select = 2'b11; // a

        #10; $finish;
    end
initial begin
    $monitor("Time = %t, select = %b, a = %b, b = %b, c = %b, d = %b, out = %b", $time, select, a, b, c, d, out);
end

endmodule

//iverilog -o mux4x2_tb.vvp mux4x2_tb.v
//vvp mux4x2_tb.vvp