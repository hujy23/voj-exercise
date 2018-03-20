`define plus    3'd0
`define minus   3'd1
`define band    3'd2
`define bor     3'd3
`define unegate 3'd4

module  alu(out,opcode,a,b);
  output[7:0] out;
  reg[7:0]    out;
  input[2:0] opcode;
  input[7:0] a,b;              //操作数。
  always@(opcode or a or b)    //电平敏感的always块
    begin
      case(opcode)
        `plus:  out = a+b;   //加操作。
        `minus: out = a-b;   //减操作。
        `band:  out = a&b;   //求与。
        `bor:   out = a|b;   //求或。
        `unegate:  out=~a;   //求反。
        default:   out=8'hx;  //未收到指令时，输出任意态。
      endcase
  end
endmodule

