module xwtest1( G1,G2A,G2B,C,B,A,Y_L);
input G1,G2A,G2B; input C,B,A;
output [7:0]Y_L; reg [7:0]Y_L;
always @(G1 or G2A or G2B or A or B or C) begin //设置执行条件，满足时执行
case({G1,G2A,G2B,C,B,A})	//根据输入的 G1,G2A,G2B,C,B,A 输出 Y_L[7:0]
6'b100000:	Y_L=8'b11111110; //以下为设置对应各个取值情况应产生的值
6'b100001:	Y_L=8'b11111101;
6'b100010:	Y_L=8'b11111011;
6'b100011:	Y_L=8'b11110111;
6'b100100:	Y_L=8'b11101111;
6'b100101:	Y_L=8'b11011111;
6'b100110:	Y_L=8'b10111111;
6'b100111:	Y_L=8'b01111111;
default:	Y_L=8'b11111111; 
endcase
end
endmodule
