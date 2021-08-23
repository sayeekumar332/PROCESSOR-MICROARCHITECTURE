module LG_5(input A,input B,input C,input D,output Y1,output Y2);
assign Y1 = A & B; //This is representative of IC7432 , IC74832 , IC741032 . All these are 2-Input OR gates
assign Y2 = A & B & C & D; // This is representative of IC74802. It is a 4-input OR gate.
endmodule
