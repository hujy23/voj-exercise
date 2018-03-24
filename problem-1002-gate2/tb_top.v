module  tb_gate2;

reg             a, b;
wire    [5:0]   z;

gate2   u_gate2(a, b, z);

initial begin
    // dump waves
    $dumpfile("wave.vcd");
    $dumpvars(1, u_gate2);
    $monitor("Time = %3d, a = %b, b = %b, z = %b",
             $time, a, b, z);
    // initialize inputs
    a = 0; b = 0;
    // assignments
    #10 a <= 0; b <= 1;
    #10 a <= 1; b <= 0;
    #10 a <= 1; b <= 1;
    #10 $finish;
end

endmodule
