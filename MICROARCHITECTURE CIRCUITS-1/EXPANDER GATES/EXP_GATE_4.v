module EXP_GATE_4(input A,input B,input C,input D,input E,input F, input G , input H,input I,input J,output X,output XBAR);
wire a_w;
wire b_w;
wire c_w;
wire d_w;
assign a_w = A & B & C;
assign b_w = D & E;
assign c_w = F & G;
assign d_w = H & I & J;
assign X = a_w | b_w | c_w | d_w;
assign XBAR = ~X;
endmodule
