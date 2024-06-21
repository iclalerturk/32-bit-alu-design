`include "xor4bit.v"
module xor32bit (a,b,out);
    input [31:0] a,b;
    output [31:0] out;

    xor4bit a1(a[3:0], b[3:0],out[3:0]);
    xor4bit a2(a[7:4], b[7:4], out[7:4]);
    xor4bit a3(a[11:8], b[11:8], out[11:8]);
    xor4bit a4(a[15:12], b[15:12], out[15:12]);
    xor4bit a5(a[19:16], b[19:16], out[19:16]);
    xor4bit a6(a[23:20], b[23:20], out[23:20]);
    xor4bit a7(a[27:24], b[27:24], out[27:24]);
    xor4bit a8(a[31:28], b[31:28], out[31:28]);

endmodule