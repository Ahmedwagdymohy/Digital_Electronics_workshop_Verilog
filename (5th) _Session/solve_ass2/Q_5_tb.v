module NbitALU_tb ();
parameter n = 1;
reg [n − 1 ∶ 0] a_tb, b_tb;
reg [n − 1 ∶ 0] result_expected;
reg [1 ∶ 0] opcode_tb;
wire [n − 1 ∶ 0] result_dut;
NbitALU #(. M(n)) DUT
(. A(a_tb), . B(b_tb), . OPCODE(opcode_tb), . RESULT(result_dut));
integer i;
initial begin
for (i = 0 ; i < 100 ; i = i + 1) begin
a_tb = $random;
b_tb = $random;
opcode_tb = $random;
case (opcode_tb)
2′b00 ∶ result_expected = a_tb + b_tb;
2′b10 ∶ result_expected = a_tb − b_tb;
2′b01 ∶ result_expected = a_tb | b_tb;
2′b11 ∶ result_expected = a_tb ^ b_tb;
endcase
#10;
if (result_dut ! = result_expected) begin
$display ("The ALU Design is Wrong!");
$stop;
end
end
$stop;
end
initial begin
$monitor("A = %b, B = %b, Opcode = %b,
Result = %b ", a_tb, b_tb, opcode_tb, result_dut);
end
endmodule