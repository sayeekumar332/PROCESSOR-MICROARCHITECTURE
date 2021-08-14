module LG_7(input A,input B,output Y1,output Y2,output Y3 , output Y4);
assign Y1 = ~A; // This is representative of IC 7404 , IC 7405 , IC 7414. All these are Inverters
assign Y2 = A;// This is representative of IC 7434 , IC 7407 , IC 747014. All these are Buffers
assign Y3 = A ^ B; // This is representative of IC 7486 , IC 74136. All these are 2-Input XOR gates
assign Y4 = ~(A ^ B);// This is representative of IC 74266 , IC 747266. All these are 2-Input XNOR Gates
endmodule
