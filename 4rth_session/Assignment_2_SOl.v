module Q1 (A,B,C,D,sel,out,out_bar);
input A,B,C,sel;
input [2:0] D;
output out , out_bar;
wire w1, w2,w3;

//writing the gates
and (w1 , D[0], D[1]);
or (w2 , w1, D[2]);
xnor (w3, A,B,C);

assign out = sel? w3 : w2;
out_bar = ~out;
endmodule

module Q1_tb();

//reg and wires 
reg A,B,C,sel;
reg [2:0]D;
wire out , out_bar;
reg ex_out, ex_out_bar;

//the Design under test (DUT)
//**************************************
//every this in the DUT line as the original module!!!!!!!!
Q1 DUT(A,B,C,D,sel,out,out_bar);

//begining of test cases and work!
initial begin
    A =$random; 
    B= $random;
    C= $random;
    sel= $random;
    D = $random;
    
    ex_out =(((((D[0]&D[1])|D[2]))&(~sel))|((sel)&(((A ^ B) ^ C) ^ 1)))
    ex_out_bar = ~ex_out;
    if(ex_out == out )
    $display("sucssefully");
    else
    $display("failed");
    $stop
    if(ex_out_bar == out_bar)
    $display("sucssefully");
    else
    $display("failed");
    $stop
    


    end




endmodule


/* module BCD(D , Y);
input [9:0]D;
output [3:0] Y;
integer i ;
assign Y =0;
always @(*) begin
    
    if(D == 1 )
    Y=0;
    if(D == 2 )
    Y=1;
    if(D == 4 )
    Y=2;
    if(D == 8 )
    Y=3;
    if(D == 16 )
    Y=4;
end
endmodule