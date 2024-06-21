`include "mux2x1_2nd.v"
module mux4x2(out, a, b, c, d, select);
    input a, b,c, d;
    input [1:0] select;
    output out;
    wire out1, out2;

    mux2x1_2nd mu1(out1,a,b,select[0]);
    mux2x1_2nd mu2(out2,c,d,select[0]);
    mux2x1_2nd mu3(out,out1,out2,select[1]);
endmodule