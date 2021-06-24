module swaping;
integer a = 32'd5 ,b = 32'd10;
integer temp_a , temp_b;
reg clk = 1'b1;

// swaping using non blocking statemnents

/*always @(posedge clk)
a <= b;

always @(posedge clk)
b <= a;*/


// this is the implemention of nonblocking statements by using blocking statements
//becuase blocking statements have read and write problems unline nonblocking statements
always @(posedge clk)
begin
temp_a = a;
temp_b = b;

a = temp_b;
b = temp_a;

end 
initial begin
$monitor ("a = %d , b = %d",a,b);
end
endmodule 

