module sync_d_ff (D, CLK , reset , Q); //creating D-flipflop
input D , CLK, reset;  // inputting the reset and the clck and the D input
output reg Q;
always@(posedge CLK)begin
    if(reset)begin
        Q<=0;
    end else begin
        Q<=D;
    end
end
endmodule
