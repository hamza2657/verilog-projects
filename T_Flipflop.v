module T_FF(q,clk,reset);
output q;

input clk,reset;

D_FF O1(q, ,~q, clk, reset);

endmodule  
