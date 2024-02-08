module priorityencoder_tb ();
reg [3: 0] x_dut;
reg [1: 0] y_expected;
wire [1: 0] y_dut;
priorityencoder DUT (. X(x_dut), . Y(y_dut));
integer i;
initial begin
for (i = 0 ; i < 100 ; i = i + 1) begin
x_dut = $random;
casex (x_dut)
4′b1xxx ∶ y_expected = 2′b11;
4′b01xx ∶ y_expected = 2′b10;
4′b001x ∶ y_expected = 2′b01;
4′b000x ∶ y_expected = 2′b00;
endcase
#10;
if (y_dut ! = y_expected) begin
$display("The Design is Wrong!");
$stop;
end
end
$stop;
end
initial begin
$monitor("X3 X2 X1 X0 = %b, Y1 Y0 = %b ", x_dut, y_dut);
end
endmodule