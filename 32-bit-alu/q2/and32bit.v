`include "and4bit.v"
module and32bit (a,b,out);
    input [31:0] a,b;
    output [31:0] out;

    and4bit a1(a[3:0], b[3:0],out[3:0]);
    and4bit a2(a[7:4], b[7:4], out[7:4]);
    and4bit a3(a[11:8], b[11:8], out[11:8]);
    and4bit a4(a[15:12], b[15:12], out[15:12]);
    and4bit a5(a[19:16], b[19:16], out[19:16]);
    and4bit a6(a[23:20], b[23:20], out[23:20]);
    and4bit a7(a[27:24], b[27:24], out[27:24]);
    and4bit a8(a[31:28], b[31:28], out[31:28]);

endmodule