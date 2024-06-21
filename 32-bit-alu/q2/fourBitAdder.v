`include "oneBitAdder.v"
module fourBitAdder(a, b, cin, sum, cout);
    input [3:0] a, b;
    input cin;
    output [3:0] sum;
    output cout;
    wire carry1, carry2, carry3;

    oneBitAdder ad1(a[0],b[0],cin,sum[0],carry1);
    oneBitAdder ad2(a[1],b[1],carry1,sum[1],carry2);
    oneBitAdder ad3(a[2],b[2],carry2,sum[2],carry3);
    oneBitAdder ad4(a[3],b[3],carry3,sum[3],cout);


endmodule