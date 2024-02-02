module MUX2x1_Behave (A,B,SEL,OUT);
input A,B,SEL;
output reg OUT;
always @(*) begin
	if(SEL) begin
		 OUT=B;
	end else begin
		 OUT=A ;
	end
end
endmodule 