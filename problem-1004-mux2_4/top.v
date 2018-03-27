module mux2_4(
    a
   ,b
   ,sel
   ,q
);

input   [3:0]   a, b;
input           sel;
output  [3:0]   q;

assign q = sel ? a : b;

endmodule