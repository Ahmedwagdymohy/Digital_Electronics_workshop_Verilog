module n_module_tb();
reg A,B;
wire c;
reg ex_c;

n_module DUT (A,B,ex_c);
initial begin
    #10
    A=0 ; B=0 ;ex_c = 0;
    #10
    if(ex_c == c) 
        $display("Case_one_pass");
        else 
        $display("ERROR_CASE_ONE");
        $stop;
        

    #10
    A=1 ; B=0 ;ex_c = 1;
    #10
     if(ex_c == c) 
        $display("Case_one_pass");
        else 
        $display("ERROR_CASE_ONE");
        $stop;
        

#10
    A=0 ; B=1 ;ex_c = 1;
    #10
     if(ex_c == c) 
        $display("Case_one_pass");
        else 
        $display("ERROR_CASE_ONE");
        
        $stop;


#10
    A=1 ; B=1 ;ex_c = 0;
    #10
    if(ex_c == c) 
        $display("Case_one_pass");
        else
        $display("ERROR_CASE_ONE");
        
        $stop;
        
end


initial begin
		$monitor("A=%d,B=%d,ex_c=%d",A,B,ex_c);
	end
endmodule



/************************************************************************************************
/**********************************************************************************************/
/*********************** using the (random) way ***********************************/



module adder_tb();
reg A,B;
wire c;
reg ex_c;

n_module DUT(A,B,ex_c);
integer i ;
initial begin

    for(i=0; i<4; i=i+1)begin
      #10 A = $random;
      B= $random;
      ex_c = A+B;
      if(ex_c == c)
      $display("1_passed")
      else
      $display("1_failed")
      $stop
    end
end
endmodule
    

