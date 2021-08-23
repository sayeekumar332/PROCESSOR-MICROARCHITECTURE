module AO_EXP_2(input A,input B,input C,input D,input E,input F,input G,input H,input I,output Y);
wire a_w;
wire b_w;
wire c_w;
wire d_w;
wire X_w;
EXP_GATE_2 UUT(.A(A) , .B(B) , .C(C) , .X(X_w));
assign a_w = A & B;
assign b_w = C & D;
assign c_w = E & F;
assign d_w = G & H & I;
assign Y = a_w | b_w | c_w | d_w | X_w;
endmodule
