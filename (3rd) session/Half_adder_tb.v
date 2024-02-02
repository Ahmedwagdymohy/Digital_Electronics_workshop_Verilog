module Half_adder_tb ();
	// signal declaration
	reg[3:0] a_tb,b_tb,y_expected;
	reg carry_expected;
	wire[3:0] y_dut;
	wire carry;
	// DUT Instantiation
	Half_adder DUT(a_tb,b_tb,carry,y_dut);
	//test stimulus generator
	initial begin
		a_tb=0;
		b_tb=1;
		y_expected=1;
		carry_expected=0;
		#20
		a_tb=1;
		b_tb=2;
		y_expected=3;
		carry_expected=0;
		#10
		if ((y_expected!=y_dut)||(carry_expected!=carry))
			begin
				$display("there is an error");
				$stop;
			end

		#10 a_tb=1;b_tb=7;y_expected=8;carry_expected=0;
		#10 
		if ((y_expected!=y_dut)||(carry_expected!=carry))
			begin
				$display("there is an error");
				$stop;
			end

		#10 a_tb=1;b_tb=15;y_expected=0;carry_expected=1;
		#10
		if ((y_expected!=y_dut)||(carry_expected!=carry))
			begin
				$display("there is an error");
				$stop;
			end
		#10 
		$stop;
	end
	initial begin
		$monitor("a=%d,b=%d,expected sum=%d,carry=%d",a_tb,b_tb,y_expected,carry_expected);
	end

endmodule 