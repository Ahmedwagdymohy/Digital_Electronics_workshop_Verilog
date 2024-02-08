module GrayCode_OneHot_Encoder_always (A,B);
parameter USE_GRAY = 1;
input [2: 0] A;
output reg [6: 0] B;
always @(∗) begin
if (USE_GRAY)
case (A)
3′b000 ∶ B = 7′b0000_000;
3′b001 ∶ B = 7′b0000_001;
3′b010 ∶ B = 7′b0000_011;
3′b011 ∶ B = 7′b0000_010;
3′b100 ∶ B = 7′b0000_110;
3′b101 ∶ B = 7′b0000_111;
3′b110 ∶ B = 7′b0000_101;
3′b111 ∶ B = 7′b0000_100;
default ∶ B = 7′b0000_000;
endcase
else
case (A)
3′b000 ∶ B = 7′b0000_000;
3′b001 ∶ B = 7′b0000_001;
3′b010 ∶ B = 7′b0000_010;
3′b011 ∶ B = 7′b0000_100;
3′b100 ∶ B = 7′b0001_000;
3′b101 ∶ B = 7′b0010_000;
3′b110 ∶ B = 7′b0100_000;
3′b111 ∶ B = 7′b1000_000;
default ∶ B = 7′b0000



module GrayCode_OneHot_Encoder_generate (A,B);
parameter USE_GRAY = 1;
input [2: 0] A;
output reg [6: 0] B;
generate
if (USE_GRAY)
always @(A)
case (A)
3′b000 ∶ B = 7′b0000_000;
3′b001 ∶ B = 7′b0000_001;
3′b010 ∶ B = 7′b0000_011;
3′b011 ∶ B = 7′b0000_010;
3′b100 ∶ B = 7′b0000_110;
3′b101 ∶ B = 7′b0000_111;
3′b110 ∶ B = 7′b0000_101;
3′b111 ∶ B = 7′b0000_100;
default ∶ B = 7′b0000_000;
endcase
else
always @(A)
case (A)
3′b000 ∶ B = 7′b0000_000;
3′b001 ∶ B = 7′b0000_001;
3′b010 ∶ B = 7′b0000_010;
3′b011 ∶ B = 7′b0000_100;
3′b100 ∶ B = 7′b0001_000;
3′b101 ∶ B = 7′b0010_000;
3′b110 ∶ B = 7′b0100_000;
3′b111 ∶ B = 7′b1000_000;
default ∶ B = 7′b0000_000;
endcase
endgenerate
endmodule