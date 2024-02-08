odule ALU4bit7SegmentLED (A, B, Opcode, enable, a, b, c, d, e, f, g);
parameter N = 1;
input [N − 1 ∶ 0] A, B;
input [1: 0] Opcode;
input enable;
output reg a, b, c, d, e, f, g;
wire [N − 1 ∶ 0] Result;
reg [6: 0] LEDs;
NbitALU #(. M(N)) ALU(. A(A), . B(B), . OPCODE(Opcode), . RESULT(Result));
always @(∗) begin
if (enable) begin
case (Result)
4′h0 ∶ LEDs = 7′b111_1110; // LEDS = {a, b, c, d, e, f, g}
4′h1 ∶ LEDs = 7′b011_0000;
4′h2 ∶ LEDs = 7′b110_1101;
4′h3 ∶ LEDs = 7′b111_1001;
4′h4 ∶ LEDs = 7′b011_0011;
4′h5 ∶ LEDs = 7′b101_1011;
4′h6 ∶ LEDs = 7′b101_1111;
4′h7 ∶ LEDs = 7′b111_0000;
4′h8 ∶ LEDs = 7′b111_1111;
4′h9 ∶ LEDs = 7′b111_1011;
4′hA ∶ LEDs = 7′b111_0111;
4′hB ∶ LEDs = 7′b001_1111;
4′hC ∶ LEDs = 7′b100_1110;
4′hD ∶ LEDs = 7′b011_1101;
4′hE ∶ LEDs = 7′b100_1111;
4′hF ∶ LEDs = 7′b100_0111;
endcase
end else LEDs = 7′b000_0000;
end
always @(∗) begin
a = LEDs[6];
b = LEDs[5];
c = LEDs[4];
d = LEDs[3];
e = LEDs[2];
f = LEDs[1];
g = LEDs[0];
end endmodule