module claadder(sum,carry,a,b,cin);

//main inputs and outputs for the circuit
output [0:3] sum;
output carry;
input [0:3] a,b;
input cin;

// internal wires required in Carrylook ahead adder
wire g1,p1,g2,p2,g3,p3,g4,p4;
wire c1,c2,c3,c4;

//Now we firstly we deal with carry generator and propagtor in CLA adder

//carry generator
assign  g1 = a[0] & b[0],
	g2 = a[1] & b[1],
	g3 = a[2] & b[2],
	g4 = a[3] & b[3];

//carry propagator
assign  p1 = a[0] ^ b[0],
	p2 = a[1] ^ b[1],
	p3 = a[2] ^ b[2],
	p4 = a[3] ^ b[3];

// now we will find the carry for each full adder

assign  c1 = g1 | (p1 & cin),
	c2 = g2 | (p2 & g1) | (p2 & p1 & cin),
	c3 = g3 | (p3 & g2) | (p3 & p2 & g1) | (p3 & p2 & p1 & cin),
	c4 = g4 | (p4 & g3) | (p3 & p4 & g2) | (p4 & p3 & p2 & g1) | (p4 & p3 & p2 & p1 & cin);

// now we will assign equation for sum

assign  sum[0] = p1 ^ cin,
	sum[1] = p2 ^ c1,
	sum[2] = p3 ^ c2,
	sum[3] = p4 ^ c3;

// the final carry will be
assign  carry = c4;

endmodule 
  
