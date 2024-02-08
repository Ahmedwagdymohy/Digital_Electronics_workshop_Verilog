module D_FF_me (D,clk,Q);
input D,clk;
output reg Q;

always @(posedge clk) begin  //very simple and easy just the posedge keyword with the clk
    Q=D;
end
endmodule

/******************************************************************************************************************/
/**********************************        DFF_With_Load   ********************************************************/
/******************************************************************************************************************/
 

module D_FF_me (D,clk,Q ,load);
input D,clk,load;
output reg Q;

always @(posedge clk) begin  //very simple and easy just the posedge keyword with the clk
    if(load == 1)
    Q=D;
    else
    Q=1'b0;
end
endmodule


/******************************************************************************************************************/
/**********************************        D-Flipflop with Asynchronous reset   ***********************************/
/******************************************************************************************************************/

module D_FF_ASYNC(D,clk,reset,Q);
input D, clk, reset;
output reg Q;
always@(posedge clk)begin
    
end