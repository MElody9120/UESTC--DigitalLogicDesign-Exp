module ram32x8( addr,d,wr,rd,cs,dout
);
input[4:0] addr; 
input[7:0] din; 
input wr,rd,cs;
output[7:0] dout;

//以下根据 32x8 RAM 设计原理框图设计
ram16x4 r1(addr[3:0],din[3:0],addr[4],wr,rd,dout[3:0]);
ram16x4 r2(addr[3:0],din[7:4],addr[4],wr,rd,dout[7:4]);
ram16x4 r3(addr[3:0],din[3:0],~addr[4],wr,rd,dout[3:0]);
ram16x4 r4(addr[3:0],din[7:4],~addr[4],wr,rd,dout[7:4]);

 endmodule
