module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum); 
     assign sum=x+y; 
    //sum[4] will act like carry of 4 bit addition 

endmodule 
