module MUX4XX1 (K,L,C,D,SEL,OUT);
	input K,L,C,D;
	input [1:0] SEL;
	output OUT;
	wire w1,w2;
	MUXXXX2X1 m0 (.A(K),.B(L),.SEL(SEL[0]),.OUT(w1));
	MUXXXX2X1 m1 (.A(C),.B(D),.SEL(SEL[0]),.OUT(w2));
	MUXXXX2X1 m2 (.A(w1),.B(w2),.SEL(SEL[1]),.OUT(OUT));
endmodule : MUX4XX1