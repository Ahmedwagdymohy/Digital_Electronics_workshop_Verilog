module test (A,B,sel,OUT);
input A,B,sel;
output  reg OUT;
always@(*)begin
    if(sel) begin
        OUT = B;
    end    
    else begin
        OUT = A;
    end
end

endmodule