module in5out2_tb ();
reg [2: 0] d;
reg a, b, c, sel, out_expected, out_expected_bar;
wire dut_out, dut_out_bar;
in5out2 DUT (.D(d), . A(a), . B(b), . C(c), .Sel(sel), . Out(dut_out), . Out_Bar(dut_out_bar));
integer i;
initial begin
for (i = 0 ; i < 100; i = i + 1) begin
d = $random;
a = $random;
b = $random;
c = $random;
sel = $random;
out_expected = (sel == 1)? ~(a ^ b ^ c) ∶ (d[0] & d[1]) | d[2];
out_expected_bar = ~out_expected;
#10;
if (out_expected ! = dut_out) begin
$display("The Design is Wrong!");
end
if (out_expected_bar ! = dut_out_bar) begin
$display("The Design is Wrong!");
end
end
$stop;
end
initial begin
$monitor("D0 = %b,D1 = %b,D2 = %b, A = %b, B = %b, C = %b, OUT = %b, OUT_BAR
= %b ", d[0], d[1], d[2], a, b, c, dut_out, dut_out_bar);
end
endmodule