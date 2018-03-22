module tb_compare;

reg     a, b;
wire    equal;

compare u_compare(a, b, equal);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(1, u_compare);
    $monitor("Time = %3d, a = %b, b = %b, equal = %b",
             $time, a, b, equal);

        a=0; b=0;
    #10 a=0; b=1;
    #10 a=1; b=1;
    #10 a=1; b=0;
    #10 a=0; b=0;
    #10 $finish;
end

endmodule
