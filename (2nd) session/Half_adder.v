module Half_adder(A,B,CARRY,SUM);
input A, B;
output CARRY;
output SUM;
assign SUM = A^B;
assign CARRY = A&B;

endmodule

