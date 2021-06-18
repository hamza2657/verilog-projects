module test;

reg [0:3] A,B;
reg c0;
wire [0:3] SUM;
wire Carry;

claadder O1(SUM,Carry,A,B,c0);
initial begin
$monitor ($time, "	A = %b , B = %b , Sum = %b , carry = %b",A,B,SUM,Carry);
end

initial begin
A = 4'd0; B = 4'd0; c0 = 1'b0;
#10	A = 4'd3; B = 4'd4;
#10	A = 4'd2; B = 4'd5;
#10	A = 4'd9; B = 4'd9;
#10	A = 4'd10; B = 4'd15;
#10	A = 4'd10; B = 4'd5; c0 = 1'b1;
end 
endmodule



