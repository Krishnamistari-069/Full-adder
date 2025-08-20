module FA_1_Bit_BH(A,B,Cin,Sum,Cout);

input A,B,Cin;
 output reg Sum,Cout;

 always @( A,B,Cin)
 begin
{Cout,Sum} = A + B + Cin;
 end
 endmodule