module top_module (input x, input y, output z); 
    wire w1,w2,w3,w4,t1,t2; 
    assign z=(t1^t2);
    assign t1=w1|w2;
    assign t2=w3&w4;
    
    assign w1=(x^y)&x; 
    assign w3=(x^y)&x;
    assign w4=~(x^y); 
    assign w2=~(x^y);
    

endmodule   


//m2/ 
module top_module(
	input x,
	input y,
	output z);

	wire o1, o2, o3, o4;
	
	A ia1 (x, y, o1);
	B ib1 (x, y, o2);
	A ia2 (x, y, o3);
	B ib2 (x, y, o4);
	
	assign z = (o1 | o2) ^ (o3 & o4);

	// Or you could simplify the circuit including the sub-modules:
	// assign z = x|~y;
	
endmodule

module A (
	input x,
	input y,
	output z);

	assign z = (x^y) & x;
	
endmodule

module B (
	input x,
	input y,
	output z);

	assign z = ~(x^y);

endmodule
