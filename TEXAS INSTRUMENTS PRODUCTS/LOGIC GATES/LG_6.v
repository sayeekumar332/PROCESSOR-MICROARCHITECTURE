module LG_6(input A,input B,input C,input D,output Y1,output Y2);
assign Y1 = A | B; // This is representative of IC7432 , IC 74832. These two are 2-Input OR gates.
assign Y2 = A | B | C | D; // This is representative of IC 74802. It is a 4-Input OR gate.
endmodule
