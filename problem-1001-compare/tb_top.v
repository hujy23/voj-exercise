`timescale 1ns/1ns

module test();
  
reg     a,b;
wire    equal;
  
compare u_cpmpare(a, b, equal);
  
initial begin
    $dumpfile("wave.vcd");                                                                        
    $dumpvars;                                                                                    
    $monitor("Time = %3d, a = %b, b = %b, equal = %b", $time, a, b, equal);          

        a=0; b=0;
    #10 a=0; b=1;
    #10 a=1; b=1;
    #10 a=1; b=0;
    #10 a=0; b=0;
    #10 ;
end
  
endmodule
