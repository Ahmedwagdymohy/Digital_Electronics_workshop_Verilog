module binarycounters_async (clk,reset,counter_up);
	input clk,reset;
	output reg [3:0] counter_up;
	always @(posedge clk or posedge clk reset) begin : proc_
		if(reset) begin
			counter_up <= 0;
		end else begin
			 counter_up <= counter_up+1;
		end
	end
endmodule 