`include "mux4x2_4b.v"
module mux4x2_32b(out, a, b, c, d, select);
    input [31:0] a, b, c, d; 
    input [1:0] select;
    output [31:0] out;
      
    mux4x2_4b m1(out[3:0], a[3:0], b[3:0], c[3:0], d[3:0], select[1:0]);
    mux4x2_4b m2(out[7:4], a[7:4], b[7:4], c[7:4], d[7:4], select[1:0]);
    mux4x2_4b m3(out[11:8], a[11:8], b[11:8], c[11:8], d[11:8], select[1:0]);
    mux4x2_4b m4(out[15:12], a[15:12], b[15:12], c[15:12], d[15:12], select[1:0]);
    mux4x2_4b m5(out[19:16], a[19:16], b[19:16], c[19:16], d[19:16], select[1:0]);
    mux4x2_4b m6(out[23:20], a[23:20], b[23:20], c[23:20], d[23:20], select[1:0]);
    mux4x2_4b m7(out[27:24], a[27:24], b[27:24], c[27:24], d[27:24], select[1:0]);
    mux4x2_4b m8(out[31:28], a[31:28], b[31:28], c[31:28], d[31:28], select[1:0]);

endmodule