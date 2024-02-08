module dcounter_sync_load (clk,clr,enable,count);
input clk,clr,load,enable;
output reg [3:0] count;
 
 wire cnt_done;
 assign cnt_done=~|count;
 always @(posedge clk ) begin 
 	if(clr) begin
 		 count<= 0;
 	end else if (enable) begin
 		if (load|cnt_done) begin
 			count<=4'b1101;
 		end
 		else begin
 		count <= count -1 ;
 	end
 end
endmodule 