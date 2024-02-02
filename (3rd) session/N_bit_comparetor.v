module N_bit_comparetor (A,B,AGB,AEB,ALB);
	parameter N=4;
	input [N-1:0] A,B;
	output  AGB,AEB,ALB;
	assign AGB=(A>B)?1'b1:1'b0;
	assign AEB=(A==B)?1'b1:1'b0;
	assign ALB=(A<B)?1'b1:1'b0;
endmodule 