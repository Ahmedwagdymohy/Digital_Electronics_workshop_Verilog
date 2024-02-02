module half_adder_always(
    input A,B;
    output reg CARRY,SUM; //if we gonna use the always we should use the out as reg
);

always@(*)begin
    SUM = A^B;
    CARRY = A&B;
end
endmodule



