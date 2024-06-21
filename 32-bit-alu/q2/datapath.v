`include "alu.v"
`include "regfile.v"

module datapath(addr1, addr2, addr3, clk, wr, rst, alu,result,cout);
    input clk, rst,wr;
    input [1:0] addr1, addr2, addr3;
    input[2:0]alu;
    wire [31:0]  data3;
    output cout;
    output [31:0] result;
    wire [31:0] data1, data2;

    
    regfile inst(addr1,addr2,addr3,data1,data2,data3,clk,wr,rst);
    alu alu_inst(data1,data2,alu,result,cout);

    
    assign data3 = result; 
    

endmodule  
