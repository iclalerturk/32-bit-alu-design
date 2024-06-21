`include "datapath.v"
module datapath_tb;

    `define WORD_SIZE 32

    reg clk, rst,wr;
    reg [1:0] addr1, addr2, addr3;
    reg[2:0]alu;
    wire cout;
    wire [31:0] result;
    
    datapath dut(addr1, addr2, addr3, clk, wr, rst, alu,result,cout);

    always #5 clk = ~clk;

    initial begin
        
        $dumpfile("datapath.vcd");
        $dumpvars(0, datapath_tb);
        // Reset
        #10;
        rst = 0;

        //ADD

        // Write data to regfile (register file)
        #20;
        addr3 = 2'b00;
        wr = 1;
        #10;
        wr = 0;

        #20;
        alu = 3'b000;
        addr1 = 2'b01;
        addr2 = 2'b10;
        wr = 1;
        #10;
        wr = 0;

        // End simulation
        #20;

        //AND

        // Reset
        #10;
        rst = 0;

        // Write data to regfile (register file)
        #20;
        addr3 = 2'b01;
        wr = 1;
        #10;
        wr = 0;

        #20;
        alu = 3'b010;
        addr1 = 2'b10;
        addr2 = 2'b11;
        wr = 1;
        #10;
        wr = 0;

        // End simulation
        #20;

        //XOR

        // Reset
        #10;
        rst = 0;

        // Write data to regfile (register file)
        #20;
        addr3 = 2'b11;
        wr = 1;
        #10;
        wr = 0;

        #20;
        alu = 3'b011;
        addr1 = 2'b00;
        addr2 = 2'b10;
        wr = 1;
        #10;
        wr = 0;

        // End simulation
        #20;

        //SUB

        // Reset
        #10;
        rst = 0;

        // Write data to regfile (register file)
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
        #30;
        $finish;
    end

endmodule 


//iverilog -o datapath_tb.vvp datapath_tb.v
//vvp datapath_tb.vvp