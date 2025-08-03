module top_module ( input clk, input d, output q ); 
    wire w1,w2;
    
    my_dff mo(.clk(clk),.d(d),.q(w1));
    my_dff m1(.clk(clk),.d(w1),.q(w2));
    my_dff m2(.clk(clk),.d(w2),.q(q));

endmodule
