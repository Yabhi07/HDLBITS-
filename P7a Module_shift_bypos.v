module top_module ( input clk, input d, output q ); 
    wire w1,w2;
    
    my_dff mo(clk,d,w1);
    my_dff m1(clk,w1,w2);
    my_dff m2(clk,w2,q);

endmodule
