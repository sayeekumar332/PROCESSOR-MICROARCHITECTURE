module RS_MS_1(input R1 , input R2 , input R3 , input S1 , input S2 , input S3 , input PRE , input CLR , input clk , output Q , output QBAR);
wire A_w , B_w , C_w , D_w , E_w , F_w , Q_w , QBAR_w , PRE_w , CLR_w; 
not uut1(PRE_w , PRE);
not uut2(CLR_w , CLR);
buf uut3(Q_w , Q);
buf uut4(QBAR_w , QBAR);
and uut5(A_w , R1 , R2 , R3 , clk , PRE_w);
and uut6(C_w , S1 , S2 , S3 , clk , CLR_w);
and uut7(B_w , PRE_w , F_w);
and uut8(D_w , CLR_w , E_w);
nor uut9(E_w , A_w , B_w);
nor uut10(F_w , C_w , D_w);
nand uut11(G_w , clk , F_w);// First is a output port , second one is data port , third one is control port
nand uut12(H_w , clk , E_w);// First is a output port , second one is data port , third one is control port
nand uut13(Q , PRE_w , QBAR_w , H_w);
nand uut14(QBAR , CLR_w , Q_w , G_w); 
endmodule
