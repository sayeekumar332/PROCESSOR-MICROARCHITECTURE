module AOI_EXP_3(input A,input B,input C,input D,input E,input F,input G,input H,input I,input J,output Y);
wire a_w;
wire b_w;
wire c_w;
wire d_w;
wire X_w;
wire XBAR_w;
EXP_GATE_4 UUT(.A(A) , .B(B) , .C(C) , .D(D) , .E(E) , .F(F) , .G(G) , .H(H) , .I(I) , .J(J) , .X(X_w) , .XBAR(XBAR_w));
assign a_w = A & B;
assign b_w = C & D;
assign c_w = E & F;
assign d_w = G & H;
assign Y = ~(a_w | b_w | c_w | d_w | X_w | ~XBAR_w);
endmodule
