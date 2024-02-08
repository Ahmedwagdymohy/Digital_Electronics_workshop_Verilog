module d_flip_flop_tb ();
reg clk,rst,d;
wire q;
integer i=0;
synchronous_reset_d_ff dut (d,clk,rst,q);
initial begin
	clk=0;
	forever 
	#1 clk=~clk;		
end
initial begin
	rst=1;
	d=0;
	#50 
	rst=0;
	for (i = 0; i < 10; i=i+1) begin
		#2 //@(negedge clk);
		d=$random;
	end
	#2 $stop;
end
endmodule 