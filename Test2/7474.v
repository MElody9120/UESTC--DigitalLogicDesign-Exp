module mj74x74(
CLK , D , PR_L , CLR_L , Q , QN
);
input  CLK , D , PR_L , CLR_L ;
output Q , QN ;
wire [4:1]w; 
nand(w[1],PR_L,w[4],w[2]);
nand(w[2],w[1],CLR_L,CLK);
nand(w[3],w[2],CLK,w[4]);
nand(w[4],w[3],CLR_L,D);
nand(Q,PR_L,w[2],QN);
nand(QN,Q,w[3],CLR_L);

endmodule
