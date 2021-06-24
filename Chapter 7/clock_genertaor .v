module clockGen(output reg clk = 1'b0); //Using ANSI C style port decleration and initialization
always 
#10 clk = ~clk;           // when we have single statement we dont need grouping to be done in always and initial blocks
initial 
#500 $finish;
endmodule
