odule NbitALU (A, B, OPCODE, RESULT);
parameter M = 1;
input [M − 1 ∶ 0] A, B;
input [1 ∶ 0] OPCODE;
output reg [M − 1 ∶ 0] RESULT;
wire [M − 1 ∶ 0] adder_out;
NbitAdder #(. N(M)) Addition(. A(A), . B(B), . C(adder_out));
always @(∗) begin
case (OPCODE)
2′b00 ∶ RESULT = adder_out;
2′b10 ∶ RESULT = A − B;
2′b01 ∶ RESULT = A | B;
2′b11 ∶ RESULT = A ^ B;
endcase
end
endmodule