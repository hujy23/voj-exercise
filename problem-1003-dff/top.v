module dff(
    clk
   ,rst_n
   ,d
   ,q
   ,qb
);
input   clk;
input   rst_n;
input   d;
output  q;
output  qb;

reg     q;

assign  qb = ~q;

always @(posedge clk or negedge rst_n)
begin
    if (!rst_n) begin
        // Asynchronous reset when reset goes low
        q <= 1'b0;
    end else begin
        // Assign D to Q on positive clock edge
        q <= d;
    end
end

endmodule
