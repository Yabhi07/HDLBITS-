module top_module( 
    input [1023:0] in,
    input [7:0] sel,
    output [3:0] out ); 
  assign out= in[4*sel+3 -:4]; 
  //sel=0:out=in[3:0] 3 to downward 4 values negative width slicing 
  // sel=1;out=in[7:4] 7 to downward 4 values 

endmodule
