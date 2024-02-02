module parity_one(A, B);
input [7:0] A ;
output [8:0] B;
assign B[0] = ^(A);
assign {B[0], A} = [8:0]B;
// even party comes from xoring all the bit of the number together
//the evenparty bit is responsible to make the number of the ones in the bits is even ot odd
// foe example 11001001-0
//here the last bit after the dash is zero bec the number of the ones is 4 so it's even
