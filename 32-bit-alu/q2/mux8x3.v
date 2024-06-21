`include "mux4x2.v"
module mux8x3(out, a, b, c, d, e, f, g, h, select);
    input a, b, c, d, e, f, g, h;
    input [2:0] select;
    output out; 
    wire out1,out2;

    mux4x2 m1(out1,a,b,c,d,select[1:0]);
    mux4x2 m2(out2,e,f,g,h,select[1:0]);
    mux2x1_2nd m3(out,out1,out2,select[2]);
    

    endmodule