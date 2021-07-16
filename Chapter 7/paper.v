module A;
  reg  a= 6'bx1x0x1;
  wire c = 4'h6;

  initial 
begin
$monitor(" c = %b",c);

 end 

endmodule
