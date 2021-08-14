module AOI_EXP_1(input A,input B,input C,input D,output Y);
wire X_w;
wire XBAR_w;
wire a_w;
wire b_w;
EXP_GATE_1 UUT(.A(A) , .B(B) , .C(C) , .D(D) , .X(X_w) , .XBAR(XBAR_w)); // If this file is not included in AOI_EXP_1 under Hierarchy Pane , it generates an error as follows : "Instantiating <UUT> from unknown module <EXP_GATE_1>" ; Also we will be getting a warning "Empty module <AOI_EXP_1> remains a black box".
assign a_w = A & B;
assign b_w = C & D;
assign Y = ~(a_w | b_w | X_w | ~XBAR_w);
endmodule
