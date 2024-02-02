module even_parity (A,D);
	parameter N=8;
	input [N-1:0] A;
	output [N:0] D;
	wire even;
	assign even=^A;
	assign D={A,even};
endmodule