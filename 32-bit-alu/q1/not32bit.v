`include "not4bit.v"
module not32bit (a,out);
    input [31:0] a,b;
    output [31:0] out;

    not4bit a1(a[3:0], out[3:0]);
    not4bit a2(a[7:4], out[7:4]);
    not4bit a3(a[11:8], out[11:8]);
    not4bit a4(a[15:12], out[15:12]);
    not4bit a5(a[19:16], out[19:16]);
    not4bit a6(a[23:20], out[23:20]);
    not4bit a7(a[27:24], out[27:24]);
    not4bit a8(a[31:28], out[31:28]);

endmodule