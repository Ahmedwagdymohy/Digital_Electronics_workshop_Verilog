module ParametrizeMux2X1 (IN0,IN1,SEL,OUT);
paramter W2=1;
input [W2-1:0] IN0,IN1;
output [W2-1:0]	OUT;
assign out=sel?IN1,IN0;
endmodule : ParametrizeMux2X1