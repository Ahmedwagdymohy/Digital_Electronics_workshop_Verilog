module Blocking_non_blocking (a,b,c,x,y);
	input a,b,c;
	output x,y;
	reg x,y;
	always @(a or b or c)
	begin
		x=a&b;
		y=x|c;
	end

endmodule 

\\Blocking_non_blocking
always @(posedge clk ) begin 
q1<=in;
q2<=q1;
out<=q2;
end