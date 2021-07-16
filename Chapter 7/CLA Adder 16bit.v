////////////////////////////////////////////////////////
//16-bit Carry Look Ahead Adder using 16-bit Carry Look Ahead Adder
////////////////////////////////////////////////////////


module CLA_16bit_Adder(a,b, cin, sum,cout);
input [15:0] a,b;
input cin;
output [15:0] sum;
output cout;

//internal design connection.
wire c1,c2,c3;

//Instantiatoin from 4bit CLA Adder.
CLA_4bit_Adder block1(.a(a[3:0]), .b(b[3:0]), .cin(cin), .sum(sum[3:0]), .cout(c1));
CLA_4bit_Adder block2(.a(a[7:4]), .b(b[7:4]), .cin(c1), .sum(sum[7:4]), .cout(c2));
CLA_4bit_Adder block3(.a(a[11:8]), .b(b[11:8]), .cin(c2), .sum(sum[11:8]), .cout(c3));
CLA_4bit_Adder block4(.a(a[15:12]), .b(b[15:12]), .cin(c3), .sum(sum[15:12]), .cout(cout));
 
endmodule
 

