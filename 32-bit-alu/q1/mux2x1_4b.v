`include "mux2x1.v"
module mux2x1_4b(out, a, b, select);
    input [3:0] a, b; 
    input select;
    output [3:0] out;
    
    mux2x1 m1(out[3],a[3],b[3],select);
    mux2x1 m2(out[2],a[2],b[2],select);
    mux2x1 m3(out[1],a[1],b[1],select);
    mux2x1 m4(out[0],a[0],b[0],select);

endmodule