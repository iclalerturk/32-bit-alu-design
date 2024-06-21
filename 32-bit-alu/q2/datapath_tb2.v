`include "datapath.v"
module datapath_tb2;

    `define WORD_SIZE 32

    reg clk, rst,wr;
    reg [1:0] addr1, addr2, addr3;
    reg[2:0]alu;
    wire cout;
    wire [31:0] result;
    
    datapath dut(addr1, addr2, addr3, clk, wr, rst, alu,result,cout);

    always #5 clk = ~clk;

    initial begin
        $dumpfile("datapath2.vcd");
        $dumpvars(0, datapath_tb2);
        // Reset
        #10;
        rst = 0;

        //1.

        // Write data to regfile 
        #20;
        addr3 = 2'b01;
        wr = 1;
        #10;
        wr = 0;

        #20;
        alu = 3'b001;
        addr1 = 2'b01;
        addr2 = 2'b01;
        wr = 1;
        #10;
        wr = 0;

        // End simulation
        #20;

        //2.

        // Reset
        #10;
        rst = 0;

        // Write data to regfile 
        #20;
        addr3 = 2'b00;
        wr = 1;
        #10;
        wr = 0;

        #20;
        alu = 3'b010;
        addr1 = 2'b10;
        addr2 = 2'b10;
        wr = 1;
        #10;
        wr = 0;

        // End simulation
        #20;

        //3.

        // Reset
        #10;
        rst = 0;

        // Write data to regfile 
        #20;
        addr3 = 2'b10;
        wr = 1;
        #10;
        wr = 0;

        #20;
        alu = 3'b001;
        addr1 = 2'b01;
        addr2 = 2'b11;
        wr = 1;
        #10;
        wr = 0;

        // End simulation
        #20;

        //4.

        // Reset
        #10;
        rst = 0;

        // Write data to regfile 
        #20;
        addr3 = 2'b11;
        wr = 1;
        #10;
        wr = 0;

        #20;
        alu = 3'b000;
        addr1 = 2'b00;
        addr2 = 2'b11;
        wr = 1;
        #10;
        wr = 0;

        // End simulation
        #30;
        $finish;
    end

endmodule 


//iverilog -o datapath_tb2.vvp datapath_tb2.v
//vvp datapath_tb2.vvp