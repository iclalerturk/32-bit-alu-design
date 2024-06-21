`include "oneBitHalfAdder.v"

module oneBitAdder(a, b, cin, sum, cout);
    input a, b, cin;
    output sum, cout;
    wire sum_half, carry_half, carry_half_2;

    oneBitHalfAdder ha1(a, b, sum_half, carry_half);
    oneBitHalfAdder ha2(sum_half, cin, sum, carry_half_2);
    or o1(cout, carry_half, carry_half_2);
endmodule