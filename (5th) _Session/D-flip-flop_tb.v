module D_flip_flop_tb();
reg D,CLK,reset; //creating the test bench of the dff
wire q;
integer i =0;

sync_d_ff DUT(D, CLK , reset , Q);
initial begin
    CLK = 0;
    forever begin
        #1 CLK = ~CLK;
    end
end


 initial begin  
    reset = 1;
    D=0;
    #50
    reset = 0;
    for(i = 0 ; i<10; i=i+1)begin
        @(negedge CLK);
        D = $random;
    end
    #2 $stop;
    end


 
endmodule