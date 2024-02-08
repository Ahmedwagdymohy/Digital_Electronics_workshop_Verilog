odule DEMUX_tb ();
reg d_tb;
reg [1: 0] s_tb;
wire [3: 0] y_tb_dut;
reg [3: 0] y_tb_expected;
DEMUX DUT(.D(d_tb), . S(s_tb), . Y(y_tb_dut));
integer i;
initial begin
for (i = 0 ; i < 100 ; i = i + 1) begin
d_tb = $random;
s_tb = $random;
y_tb_expected[3] = s_tb[1] & s_tb[0] & d_tb;
y_tb_expected[2] = s_tb[1] & ~s_tb[0] & d_tb;
y_tb_expected[1] = ~s_tb[1] & s_tb[0] & d_tb;
y_tb_expected[0] = ~s_tb[1] & ~s_tb[0] & d_tb;
#10;
if (y_tb_dut ! = y_tb_expected) begin
$display("The DEMUX Design is Wrong!");
$stop;
end
end
$stop;
end
initial begin
$monitor("D = %b, S = %b, Y = %b ", d_tb, s_tb, y_tb_dut);
end
endmodule