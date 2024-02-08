module up_counter_tb ();
reg clk,rst;
wire [3:0] counter;
binarycounters_async dut (clk,rst,counter);
initial begin
	clk=0;
	forever
	#1 clk=~clk;
end
initial begin
	rst=1;
	#50;
	rst=0;
	#100;
	$stop;
end
endmodule 