module half_adder_tb();
//1. signal decleration
//any input is a reg and output is a wire BUT in test bench all are reg!!!!!!!!!

/*note: all variables assigned inside initial block 
are of type reg          */



reg A,B;
wire CARRY,SUM;
reg excepected_sum , excepected_carry;
//2. instanciation
Half_adder DUT(A,B,CARRY, SUM);
initial begin
 /****************************************************************************/
/****************************** first case ***********************************/   
  //all the varaibles are reg
    
    A = 0;
    B = 0;
    excepected_sum = 0;
    excepected_carry = 0;
#10;
    if((excepected_carry != CARRY) ||(excepected_sum != SUM))begin
        $display("Error");
        $stop;
    end
    
 /****************************************************************************/   
 /******************************* second case ************************************/   
#10; //delay to wait for the fisrt case to excute and give the output

    A=1;
    B=0;
    excepected_sum = 1;
    excepected_carry = 0;
	#10;
    if((excepected_carry != CARRY) ||(excepected_sum != SUM))begin
        $display("Error");
        $stop;
    end
    

 /****************************************************************************/   
 /******************************* third case ************************************/  

#10; //delay to wait for the fisrt case to excute and give the output

    A=0;
    B=1;
    excepected_sum = 1;
    excepected_carry = 0;
#10;
    if((excepected_carry != CARRY) ||(excepected_sum != SUM))begin
        $display("Error");
        $stop;
    end

 /****************************************************************************/   
 /******************************* forth case ************************************/ 

#10
    A=1;
    B=1;
    excepected_sum = 1;
    excepected_carry = 1;
#10;
    if((excepected_carry != CARRY) ||(excepected_sum != SUM))begin
        $display("Error");
        $stop;
    end




end

    initial begin
        $monitor("A=%d, B=%d, excepected_sum= %d ,excepected_carry=%d ", A,B,excepected_sum , excepected_carry );
    end



endmodule