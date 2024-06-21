`include "mux2x1_4b.v"
module mux2x1_32b(out, a, b, select);
    input [31:0] a, b; 
    input select;
    output [31:0] out;
      
    mux2x1_4b m1(out[3:0], a[3:0], b[3:0], select);
    mux2x1_4b m2(out[7:4], a[7:4], b[7:4], select);
    mux2x1_4b m3(out[11:8], a[11:8], b[11:8], select);
    mux2x1_4b m4(out[15:12], a[15:12], b[15:12], select);
    mux2x1_4b m5(out[19:16], a[19:16], b[19:16], select);
    mux2x1_4b m6(out[23:20], a[23:20], b[23:20], select);
    mux2x1_4b m7(out[27:24], a[27:24], b[27:24], select);
    mux2x1_4b m8(out[31:28], a[31:28], b[31:28], select);

endmodule