module mux2X1_gate_level (A,B,SEL,OUT);
	input A,B,SEL;
	output OUT;
	wire w1,w2,w3;
	not(w3,SEL);
	and(w1,A,w3);
	and(w2,B,SEL);
	or(OUT,w1,w2);
endmodule 