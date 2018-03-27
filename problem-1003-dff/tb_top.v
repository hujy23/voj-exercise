// Two Testbenches
`define TB1     // TB2

`ifdef TB1
module tb_dff;

reg     clk;
reg     rst_n;
reg     d;
wire    q;
wire    qb;

// Instantiate design under test
dff u_dff(.clk(clk), .rst_n(rst_n),
          .d(d), .q(q), .qb(qb));

initial begin
    // Dump waves
    $dumpfile("wave.vcd");
    $dumpvars(1, u_dff.clk, u_dff.rst_n, u_dff.d, u_dff.q, u_dff.qb);

    $display("Reset flop.");
    clk = 0;
    rst_n = 0;
    d = 1'bx;
    display;

    $display("Release reset.");
    d = 1;
    rst_n = 1;
    display;

    $display("Toggle clk.");
    clk = 1;
    display;
end

task display;
    #5 $display("d:%0h, q:%0h, qb:%0h",
                d, q, qb);
endtask

endmodule

`elsif TB2
module tb_dff;

reg     clk, rst_n, d;
wire    q, qb;

dff u_dff(clk, rst_n, d, q, qb);

always #5 clk = ~clk;

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(1, u_dff.clk, u_dff.rst_n, u_dff.d, u_dff.q, u_dff.qb);
    $monitor("Time = %3d, clk = %b, rst_n = %b, d = %b, q = %b, qb = %b",
             $time, clk, rst_n, d, q, qb);

        clk = 0;
        rst_n = 0; d = 1'bx;
    #10 d = 1; rst_n = 1;
    #10 d = 0;
    #10 d = 1;
    #10 $finish;
end

endmodule

`else
// nothing~
`endif