`include "zeroExt.v"
module slt (a, b, alu0, alu1, sumN, out);
    input a,b,alu0,alu1,sumN;
    output [31:0]out;
    wire xor1,xor2,xor3,not1,xorNot,and1,and2,xor4,nott;
    xor aa(xor1,alu0,b);
    not(nott,xor1);
    xor bb(xor2,nott,a);
    not c(xorNot,xor2);
    xor d(xor3,sumN,a);
    not e(not1,alu1);
    and f(and1,xor2,xor3);
    and g(and2,and1,not1);
    xor h(xor4,and2,sumN);
    zeroExt z(xor4,out);

endmodule