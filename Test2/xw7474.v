module xw74x74(
CLK , D , PR_L , CLR_L , Q , QN
);

input	CLK , D , PR_L , CLR_L ; 
output Q , QN ;
reg Q , QN ;

//当时钟处于上升沿且 CLR_L 为 0 时，Q = 0, QN = 1
//当时钟处于上升沿且 PR_L 为 0 时，Q = 1, QN = 0;
//当时钟处于上升沿且 CLR_L = PR_L = 1 时，Q = D, QN = ~D;

always @ ( posedge CLK or negedge PR_L or negedge CLR_L ) 
begin
	if(!CLR_L)
		begin
			Q<=0;QN<=1;
 
		end
	else if(!PR_L) 
		begin
			Q<=1;QN<=0;
 		end

	else
 		begin
			Q<=D;QN<=~D;
		end
end
endmodule
