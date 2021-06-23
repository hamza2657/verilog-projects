module MCTEST;
reg [3:0] A,B;
wire A_gt_b,A_lt_B,A_eq_B;

initial begin
$monitor ($time, " A = %b, B = %b, A > B = %b, A < B = %b, A = B = %b", A,B,A_gt_b,A_lt_B,A_eq_B);
end


magnitude_comparator T1(A_gt_b,A_lt_B,A_eq_B,A,B);

initial begin
A = 4'b1001; B = 4'b1000;
#10 A = 4'b1111; B = 4'b1100;
#10 A = 4'b0000; B = 4'b1000;
#10 A = 4'b0101; B = 4'b1011;
#10 A = 4'b1111; B = 4'b1111;
#10 A = 4'b0000; B = 4'b0000;

end
endmodule 