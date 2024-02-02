module MUXXXX2X1 (A,B,SEL,OUT);
	input A,B,SEL;
	output OUT;
	assign OUT=SEL?B:A;
endmodule 