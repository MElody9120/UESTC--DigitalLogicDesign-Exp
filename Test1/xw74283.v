module xw74x283( A,B,C_in,C_out,S
);
input[3:0]A;
input[3:0]B; input C_in;
output C_out; output[3:0]S;
wire [4:0] G,P,C;
assign C[0] = C_in; assign G=A&B; assign P=A|B;
//根据推导公式可写出下列代码
assign C[1]=G[0]|(P[0]&C[0]);
assign C[2]=G[1]|(P[1]&C[1]);
assign C[3]=G[2]|(P[2]&C[2]);
assign C[4]=G[3]|(P[3]&C[3]);
assign S = A^B^C[3:0]; assign C_out=C[4];
endmodule
