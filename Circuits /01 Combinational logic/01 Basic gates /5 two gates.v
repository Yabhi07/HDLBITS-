module top_module (
    input in1,
    input in2,
    input in3,
    output out); 
    wire w1;
    assign w1= ~(in1^in2);
    assign out=in3^w1;

endmodule
