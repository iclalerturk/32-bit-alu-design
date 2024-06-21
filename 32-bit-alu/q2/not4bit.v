`include "not1bit.v"
module not4bit (a,out);
    input [3:0] a;
    output [3:0] out;

    not1bit a1(a[0],out[0]);
    not1bit a2(a[1],out[1]);
    not1bit a3(a[2],out[2]);
    not1bit a4(a[3],out[3]);
endmodule