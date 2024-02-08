module SLE (D,CLK,EN,ALn,ADn,SLn,SD,LAT,Q);
	input D,CLK,EN,ALn,ADn,SLn,SD,LAT;
	output reg Q;
	always @(posedge CLK ALn) begin : proc_
		if(~ALn) begin
			 Q<=~ALn;
		end else if (EN) begin
			if (~SLN) begin
				Q<=SD;
			end
			else begin
				Q<=D;	
			end 
		end 
		end

	end
endmodule :