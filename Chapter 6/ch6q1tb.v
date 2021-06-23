module FullSubtractorTest;
reg A,B,C;
wire Borrow,Difference;

full_subtractor T1(Difference,Borrow,A,B,C);
initial begin 
$monitor ($time , " A = %b, B = %b, C = %b, B = %b, D = %b ",A,B,C,Borrow,Difference);
end
initial begin
A = 1'b0 ; B = 1'b0; C = 1'b0;
#10 A = 1'b0 ; B = 1'b0; C = 1'b1;
#10 A = 1'b0 ; B = 1'b1; C = 1'b0;
#10 A = 1'b0 ; B = 1'b1; C = 1'b1;
#10 A = 1'b1 ; B = 1'b0; C = 1'b0;
#10 A = 1'b1 ; B = 1'b0; C = 1'b1;
#10 A = 1'b1 ; B = 1'b1; C = 1'b0; 
#10 A = 1'b1 ; B = 1'b1; C = 1'b1;

end
endmodule 