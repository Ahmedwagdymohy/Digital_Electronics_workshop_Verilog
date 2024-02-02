module half_adder_ex_tb ();
	reg [3:0] A_TB,B_TB,SUM_EX;
	reg CARRY_EX;
	wire CARRY_TB;
	wire [3:0] SUM_TB;
	
	Half_adder dut (A_TB,B_TB,CARRY_TB,SUM_TB);
	integer i;
	initial begin
		// in verilog there is no i++
		for(i=0;i<20;i=i+1) begin
			A_TB=$random;
			B_TB=$random;
			{CARRY_EX,SUM_EX}=A_TB+B_TB;
				#10	
				if ((SUM_EX!=SUM_TB)|| (CARRY_EX!=CARRY_TB)) begin
					$display("error ");
					$stop;
				end			
		end
		$stop;
	end

	initial begin
		$monitor("A=%h,B=%h,CARRY_EX=%h,SUM_EX=%h",A_TB,B_TB,CARRY_EX,SUM_EX);
	end
endmodule 