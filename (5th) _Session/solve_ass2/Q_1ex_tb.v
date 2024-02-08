odule GrayCode_OneHot_Encoder_tb ();
parameter use_gray = 1;
reg [2: 0] A_tb;
wire [6: 0] B_tb_always, B_tb_generate;
GrayCode_OneHot_Encoder_always #(.USE_GRAY(use_gray)) DUT1 (. A(A_tb), . B(B_tb_always));
GrayCode_OneHot_Encoder_generate #(.USE_GRAY(use_gray)) DUT2 (. A(A_tb), . B(B_tb_generate));
integer i;
initial begin
for (i = 0 ; i < 100 ; i = i + 1) begin
A_tb = $random;
#10;
if (B_tb_always ! = B_tb_generate) begin
$display ("The Encoding Design is Wrong!");
$stop;
end
end
$stop;
end
initial begin
$monitor("A = %b , B_gen = %b , B_ref = %b", A_tb, B_tb_generate, B_tb_always);
end
endmodule