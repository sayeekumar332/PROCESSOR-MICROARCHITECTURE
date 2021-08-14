module XORG_1(input A,input B,output Y); // XOR Gate as a combination of NAND Gate , NOR Gate and Non-Implication Gate
wire A_w;
wire B_w;
  assign A_w = ~(A & B); // NAND Gate
  assign B_w = ~(A | B); // NOR Gate
assign Y = A_w & ~B_w; // Non-Implication Gate
endmodule
