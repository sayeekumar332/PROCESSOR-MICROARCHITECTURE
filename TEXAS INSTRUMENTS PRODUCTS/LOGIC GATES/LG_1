// This module contains all the logic gates mentioned in the TTL Databook Volume-2. Gates are also called as LINE DRIVERS or LINE AMPLIFIERS or LINE BUFFERS. This is called DATAFLOW MODELLING.
module LG_1(input A,input B, input C , input D , input E , input F , input G , input H , input I , input J , input K , input L , input M , input OC , output Y , output Y1 , output Y2 , output Y3 , output Y4 , output Y5);
assign Y = ~(A & B); // This is representative of IC7400 , IC 741000 , IC7401 , IC 7403 , IC741003 , IC7424 , IC74132 , IC74804 , IC7431 , IC7438 , IC 7439 , IC 748003 . All these are 2-Input NAND Gates.
assign Y1 = ~(A & B & C); // This is representative of IC 7410 , IC 7412 , IC 741010  . All these are 3-input NAND gates  
assign Y2 = ~(A & B & C & D); // This is representative of IC 7420 , IC 741020 , IC 7422 , IC 74168 , IC 74140. All these are 4-input NAND gates
assign Y3 = ~(A & B & C & D & E & F & G & H); // This is representative of IC 7430. This is a 8-input NAND Gate.
assign Y4 = ~OC ? ~(A & B & C & D & E & F & G & H  & I & J & K & L) : 1'bZ; //1'bZ - High Impedance State. This is a representative of 12-Input NAND Gate IC 74134. If instead of 1'b0 , if I put just 0. it generates truncation warning that a 32-bit result has been truncated to 1-bit result
assign Y5 = ~(A & B & C & D & E & F & G & H  & I & J & K & L & M); // This is representative of 13-Input NAND Gate IC 74133.
endmodule
