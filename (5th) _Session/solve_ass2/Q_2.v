module priorityencoder (X, Y);
input [3: 0] X;
output reg [1: 0] Y;
always @(X) begin
if (X[3])
Y = 2′b11;
else
if (X[2])
Y = 2′b10;
else
if (X[1])
Y = 2′b01;
else
Y = 2′b00;
end
endmodule
/*
module priorityencoder (X, Y);
input [3: 0] X;
output reg [1: 0] Y;
always @(X) begin
casex (X)
4′b1xxx ∶ Y = 2′b11;
4′b01xx ∶ Y = 2′b10;
4′b001x ∶ Y = 2′b01;
4′b000x ∶ Y = 2′b00;
endcase
end
endmodule
∗/