module magnitude_comparator(A_gt_B,A_lt_B,A_eq_B,a,b);
output A_gt_B,A_lt_B,A_eq_B;
input [3:0] a,b;

// declaring internal wire 3 bit x
wire [3:0] x;

// assigning x3
assign x[3] = (a[3] ~^ b[3]),
	x[1] = (a[1] ~^ b[1]),
	x[2] = (a[2] ~^ b[2]),
	x[0] = (a[0] ~^ b[0]);

assign A_gt_B = (a[3] & ~b[3]) || (x[3] & a[2] & ~b[2]) || (x[3] & x[2] & a[1] & ~b[1]) || (x[3] & x[2] & x[1] & a[0] & ~b[0]),
	A_lt_B = (~a[3] & b[3]) || (x[3] & ~a[2] & b[2]) || (x[3] & x[2] & ~a[1] & b[1]) || (x[3] & x[2] & x[1] & ~a[0] & b[0]),
	A_eq_B = x[3] & x[2] & x[1] & x[0];

endmodule 
