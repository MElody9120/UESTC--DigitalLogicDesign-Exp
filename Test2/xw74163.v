module xw74x163( CLK,LD_L,CLR_L,D,ENP,ENT, Q,RCO
);

input CLK,LD_L,CLR_L,ENP,ENT;
input[3:0]D;
output[3:0]Q; output RCO;
reg[3:0]Q, RCO;

always @(posedge CLK or CLR_L or LD_L or ENP or ENT)	//时钟上升沿到来时
	begin
		if(!CLR_L)	//CLR_L 为 0 时，输出数据 Q 清零
			begin
				Q <= 4'b0000;
			end 
		else
			begin
				if(CLR_L == 1 && LD_L == 0)	//CLR_L 为 1 且 LD_L 为 0 时，输出数据 Q为 D
					begin
						Q <= D;
					end	
			end
		
		if(CLR_L && LD_L && ENP && ENT)	//CLR_L,LD_L,ENP,ENT 都为 1 时，Q 计数加 1
 			begin
				Q <= Q + 1;
			end
	end
 

always @(ENT) 
	begin
		if(ENT)	//ENT 为 1 时，RCO 为 Q[0]Q[1]Q[2]Q[3]和 ENT 的且（逻辑and）
			begin
				RCO <= Q[0]&&Q[1]&&Q[2]&&Q[3]&&ENT;
			end
		else		//当ENT 为 0 时，将RCO 置 0 
			begin
				RCO <= 0;
			end
end 

endmodule
