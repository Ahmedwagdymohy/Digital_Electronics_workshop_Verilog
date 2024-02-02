/****************************************************************************/
/****************************** using if statements don't forget the beign&end ***********************************/ 
module 2x4Decoder(
    input [1:0] a,
    output reg Y
);
always@(*)begin
    if(a==2'b00)begin
        Y = 4'b0001;
    end
    else if(a==2'b01)begin
        Y = 4'b0010;
    end
    else if(a==2'b10)begin
        Y = 4'b0100;
    end
    else (a==2'b11)begin
        Y = 4'b1000;
    end


end
endmodule


/****************************************************************************/
/****************************** case statements ***********************************/ 

module 2x4DecoderCase(
    input [0:1]a,
    output reg Y
);

always@(*)begin
    case(a)
    2'b00: Y=4'b0001;
    2'b01: Y=4'b0010;
    2'b10: Y=4'b0100;
    2'b11: Y=4'b1000;
    default : Y =4'b0000;
    endcase
end
endmodule
    
