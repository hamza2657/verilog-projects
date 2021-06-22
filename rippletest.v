module ripple_counter_test;
reg CLOCK,RESET;
wire [3:0] Q;


initial begin
$monitor ($time, " Count Q = %b, CLOCK = %b, RESET = %b",Q[3:0],CLOCK,RESET);
end

//now we will instantiate the design 

ripple_counter t1(Q,CLOCK,RESET);


// now we wil stimulate the clear signal 

initial begin 
	RESET = 1'b1;
	#34 RESET = 1'b0;
	#200 RESET = 1'b1;
	#50 RESET = 1'b0;
end
// now we setup the clock signal to toggle every 10 times unit
initial begin
	CLOCK = 1'b0;
	forever #10 CLOCK = ~CLOCK;
end

initial begin
 #400 $finish;
end 
endmodule 
 

