module ALU (A,B, ALU_OP,ALU_OUT);
input A,B;
input [1:0] ALU_OP;
output reg ALU_OUT;
always @(*) begin 
case ({ ALU_OP[1], ALU_OP[0]})
	2'b00:ALU_OUT=A+B;
	2'b01:ALU_OUT=A-B;
	2'b10:ALU_OUT=A&B;
	default:ALU_OUT=A|B;
endcase
end

endmodule 