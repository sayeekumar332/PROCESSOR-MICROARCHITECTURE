module AOI_1(input A,input B,input C,input D,output Y); // This is Data Flow Modelling
wire a_w;
wire b_w;
assign a_w = A & B;
assign b_w = C & D;
assign Y = ~(a_w | b_w); // A input or output or wire or reg data types must never start with a number. It is an error
endmodule
