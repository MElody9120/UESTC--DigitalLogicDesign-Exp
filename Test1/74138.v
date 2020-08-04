module test1(A,B,C,Y0_L,Y1_L,Y2_L,Y3_L,Y4_L,Y5_L,Y6_L,Y7_L,G1,G2A,G3A,G
    );
	 input A,B,C,G1,G2A,G3A;
	 output Y0_L,Y1_L,Y2_L,Y3_L,Y4_L,Y5_L,Y6_L,Y7_L,G;
	 and  G_activity(G,G1,~G2A,~G3A);
	 nand not_and1(Y0_L,G,~A,~B,~C);
	 nand not_and2(Y1_L,G, A,~B,~C);
	 nand not_and3(Y2_L,G,~A, B,~C);
	 nand not_and4(Y3_L,G, A, B,~C);
	 nand not_and5(Y4_L,G,~A,~B, C);
	 nand not_and6(Y5_L,G, A,~B, C);
	 nand not_and7(Y6_L,G,~A, B, C);
	 nand not_and8(Y7_L,G, A, B, C);
endmodule
