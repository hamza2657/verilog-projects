module ripple_counter(q,clk,clear);
output [3:0] q;
input clk,clear;

// nnow we will initiate the tff by pervious defined circuit bit by bit
T_FF tff0(q[0],clk,clear);
T_FF tff1(q[1],q[0],clear);
T_FF tff2(q[2],q[1],clear);
T_FF tff3(q[3],q[2],clear);

endmodule 