module alu8( a,b,m,se,sum
);

input[7:0] a;
input[7:0] b; 
input m; 
input[1:0] se;
output[7:0] sum; 
wire cin,cout;

alu4 u1(a[3:0],b[3:0],m,0,se[1:0],cin,sum[3:0]); //根据 ALU8 设计原理框架图可得
alu4 u2(a[7:4],b[7:4],m,cin,se[1:0],cout,sum[7:4]); 

endmodule
