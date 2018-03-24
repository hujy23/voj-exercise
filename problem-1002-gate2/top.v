module gate2(
    a
   ,b
   ,z
);

input           a, b;
output  [5:0]   z;

assign  z[5] =   a & b ;
assign  z[4] = ~(a & b);
assign  z[3] =   a | b ;
assign  z[2] = ~(a | b);
assign  z[1] =   a ^ b ;
assign  z[0] = ~(a ^ b);

endmodule
