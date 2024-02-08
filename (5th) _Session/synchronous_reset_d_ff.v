module synchronous_reset_d_ff (D,CLK,RST,Q);
	input D,CLK,RST;
	output reg Q;
	always @(posedge CLK ) begin : proc_
		if(RST) begin
			Q<=0;
		end else begin
			 Q<=D ;
		end
	end

endmodule 
 /*
module Asynchronous_reset_d_ff (D,CLK,RST,Q);
	input D,CLK,RSTL;
	output reg Q;
	always @(posedge CLK or posedge RST ) begin : proc_
		if(RST) begin
			Q<=0;
		end else begin
			 Q<=D ;
		end
	end

endmodule 
*/
