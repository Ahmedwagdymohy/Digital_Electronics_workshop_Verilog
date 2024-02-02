module Half_adder (A,B,CARRY,SUM);

input [3:0] A,B;
output CARRY;
output[3:0] SUM;
assign {CARRY,SUM}=A+B;
endmodule 