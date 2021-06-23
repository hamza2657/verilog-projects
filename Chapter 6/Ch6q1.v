module full_subtractor(D,B,x,y,z);
output D,B;
input x,y,z;

//now we simply implement the equation for differnece nad borrow obtained from Truth table
assign D = (~x & ~y & z) || (~x & y & ~z) || (x & ~y & ~z ) || (x & y & z);
assign B = (~x & y) || (~x & z) || (y & z);

endmodule
