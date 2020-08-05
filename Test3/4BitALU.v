module alu4( a,b,m,cin,op,cout,sum
);

parameter ADDER_WIDTH =4;

input	[ADDER_WIDTH-1:0] a;
input [ADDER_WIDTH-1:0] b;
input	[1:0] op; 
input cin;
input m; 
output cout;
output [ADDER_WIDTH-1:0] sum;

reg	cout;
reg	[ADDER_WIDTH-1:0] sum;

always @(a or b or cin or m or op) 
begin
	if(!m)	//m 置 0 时，ALU 为算数运算
		begin
			case(op)
				2'b00 :	{cout,sum}=a+b+cin;	//op 置 00 时，做加法
				2'b01 :	{cout,sum}=a-b-cin;//op 置 01 时，做减法
				default:	sum=0; 
			endcase
		end

else	//m 置 1 时，逻辑运算
	begin
		case(op)
			2'b00:	sum=a&b;	//op 置 00 时，且运算
			2'b01:	sum=a|b;	//op 置 01 时，或运算
			2'b10:	sum=a;	//op 置 10 时，输出 a
			2'b11:	sum=b;	//op 置 11 时，输出 b
		endcase	
	end	
end	
 
endmodule
