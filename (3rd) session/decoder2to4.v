module decoder2to4 (A,D);
	input [1:0] A;
	output  [3:0] D;
	assign D=(A==0)?4'b1000:(A==1)?4'b0100:(A==2)?4'b0010:4'b0001;
endmodule 