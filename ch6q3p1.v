module MSJKFF(q,qbar,j,k,clear,clk);
output q,qbar;
input j,k,clk,clear;

// internal wires
wire a,b,y,ybar,cbar,c,d;

// now assigning internal connections
assign cbar = ~clk; 
assign a = ~(qbar & j & clk & clear),
	b = ~(clk & k & q),
	y = ~(a & ybar),
	ybar = ~(y & clear & b),
	c = ~(y & cbar),
	d = ~(cbar & ybar);

// final output
assign q = ~(c & qbar),
	qbar = ~(q & clear & d);

endmodule 
