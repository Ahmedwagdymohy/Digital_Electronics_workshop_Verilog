module n_module(A,B,carry,c);
    parameter N =1;
    input [(N-1):0] A;
    input [N-1:0] B;
    input [N-1:0]carry;
    output [N-1:0]c;
    assign c =A+B+carry;
endmodule

