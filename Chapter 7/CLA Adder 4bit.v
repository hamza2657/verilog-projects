////////////////////////////////////////////////////////
//4-bit Carry Look Ahead Adder 
////////////////////////////////////////////////////////
 
module CLA_4bit_Adder(a,b, cin, sum,cout);
input [3:0] a,b;
input cin;
output [3:0] sum;
output cout;
 
wire [3:0] p,g,c;
 
assign p = a ^ b;//carry propagation
assign g = a & b; //carry generate
 
//carry=gi + Pi.ci
 
assign c[0] = cin;
assign c[1]= g[0] | (p[0] & c[0]);
assign c[2]= g[1] | (p[1] & g[0]) | p[1] & p[0] & c[0];
assign c[3]= g[2] | (p[2] & g[1]) | p[2] & p[1] & g[0] | p[2] & p[1] & p[0] & c[0];
assign cout= g[3] | (p[3] & g[2]) | p[3] & p[2] & g[1] | p[3] & p[2] & p[1] & g[0] | p[3] & p[2] & p[1] & p[0] & c[0];
assign sum = p ^ c;
 
endmodule
