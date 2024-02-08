module in5out2 (D, A, B, C, Sel, Out, Out_Bar);
input [2: 0] D;
input A, B, C, Sel;
output reg Out, Out_Bar;
reg AND2, OR1, XNOR1, MUX1;
always @(∗) begin
AND2 = D[1] & D[0];
OR1 = AND2 | D[2];
XNOR1 = ~(A ^ B ^C);
if (Sel)
Out = XNOR1;
else
Out = OR1;
Out_Bar = ~Out;
end
endmodule
