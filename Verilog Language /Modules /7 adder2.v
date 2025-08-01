module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);// 
    wire w1,w2;
    add16 a1(a[15:0],b[15:0],0,sum[15:0],w1);
    add16 a2(a[31:16],b[31:16],w1,sum[31:16],w2);

endmodule 


module add1 ( input a, input b, input cin,   output sum, output cout );  
    assign sum=a^b^cin;
    assign cout=a&b | a&cin |b&cin ;
    
 
    

// Full adder module here

endmodule


// to instantiate module add1 and connecting ports together , we have to declare it 16 times //
