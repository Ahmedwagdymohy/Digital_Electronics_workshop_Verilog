module SEQ_COMP (a,b,sel,clk,out);
input a,b;
input sel,clk;
output out;
reg out;
always @(posedge clk ) begin 
	if(sel) begin
		 out<=a;
	end else begin
		 out<=b ;
	end
end
endmodule : SEQ_COMP