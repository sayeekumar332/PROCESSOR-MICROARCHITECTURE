module XORG_1(input A,input B,output Y); // XOR Gate as a combination of NAND GATE + NOR GATE + NON-IMPLICATION GATE
wire A_w;
wire B_w;
assign A_w = ~(A & B); // NAND GATE
assign B_w = ~(A | B); // NOR GATE
assign Y = A_w & ~B_w; // NON-IMPLICATION GATE
endmodule
