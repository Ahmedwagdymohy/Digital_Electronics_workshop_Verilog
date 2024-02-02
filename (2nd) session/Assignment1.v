//design and gate with inputs a,b,c and output andout is connected to mux using wire w1
module and_gate (A,B,C,andout);
    input A,B,C;
    output andout;
    assign andout = A & B & C;
    wire w1;

endmodule and_gate

module mux (K,L,sel,muxout);
input K,L;
input [1,0]sel;
output muxout;
assign muxout = sel?K:L;

endmodule mux

module mux_and (A,B,C,sel,muxout);
input A,B,C;
input [1,0]mux_sel;
output muxout;
wire and_out;
wire mux_input;
endmodule mux_and

//making xnor gate using 3 inputs
 D E F and output xnorout
module xnor_gate (D,E,F,xnorout);
    input D,E,F;
    output xnorout;
    assign xnorout = D ^ E ^ F;
    wire w2;
endmodule xnor_gate  

//making the instance of xnor_gate
xnor_gate xnor1(.D(D), .E(E), .F(F), .xnorout(w2));


//making the instance of and_gate
and_gate and1(.A(A), .B(B), .C(C), .andout(andout));
mux mux1(.K(and_out), .L(w2), .sel(mux_sel), .muxout(outtt));

