`include "fourBitAdder.v"
module adder32bit(a, b, cin, sum, cout);
    input [31:0] a, b;
    input cin;
    output [31:0] sum;
    output cout;
    wire [7:0]carry;

    fourBitAdder ad1(a[3:0], b[3:0], cin, sum[3:0], carry[0]);
    fourBitAdder ad2(a[7:4], b[7:4], carry[0], sum[7:4], carry[1]);
    fourBitAdder ad3(a[11:8], b[11:8], carry[1], sum[11:8], carry[2]);
    fourBitAdder ad4(a[15:12], b[15:12], carry[2], sum[15:12], carry[3]);
    fourBitAdder ad5(a[19:16], b[19:16], carry[3], sum[19:16], carry[4]);
    fourBitAdder ad6(a[23:20], b[23:20], carry[4], sum[23:20], carry[5]);
    fourBitAdder ad7(a[27:24], b[27:24], carry[5], sum[27:24], carry[6]);
    fourBitAdder ad8(a[31:28], b[31:28], carry[6], sum[31:28], cout);

endmodule