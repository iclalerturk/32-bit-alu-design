`include "and1bit.v"
module and4bit (a,b,out);
    input [3:0] a, b;
    output [3:0] out;

    and1bit a1(a[0],b[0],out[0]);
    and1bit a2(a[1],b[1],out[1]);
    and1bit a3(a[2],b[2],out[2]);
    and1bit a4(a[3],b[3],out[3]);
endmodule