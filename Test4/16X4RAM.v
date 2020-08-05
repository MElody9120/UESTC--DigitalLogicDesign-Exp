module ram16x4( addr,din,cs,wr,re,dout
);

input[3:0] addr; 
input[3:0] din; 
input cs,wr,re; 
output[3:0] dout;
reg [3:0]ram[15:0];	//类似与二维数组
always @(posedge w)
	if(!cs)	//cs 置 0 时，ram[addr]置数据 d 
	begin
		ram[addr] <= din;
	end
	assign dout = (!(re||cs))?ram[addr]:4'bzzzz;	//re 和 cs 均为 0 时，dout 输出 ram[addr] ,否则 dout输出zzzz
endmodule
