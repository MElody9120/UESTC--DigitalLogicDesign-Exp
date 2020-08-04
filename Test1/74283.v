module mj74X283(
 
A0,A1,A2,A3,B0,B1,B2,B3,C0,C4,S0,S1,S2,S3
);
input A0,A1,A2,A3; input B0,B1,B2,B3;
input C0; output C4;
output S0,S1,S2,S3;
wire G0,G1,G2,G3; wire P0,P1,P2,P3;
wire C1,C2,C3; wire O1,O2,O3,O4;
wire GP0,GP1,GP2,GP3;
wire G0_H,G1_H,G2_H,G3_H;

and andG0(G0,A0,B0); 
and andG1(G1,A1,B1); 
and andG2(G2,A2,B2); 
and andG3(G3,A3,B3);
or orP0(P0,A0,B0);
or orP1(P1,A1,B1);
or orP2(P2,A2,B2);
or orP3(P3,A3,B3);
and andO1(O1,P0,C0); 
or orC1(C1,G0,O1);
and andO2(O2,P1,C1); 
or orC2(C2,G1,O2);
and andO3(O3,P2,C2); 
or orC3(C3,G2,O3);
and andO4(O4,P3,C3); 
or orC4(C4,G3,O4);
not not0(G0_H,G0); 
not not1(G1_H,G1); 
not not2(G2_H,G2); 
not not3(G3_H,G3);
and andGP0(GP0,G0_H,P0);
and andGP1(GP1,G1_H,P1); 
and andGP2(GP2,G2_H,P2); 
and andGP3(GP3,G3_H,P3);
xor xor0(S0,GP0,C0); 
xor xor1(S1,GP1,C1); 
xor xor2(S2,GP2,C2); 
xor xor3(S3,GP3,C3);

endmodule
