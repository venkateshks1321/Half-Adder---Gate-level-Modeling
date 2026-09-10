`timescale 1ns/1ps
 module half_adder_tb; 
  reg A,B; 
   wire Sum,Carry;
   half_adder dut( 
     .A(A), 
      .B(B), 
       .Sum(Sum), 
        .Carry(Carry) 
         ); 
          initial begin 
            $dumpfile("half_adder.vcd"); 
            $dumpvars(0,half_adder_tb); 

             $monitor("Time=%0t|A=%bB=%b| Sum=%bCarry=%b", $time,A,B,Sum,Carry);
               A= 0;B=0; 
                #10 A=0;B=1; 
                #10 A=1;B=0; 
                #10 A=1;B=1; 
                #10 $finish; 
                   end
                    endmodule