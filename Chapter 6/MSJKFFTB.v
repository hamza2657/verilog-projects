module MSJKFFTB;
reg clk,clear,enable;
wire [3:0] Q;

// instantiation 
four_bit_synchronus_counter T1(Q,clear,clk,enable);
initial begin 
$monitor ($time, " Count Q = %d , clear = %b, Clock Pulse = %b enable = %b", Q, clear ,clk, enable);
end

initial begin
	clear = 1'b0;
	#30 clear = 1'b1;
end
initial begin 
clk = 1'b0;
forever #5 clk = ~clk;
end
initial begin
enable  = 1'b1; 
#50 enable = 1'b0;
#20 enable = 1'b1;
end



endmodule 