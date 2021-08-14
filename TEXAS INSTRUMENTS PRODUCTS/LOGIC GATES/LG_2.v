module LG_2_1(input A,input B,input C,input D,input E, input G , output Y1,output Y2,output Y3,output Y4);
assign Y1 = ~(A | B); // This is representative of IC7402 , IC 741002 , IC7433 , IC74805 , IC74128. All these are 2-Input NOR gates
assign Y2 = ~(A | B | C); // This is representative of IC 7427. It is a 3-input NOR gate
assign Y3 = ~(G & (A | B | C | D)); // This is representative of IC 7425. It is a 4-Input NOR gate. Only if G = 1 , the output of the NOR gate will be 0[Active]. Otherwise it will be 1[Inactive]
assign Y4 = ~( A | B | C | D | E); // This is representative of IC 74260. It is a 5-Input NOR gate
endmodule
