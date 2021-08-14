module AOI_5(input A,input B,input C,input D,input E,input F,input G,input H,output Y);
wire a_w;
wire b_w;
assign a_w = A & B & C & D;
assign b_w = E & F & G & H;
assign Y = ~(a_w | b_w);
endmodule
