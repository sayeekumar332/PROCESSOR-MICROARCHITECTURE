module EXP_GATE_1(input A,input B,input C,input D,output X,output XBAR);
assign X = A & B & C & D;
assign XBAR = ~X;
endmodule
