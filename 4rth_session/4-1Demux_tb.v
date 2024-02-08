module Demux_tb();
reg D;
reg [1:0]sel;
reg[3:0]Y;

DEMUX4_1 DUT(D,Y,sel);
initial begin          // we use initial to test the different casses you can know more about it in https://www.chipverify.com/verilog/verilog-initial-block
    
   

    if(D==1) begin
    case(sel)
    2'b00 :  Y[3:0]=0;                                               // D-> 1 , sel[0] -> 0 , sel[1] -> 0
    2'b01 : begin Y[3]=0; Y[2]=0; Y[1]=1; Y[0]=0; end                // D-> 1 , sel[0] -> 1 , sel[1] -> 0
    2'b10 : begin Y[3]=0; Y[2]=1; Y[1]=0; Y[0]=0; end                // D-> 1 , sel[0] -> 0 , sel[1] -> 1
    2'b11 : begin Y[3]=1; Y[2]=0; Y[1]=0; Y[0]=0; end                // D-> 1 , sel[0] -> 1 , sel[1] -> 1
                    
    endcase
    end
    else
    Y = 4'b0000;




end
endmodule
