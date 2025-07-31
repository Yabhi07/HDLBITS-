module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);  
     
    wire [15:0] w2,w4,w1,w3,w5;
    add16 a0(a[15:0],b[15:0],0,sum[15:0],w1); 
    add16 a1(a[31:16],b[31:16],0,w2,w3);
    add16 a2(a[31:16],b[31:16],1,w4,w5);
    
    
    always @(*) 
        begin 
            if (w1==0) 
                sum[31:16]=w2;
            else if (w1==1)
                sum[31:16]=w4; 
        end
                

endmodule
