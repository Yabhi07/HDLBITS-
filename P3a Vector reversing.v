module top_module( 
    input [7:0] in,
    output [7:0] out
); 
   
always @(*) begin	
		for (int i=0; i<8; i++)	// int is a SystemVerilog type. Use integer for pure Verilog.
			out[i] = in[8-i-1];
	end 

endmodule
