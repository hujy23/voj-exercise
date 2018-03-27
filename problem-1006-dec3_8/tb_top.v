module tb_dec3_8();

reg     [2:0]   x;
wire    [7:0]   y;

dec3_8 u_dec3_8(x, y);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(1, u_dec3_8);
    //$dumpvars(1, u_dec3_8.x, u_dec3_8.y);
    $monitor("Time = %3d, x = %b, y = %b",
             $time, x, y);

        x = 3'h0;
    #10 x = 3'h1;
    #10 x = 3'h2;
    #10 x = 3'h3;
    #10 x = 3'h4;
    #10 x = 3'h5;
    #10 x = 3'h6;
    #10 x = 3'h7;
    #10 $finish;
end

endmodule
