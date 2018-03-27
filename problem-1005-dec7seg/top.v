module dec7seg(
    x
   ,a , b, c, d, e, f, g
);

input   [3:0]   x;
output          a, b, c, d, e, f, g;

reg             a, b, c, d, e, f, g;

always @(x)
    case (x)
        4'b0000 : {a,b,c,d,e,f,g} <= 7'b111_1110;
        4'b0001 : {a,b,c,d,e,f,g} <= 7'b011_0000;
        4'b0010 : {a,b,c,d,e,f,g} <= 7'b110_1101;
        4'b0011 : {a,b,c,d,e,f,g} <= 7'b111_1001;
        4'b0100 : {a,b,c,d,e,f,g} <= 7'b011_0011;
        4'b0101 : {a,b,c,d,e,f,g} <= 7'b101_1011;
        4'b0110 : {a,b,c,d,e,f,g} <= 7'b101_1111;
        4'b0111 : {a,b,c,d,e,f,g} <= 7'b111_0000;
        4'b1000 : {a,b,c,d,e,f,g} <= 7'b111_1111;
        4'b1001 : {a,b,c,d,e,f,g} <= 7'b111_1011;
        4'b1010 : {a,b,c,d,e,f,g} <= 7'b111_0111;
        4'b1011 : {a,b,c,d,e,f,g} <= 7'b001_1111;
        4'b1100 : {a,b,c,d,e,f,g} <= 7'b100_1110;
        4'b1101 : {a,b,c,d,e,f,g} <= 7'b011_1101;
        4'b1110 : {a,b,c,d,e,f,g} <= 7'b100_1111;
        4'b1111 : {a,b,c,d,e,f,g} <= 7'b100_0111;
        default : {a,b,c,d,e,f,g} <= 7'b000_0000;
    endcase

endmodule
