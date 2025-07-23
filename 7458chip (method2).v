module top_module ( 
    //designing a  7458  chip
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
	
    wire w1 , w2 , w3 , w4 ;
    // can also use bitwise operators 
    assign w1 = p1a && p1b && p1c;
    assign w4 = p1d && p1e && p1f;
    assign w2 = p2a && p2b;
    assign w3 = p2c && p2d;
    
    assign p1y = w1 || w4;
    assign p2y = w2 || w3 ;
    

endmodule
