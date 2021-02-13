// Two Input NAND gate
//module LG_1(input a , input b , output y); // Positive Logic Version of NAND gate
//assign y = ~(a & b);
//endmodule

module LG_1(input a , input b , output y);// Negative Logic Version of NAND gate
assign y = ~a | ~b;
endmodule
