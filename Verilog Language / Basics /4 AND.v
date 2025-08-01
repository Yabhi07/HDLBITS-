module top_module( 
    input a, 
    input b, 
  output out ); 
  assign out= a & b; // && can also be used as it is one bit inputs and output

endmodule
