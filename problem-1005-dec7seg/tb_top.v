module tb_dec7seg();

reg     [3:0]   x;
wire            a, b, c, d, e, f, g;

dec7seg u_dec7seg(x, a, b, c, d, e, f, g);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(1, u_dec7seg);
    //$dumpvars(1, u_dec7seg.a, u_dec7seg.b, u_dec7seg.c, u_dec7seg.d, u_dec7seg.e, u_dec7seg.f, u_dec7seg.g, u_dec7seg.x);
    $monitor("Time = %3d, x = %h, abcdefg = %b%b%b_%b%b%b%b",
             $time, x, a, b, c, d, e, f, g);

        x = 4'h0;
    #10 x = 4'h1;
    #10 x = 4'h2;
    #10 x = 4'h3;
    #10 x = 4'h4;
    #10 x = 4'h5;
    #10 x = 4'h6;
    #10 x = 4'h7;
    #10 x = 4'h8;
    #10 x = 4'h9;
    #10 x = 4'ha;
    #10 x = 4'hb;
    #10 x = 4'hc;
    #10 x = 4'hd;
    #10 x = 4'he;
    #10 x = 4'hf;
    #10 $finish;
end

endmodule
