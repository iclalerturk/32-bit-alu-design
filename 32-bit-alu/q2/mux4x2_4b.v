`include "mux4x2.v"
module mux4x2_4b (out, a, b, c, d, select);
    input [3:0]a, b, c, d;
    input [1:0] select;
    output [3:0] out;

    mux4x2 m1(out[3],a[3],b[3],c[3],d[3],select[1:0]);
    mux4x2 m2(out[2],a[2],b[2],c[2],d[2],select[1:0]);
    mux4x2 m3(out[1],a[1],b[1],c[1],d[1],select[1:0]);
    mux4x2 m4(out[0],a[0],b[0],c[0],d[0],select[1:0]);

endmodule