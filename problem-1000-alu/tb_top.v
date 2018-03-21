module tb_alu;

reg[7:0]  a, b;
reg[2:0]  opcode;
wire[7:0] out;
reg[31:0] seed;

alu  u_alu(a, b, opcode, out);

parameter   times=5;

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(1, u_alu);
    $monitor ("Time = %3d, a = %b, b = %b, opcode = %b, out = %b", 
				$time, a, b, opcode, out);

    seed = 32'h293;
    a = {$random(seed)} % 256;  
    b = {$random(seed)} % 256;  
    opcode=3'h0;

    repeat(times)
    begin
    #10 a = {$random(seed)} % 256;  //Give a radom number.
        b = {$random(seed)} % 256;  //Give a radom number.
        opcode = opcode + 1;
    end
    #10  $finish;
end           

endmodule
