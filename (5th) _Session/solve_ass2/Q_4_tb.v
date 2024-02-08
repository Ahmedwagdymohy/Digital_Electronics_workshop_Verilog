module NbitAdder_tb ();
parameter n = 2;
reg [n − 1 ∶ 0] a_tb, b_tb, c_expected;
wire [n − 1 ∶ 0] c_dut;
NbitAdder #(. N(n)) DUT (. A(a_tb), . B(b_tb), . C(c_dut));
integer i;
initial begin
// Directed Testing
// Randomized Testing
for (i = 0 ; i < 100 ; i = i + 1) begin
a_tb = $random;
b_tb = $random;
c_expected = a_tb + b_tb;
#10;
if (c_dut ! = c_expected) begin
$display("The Nbit Adder Design is Wrong!");
$stop;
end
end
$stop;
end
initial begin
$monitor("A = %b, B = %b, C_DUT = %b,
C_Expected = %b ", a_tb, b_tb, c_dut, c_expected);
end
endmodule