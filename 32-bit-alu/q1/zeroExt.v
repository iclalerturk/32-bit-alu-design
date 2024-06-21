module zeroExt(a, out);
    input a;
    output reg [31:0]out;
    integer  i;
    always @* begin
        
        for (i = 0; i < 32; i = i + 1) begin
            out[i]= 1'b0;
        end
        out[0]=a;
    end
    
endmodule