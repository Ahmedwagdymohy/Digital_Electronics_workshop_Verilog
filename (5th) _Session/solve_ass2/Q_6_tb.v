module ALU4bit7SegmentLED_tb ();
parameter n = 1;
reg [n − 1 ∶ 0] A_tb, B_tb;
reg [1: 0] Op_code;
reg Enable;
wire a_tb, b_tb, c_tb, d_tb, e_tb, f_tb, g_tb;
reg a_tb_Exp, b_tb_Exp, c_tb_Exp, d_tb_Exp, e_tb_Exp, f_tb_Exp, g_tb_Exp;
reg [n − 1 ∶ 0] Result_Expected;
ALU4bit7SegmentLED #(.N(n)) DUT (A_tb,B_tb,Op_code, Enable, a_tb, b_tb, c_tb, d_tb, e_tb, f_tb, g_tb);
integer i;
initial begin
for (i = 0 ; i < 100 ; i = i + 1) begin
A_tb = $random;
B_tb = $random;
Op_code = $random;
Enable = $random;
case (Op_code)
2′b00 ∶ Result_Expected = A_tb + B_tb;
2′b10 ∶ Result_Expected = A_tb − B_tb;
2′b01 ∶ Result_Expected = A_tb | B_tb;
2′b11 ∶ Result_Expected = A_tb ^ B_tb;
endcase
if (Enable) begin
case (Result_Expected)
// {a_tb_Exp, b_tb_Exp, c_tb_Exp, d_tb_Exp, e_tb_Exp, f_tb_Exp, g_tb_Exp} = {a, b, c, d, e, f, g}
4′h0 ∶ {a_tb_Exp, b_tb_Exp, c_tb_Exp, d_tb_Exp, e_tb_Exp, f_tb_Exp, g_tb_Exp} = 7′b111_1110;
4′h1 ∶ {a_tb_Exp, b_tb_Exp, c_tb_Exp, d_tb_Exp, e_tb_Exp, f_tb_Exp, g_tb_Exp} = 7′b011_0000;
4′h2 ∶ {a_tb_Exp, b_tb_Exp, c_tb_Exp, d_tb_Exp, e_tb_Exp, f_tb_Exp, g_tb_Exp} = 7′b110_1101;
4′h3 ∶ {a_tb_Exp, b_tb_Exp, c_tb_Exp, d_tb_Exp, e_tb_Exp, f_tb_Exp, g_tb_Exp} = 7′b111_1001;
4′h4 ∶ {a_tb_Exp, b_tb_Exp, c_tb_Exp, d_tb_Exp, e_tb_Exp, f_tb_Exp, g_tb_Exp} = 7′b011_0011;
4′h5 ∶ {a_tb_Exp, b_tb_Exp, c_tb_Exp, d_tb_Exp, e_tb_Exp, f_tb_Exp, g_tb_Exp} = 7′b101_1011;
4′h6 ∶ {a_tb_Exp, b_tb_Exp, c_tb_Exp, d_tb_Exp, e_tb_Exp, f_tb_Exp, g_tb_Exp} = 7′b101_1111;
4′h7 ∶ {a_tb_Exp, b_tb_Exp, c_tb_Exp, d_tb_Exp, e_tb_Exp, f_tb_Exp, g_tb_Exp} = 7′b111_0000;
4′h8 ∶ {a_tb_Exp, b_tb_Exp, c_tb_Exp, d_tb_Exp, e_tb_Exp, f_tb_Exp, g_tb_Exp} = 7′b111_1111;
4′h9 ∶ {a_tb_Exp, b_tb_Exp, c_tb_Exp, d_tb_Exp, e_tb_Exp, f_tb_Exp, g_tb_Exp} = 7′b111_1011;
4′hA ∶ {a_tb_Exp, b_tb_Exp, c_tb_Exp, d_tb_Exp, e_tb_Exp, f_tb_Exp, g_tb_Exp} = 7′b111_0111;
4′hB ∶ {a_tb_Exp, b_tb_Exp, c_tb_Exp, d_tb_Exp, e_tb_Exp, f_tb_Exp, g_tb_Exp} = 7′b001_1111;
4′hC ∶ {a_tb_Exp, b_tb_Exp, c_tb_Exp, d_tb_Exp, e_tb_Exp, f_tb_Exp, g_tb_Exp} = 7′b100_1110;
4′hD ∶ {a_tb_Exp, b_tb_Exp, c_tb_Exp, d_tb_Exp, e_tb_Exp,f_tb_Exp, g_tb_Exp} = 7′b011_1101;
4′hE ∶ {a_tb_Exp, b_tb_Exp, c_tb_Exp, d_tb_Exp, e_tb_Exp, f_tb_Exp, g_tb_Exp} = 7′b100_1111;
4′hF ∶ {a_tb_Exp, b_tb_Exp, c_tb_Exp, d_tb_Exp, e_tb_Exp,f_tb_Exp, g_tb_Exp} = 7′b100_0111;
endcase
end
18
else
{a_tb_Exp, b_tb_Exp, c_tb_Exp, d_tb_Exp, e_tb_Exp,f_tb_Exp, g_tb_Exp} = 7′b000_0000;
#10;
if ({a_tb_Exp, b_tb_Exp, c_tb_Exp, d_tb_Exp, e_tb_Exp, f_tb_Exp, g_tb_Exp} !
= {a_tb, b_tb, c_tb, d_tb, e_tb, f_tb, g_tb}) begin
$display("The ALU 4 bit 7 Segment LEDs Design is Wrong!");
$stop;
end
end
$stop;
end
initial begin
$monitor("Digit = %d, abcdefg = %b ", Result_Expected,{a_tb, b_tb, c_tb, d_tb, e_tb,f_tb, g_tb});
end
endmodule