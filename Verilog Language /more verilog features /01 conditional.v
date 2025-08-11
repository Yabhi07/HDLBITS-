module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);// 
    wire [7:0] w1 , w2;

    // assign intermediate_result1 = compare? true: false; 
    assign w1= a>b ? b:a;
    assign w2=c>d? d:c; 
    
    assign min=w1>w2 ? w2:w1;

endmodule
