`include "mux8x3.v"
module mux8x3_4b (out, a, b, c, d, e, f, g, h, select);
    input [3:0]a, b, c, d, e, f, g, h;
    input [2:0] select;
    output [3:0] out;

    mux8x3 m1(out[3],a[3],b[3],c[3],d[3],e[3],f[3],g[3],h[3],select[2:0]);
    mux8x3 m2(out[2],a[2],b[2],c[2],d[2],e[2],f[2],g[2],h[2],select[2:0]);
    mux8x3 m3(out[1],a[1],b[1],c[1],d[1],e[1],f[1],g[1],h[1],select[2:0]);
    mux8x3 m4(out[0],a[0],b[0],c[0],d[0],e[0],f[0],g[0],h[0],select[2:0]);

endmodule