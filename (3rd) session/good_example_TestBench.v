/********************************************************************************/
/*****************************FULL ADDER WITH TB************************************/
/********************************************************************************/
//now we gonna implement the normal full adder( on structural way , look at slides for diagram)
module full_adderr(
    input cin,x1,x2,
    output S,cout
);
//if you looked at diagram you will find we gonna need 3wires after the 3 indirect gates

wire w1 , w2, w3;
xor u1(w1,x1,x2);
and u2(w2,x1,x2);
and u3(w3, a1, cin);
or u4(cout,w3,w2);
xor u5(S, cin,w1);
endmodule




/********************************************************************************/
/*****************************test bench code************************************/
/********************************************************************************/
//1.first convert any (input-->Reg) and (out --> wire)
//similar name or not it doens't matter


module full_adderr_tb();
    reg cintb,x1tb,x2tb, 
    wire Stb,couttb;
full_adderr DUT(cintb,x1tb,x2tb,Stb,couttb); //here we till the program that we will test that module and pass out arguments to it
initial 
begin
/********************************************************************************/
/*****************************Intializing the inputs with 0************************************/
    x1tb = 1'b0;
    x2tb = 1'b0;
    cintb =1'b0;
    #10

/********************************************************************************/
/*****************************test_case_1***************************************/
    // x1 = 0 , x2 = 1 ,cin = 0  ----> sum = 1 , carry = 0 
    $display ("Test_case1");
    x1tb= 1'b0;
    x2tb= 1'b1;
    cintb = 1'b0;
    #5
    if(Stb == 1 && couttb==0) 
    $display ("Test_Case_pass");
    else 
    $display ("Test_case_failed");

/********************************************************************************/
/*****************************test_case_2************************************/
    // x1 = 1 , x2 = 1 ,cin = 0  ----> sum = 0 , carry = 1 
    #10
    $display("Test_case2");
    x1tb= 1'b1;
    x2tb= 1'b1;
    cintb = 1'b0;
    #5
    if(Stb == 0 && couttb== 1)
    $display ("Test_case_pass");
    else
    $display ("Test_case_failed");


/********************************************************************************/
/*****************************test_case_3************************************/
    // x1 = 1 , x2 = 1 ,cin = 1  ----> sum = 1 , carry = 1
    #10
    $display("Test_case3");
    x1tb= 1'b1;
    x2tb= 1'b1;
    cintb = 1'b1;
    #5
    if(Stb == 1 && couttb== 1)
    $display ("Test_case_pass");
    else
    $display ("Test_case_failed");







end
endmodule


