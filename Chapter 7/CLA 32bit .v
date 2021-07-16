////////////////////////////////////////////////////////
//32-bit Carry Look Ahead Adder using 16-bit Carry Look Ahead Adder
////////////////////////////////////////////////////////


module CLA_32bit_Adder(a,b, cin, sum,cout);
input [31:0] a,b;
input cin;
output [31:0] sum;
output cout;

//internal design connection.
wire c1;

//Instantiatoin from 16bit CLA Adder.
CLA_16bit_Adder block1 (.a(a[15:0]), .b(b[15:0]), .cin(cin), .sum(sum[15:0]), .cout(c1));
CLA_16bit_Adder block2 (.a(a[31:16]), .b(b[31:16]), .cin(c1), .sum(sum[31:16]), .cout(cout));
 
endmodule
