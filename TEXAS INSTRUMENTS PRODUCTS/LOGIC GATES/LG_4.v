module LG_4_1(input A,input B,input C,input D,output Y1,output Y2,output Y3);
assign Y1 = A & B;// This is representative of IC 74808 , IC 7408 , IC 741008 , IC 7409. All these are 2-Input AND Gates
assign Y2 = A & B & C;// This is representative of IC 7411 , IC 741011 , IC 7415. All these are 3-Input AND Gates
assign Y3 = A & B & C & D;// This is representative of IC 7421. It is a 4-Input AND Gate.
endmodule
