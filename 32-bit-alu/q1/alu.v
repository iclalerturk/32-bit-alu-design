`include "mux8x3_32b.v"
`include "mux2x1_32b.v"
`include "not32bit.v"
`include "adder32bit.v"
`include "xor32bit.v"
`include "and32bit.v"
`include "slt.v"
module alu (a,b,alu,result,cout);
    input [31:0] a, b;
    input [2:0] alu;
    output [31:0] result;
    output cout;
    wire [31:0] m1Cikis,bNot,add1,sum,and1,xor1,slt1;
    integer i;
    
    reg [31:0] aGiris, bGiris, dGiris;
    initial begin
        for (i = 0; i < 32; i = i + 1) begin
            aGiris[i] = 1'b0;                     
            bGiris[i] = 1'b0;
            dGiris[i] = 1'b0;
        end
    end
    
    not32bit n(b, bNot);
    mux2x1_32b m1(m1Cikis, bNot, b, alu[0]);
    adder32bit a1(a, m1Cikis, alu[0], sum, cout);
    and32bit a2(a, b, and1);
    xor32bit x1(a, b, xor1);
    slt s1 (a[31], b[31], alu[2], alu[1], sum[31], slt1);

    mux8x3_32b m2(result, aGiris, bGiris, slt1, dGiris, xor1, and1, sum, sum, alu[2:0]);
    //111:pass, 110:pass, 101:slt, 100:pass, 011:xor, 010:and, 001:sub, 000:sum
    //111:a, 110:b, 101:c, 100:d, 011:e, 010:f, 001:g, 000:h
endmodule


