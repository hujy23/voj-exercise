module compare(
    a
   ,b
   ,equal
);

input   a, b;
output  equal;

localparam	EQUAL = 1'b1;
localparam	NOT_EQUAL = 1'b0;

assign  equal = (a == b) ? EQUAL : NOT_EQUAL;

endmodule
