
module Stimulus;
reg [31:0] a,b;
reg cin;
wire [31:0] sum;
wire cout;
 
  CLA_32bit_Adder uut(.a(a), .b(b),.cin(cin),.sum(sum),.cout(cout));
 
initial begin
  a=0; b=0; cin=0;
  #100 a = 32'd45836; b = 32'd34673; cin = 1'd1;
  #50 a = 32'h0E14; b = 32'hAE23; cin = 1'd1;
  #50 a = 32'd3635; b = 32'h77d4; cin = 1'd0;
  #100 a = 32'd999; b = 32'd0; cin = 1'd1;
end
 
initial
  $monitor( "A=%d, B=%d, Cin= %d, Sum=%h, Cout=%d", a,b,cin,sum,cout);
endmodule
