module top_module( 
  input [31:0] in, // DdddddddAaaaaaaaCcccccccBbbbbbbb
  output [31:0] out );// BbbbbbbbCcccccccAaaaaaaaDddddddd
  
  assign { out[7:0] , out[15:8] , out[23:16] , out[31:24] } =in;

  //by concatenating , swapped the 4 bytes 

endmodule
