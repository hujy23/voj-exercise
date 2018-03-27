module tb_mux2_4();

reg     [3:0]   a, b;
reg             sel;
wire    [3:0]   q;

mux2_4 u_mux2_4(a, b, sel, q);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(1, u_mux2_4);
    //$dumpvars(1, u_mux2_4.a, u_mux2_4.b, u_mux2_4.sel, u_mux2_4.q);
    $monitor("Time = %3d, a = %b, b = %b, sel = %b, q = %b",
             $time, a, b, sel, q);

        a = 4'b1111; b = 4'b0000; sel = 1;
    #10 a = 4'b1110; b = 4'b0001;
    #10 a = 4'b1101; b = 4'b0010; sel = 0;
    #10 a = 4'b1100; b = 4'b0011;
    #10 $finish;
end

endmodule