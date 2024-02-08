module DEMUX (D, S, Y);
input D;
input [1: 0] S;
output reg [3: 0] Y;
always @(∗) begin
case (S)
2′b00 ∶ Y = {3′b000 , D};
2′b01 ∶ Y = {2′b00 , D , 1′b0};
2′b10 ∶ Y = {1′b0 , D , 2′b00};
2′b11 ∶ Y = {D , 3′b000};
endcase
end
endmodule
