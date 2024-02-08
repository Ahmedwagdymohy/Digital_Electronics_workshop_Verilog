module BCD_enc_tb ();
reg [9: 0] d;
wire [3: 0] y_dut;
BCD_enc DUT (. D(d), . Y(y_dut));
reg [9: 0]temp;
integer i;
initial begin
d = $random;
temp = d;
for (i = 0 ; i < 10 ; i = i + 1) begin
d = temp << i;
#10;
end
$stop;
end
initial begin
$monitor("D9 D8 D7 D6 D5 D4 D3 D2 D1 D0 = %b,
Y2 Y1 Y0 = %b ", d, y_dut);
end
endmodul