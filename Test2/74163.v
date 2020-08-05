module mj74x163(CLK,LD_L,CLR_L,A,B,C,D,ENP,ENT, QA,QB,QC,QD,RCO
);

input CLK,LD_L,CLR_L,A,B,C,D,ENP,ENT; 
output QA,QB,QC,QD,RCO;

wire CLK_D,CK,LD_H,CLR,QAN,QBN,QCN,QDN;
wire [1:20]w;
wire [1:20]n; wire PT,ENT_L;

buf(CLK_D,CLK);
not(CK,CLK_D);
not(LD_H,LD_L); 
buf(CLR,CLR_L);
and(w[1],LD_H,CLR);
not(n[1],w[1]);
and(w[2],n[1],CLR);
and(PT,ENP,ENT);
xor(w[3],PT,QA);
and(w[4],w[1],A);
and(w[5],w[2],w[3]);
or(DA,w[4],w[5]);
buf(w[6],QA);
and(w[7],w[6],PT);
xor(w[8],w[7],QB);
and(w[9],w[1],B);
and(w[10],w[2],w[8]);
or(DB,w[9],w[10]);
and(w[11],QB,QA);
and(w[12],w[11],PT);
xor(w[13],w[12],QC);
and(w[14],w[1],C);
and(w[15],w[2],w[13]);
or(DC,w[14],w[15]);
and(w[16],QA,QB,QC);
and(w[17],w[16],PT);
xor(w[18],w[17],QD);
and(w[19],w[1],D);
and(w[20],w[2],w[18]);
or(DD,w19,w20);
buf(ENT_L,ENT); 
and(RCO,QA,QB,QC,QD,ENT_L);

74x74 U1(DA,CK,1,CLR_L,QA,QAN);
74x74 U2(DB,CK,1,CLR_L,QB,QBN);
74x74 U3(DC,CK,1,CLR_L,QC,QCN); 
74x74 U4(DD,CK,1,CLR_L,QD,QDN);

Endmodule
