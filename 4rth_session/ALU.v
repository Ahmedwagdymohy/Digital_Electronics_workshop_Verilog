module ALU(
    input a,b
    input sel,
    output reg c , c_bar
);
//for ALU if 0: C = A+B
/*        if 1: c = A-B
          if 2: c = A&B
          if default: A^B;
*/
//any output in the always is reg
always@(*)begin
z =0;
c_bar=0;

case (sel)
    0: c = a+B;
    1: c= a-b;
    2: c= a&b;
    default: c= a^b;
endcase
end
endmodule