module AOI_4(input A,input B,input C,input D,input E,input F,input G,input H,input I,output Y);
wire a_w;
wire b_w;
wire c_w;
wire d_w;
assign a_w = A & B;
assign b_w = C & D;
assign c_w = E & F & G;
assign d_w = H & I;
assign Y = ~(a_w | b_w | c_w | d_w); 
endmodule
