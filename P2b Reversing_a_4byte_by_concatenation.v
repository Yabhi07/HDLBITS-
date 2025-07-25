module top_module( 
  input [31:0] in, // DdddddddAaaaaaaaCcccccccBbbbbbbb
  output [31:0] out );// BbbbbbbbCcccccccAaaaaaaaDddddddd
  
  assign { out[7:0] , out[15:8] , out[23:16] , out[31:24] } =in;

  //by concatenating , swapped the 4 bytes  
  // can also write assign out={in[7:0],in[15:8],in[23:16],in[31;24]};

endmodule
