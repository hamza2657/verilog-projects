module NBstatement;
reg x,y,z;
reg [15:0] reg_a , reg_b;
integer count;

//Non blocking statements donot blocks the delays and other things while simulating like blocking do.
//every statement will operate on its preferd time and with mentioned delay. 


initial begin
x = 0; y = 1; z = 1;
count = 32'b0;
reg_a = 16'b0; reg_b = reg_a;
 reg_a[2] <= #15  1'b1;
reg_b[15:13] <= #10   {x,y,z};
count <= count + 32'b1;
end
endmodule
