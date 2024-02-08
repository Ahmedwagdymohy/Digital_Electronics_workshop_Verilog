module Pose_edge_detectr (clk,rstn,x,y);
parameter ZER0=0;
parameter ONE=1;
input clk,rstn,x,y;
output y;	
reg cs,ns;

//next state logic
always @(cs,x) begin 
case (cs)
	ZER0:
	if (x)
		ns=ONE;
	else
		ns=0;
	ONE:
	if (x)
		ns=ONE;
	else
		ns=ZER0;
end

// stat memory
always @(posedge clk or negedge rstn) begin
	if(~rstn) begin
		cs <= 0;
	end else begin
		 cs <= ns ;
	end
end

//ouput logic depend on the current state and the input
assign y=(cs==0&&x==1)?1'b1:1'b0;
endmodule 