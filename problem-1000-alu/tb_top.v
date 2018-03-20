`timescale 1ns/1ns

module alutest;

wire[7:0] out;
reg[7:0]  a, b;
reg[2:0]  opcode;
reg[31:0] seed;

parameter   times=5;

initial begin
  $dumpfile("wave.vcd");
  $dumpvars;
  $monitor ("Time = %3d, a = %b, b = %b, opcode = %b, out = %b", $time, a, b, opcode, out);

  seed = 32'h293;
  a={$random(seed)}%256;  
  b={$random(seed)}%256;  
  opcode=3'h0;

  repeat(times)
    begin
    #100   a={$random(seed)}%256;  //Give a radom number.
           b={$random(seed)}%256;  //Give a radom number.
           opcode=opcode+1;
    end
  #100  $finish;
end           

alu  u_alu(out, opcode, a, b);

endmodule