module THREE_EIGHT_DECODER(input[2:0] A , input [3:1] E , output [7:0] O);// Intel 8205 ; 1 Out of 8 Binary Decoder
wire enable_w;
assign enable_w = E[3] & ~E[2] & ~E[1];
assign O[0] = (enable_w & (A == 3'b000))? 1'b0 : 1'b1;
assign O[1] = (enable_w & (A == 3'b001))? 1'b0 : 1'b1;
assign O[2] = (enable_w & (A == 3'b010))? 1'b0 : 1'b1;
assign O[3] = (enable_w & (A == 3'b011))? 1'b0 : 1'b1;
assign O[4] = (enable_w & (A == 3'b100))? 1'b0 : 1'b1;
assign O[5] = (enable_w & (A == 3'b101))? 1'b0 : 1'b1;
assign O[6] = (enable_w & (A == 3'b110))? 1'b0 : 1'b1;
assign O[7] = (enable_w & (A == 3'b111))? 1'b0 : 1'b1;
endmodule
