module D_FF(q,qbar,d,clk,clear);
output  q,qbar;
input clear,clk,d;


// now we will define internal wires for the basic D flip flop
wire sbar,s,r,rbar,cbar;

assign cbar = ~clear;

assign sbar = ~(rbar & s),
	s = ~(sbar & cbar & ~clk),
	r = ~(rbar & ~clk & s),
	rbar = ~(r & cbar & d);

//now the final output for the D flip flop

assign  q = ~(qbar & s),
	qbar = ~(q & cbar & r);

endmodule

