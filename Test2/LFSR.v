module LFSR( CLK,RESET,X2,X1,X0
);

input CLK,RESET; 
output X2,X1,X0;
wire w1,w5,w6; 
wire w2,w3,w4;

mj74x194 S(CLK, 1'b1, w6, 1'b1, 1'b0, 1'b0, 1'b0,1'b1, RESET, 1'b0, X2, X1, X0, X4);

xor(w5,X0,X1);
not(w2,X1);
not(w3,X2);
and(w4,w2,w3);
xor(w6,w4,w5); 

endmodule
