module encoding(A,B);
input [2:0]A;
//if we gonna use the always we should use the out as reg
output reg [6:0]B;
parameter USE_GRAY = 1;

always@(*)begin
    if(USE_GRAY)begin // if USE_gray is set we gonna use the grayCode
        case(A)
        3'b000: B = 3'b000;
        3'b001: B = 3'b001;
        3'b010: B = 3'b011;
        3'b011: B = 3'b010;
        3'b100: B = 3'b110;
        3'b101: B = 3'b111;
        3'b110: B = 3'b101;
        3'b111: B = 3'b100;

        endcase

    end else begin
        case(A)
        3'b000: B = 7'b0000000;
        3'b001: B = 7'b0000001;
        3'b010: B = 7'b0000010;
        3'b011: B = 7'b0000100;
        3'b100: B = 7'b0001000;
        3'b101: B = 7'b0010000;
        3'b110: B = 7'b0100000;
        3'b111: B = 7'b1000000;
        endcase
    end
end
endmodule



