module AOI_6(input A,input B,input C,input D,input E,input F,input G,input H,input I,input J,input K,output Y);
wire a_w;
wire b_w;
wire c_w;
wire d_w;
assign a_w = A & B & C & D;
assign b_w = E & F;
assign c_w = G & H & I;
assign d_w = J & K;
assign Y = ~(a_w | b_w | c_w | d_w);
endmodule
