module four_bit_synchronus_counter(Q,clear,clk,count_enable);
output [3:0] Q;
input clear,clk,count_enable;

//internal wires
wire x,y,z;

//internal connections
assign  x = Q[0] & count_enable,
	y = Q[1] & x,
	z = Q[2] & y;

//instantiation
MSJKFF msjkff1(Q[0], ,count_enable,count_enable,clear,clk);
MSJKFF msjkff2(Q[1], ,x,x,clear,clk);
MSJKFF msjkff3(Q[2], ,y,y,clear,clk);
MSJKFF msjkff4(Q[3], ,z,z,clear,clk);

endmodule 