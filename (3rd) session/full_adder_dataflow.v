module full_adder_dataflow (A,B,CIN,CARRY,OUT);
input A,B,CIN;
output CARRY,OUT;
assign {CARRY,OUT}=A+B+CIN;
endmodule 