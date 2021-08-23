module AOI_3_1(input A,input B,input C,input D,input E,input F, input G,input H,input I,input J,output Y);
wire a_w;
wire b_w;
wire c_w;
wire d_w;
assign a_w = A & B;
assign b_w = C & D & E;
assign c_w = F & G & H;
assign d_w = I & J;
assign Y = ~(a_w | b_w | c_w | d_w);
endmodule
