module DEMUX4_1 (D,Y,sel);
input D;
input [1:0]sel;
output reg [3:0]Y;
//the demux give the input to one output at a time
//solve it using concatinations easily!!!

always@(*)begin
    if(sel == 2'b00)begin
    Y = {3'b000,D};
    end
    else if (sel == 2'b01)begin
    Y = {2'b00,D,1'b0};
    end
    else if (sel == 2'b10)begin
    Y = {1'b0,D,2'b00};
    end
    else begin
    Y = {D,3'b000};
    end
    
end
endmodule
