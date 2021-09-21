// For a NAND gate , when atleast one of the input is 0 , the output is 1.
module JK_MS_1(input clk , input PRE , input J1A , input J1B , input J2A , input J2B , input K1A , input K1B , input K2A , input K2B , output Q , output QBAR); 
wire J_w , J_w1 , J_w2 , K_w , K_w1 , K_w2 , A_w , B_w , C_w , D_w , Q_w , QBAR_w , PRE_w;
buf uut1(Q_w , Q);
buf uut2(QBAR_w , QBAR);
not uut3(PRE_w , PRE);
and uut4(K_w , PRE_w , Q_w , K1A , K1B , clk);
and uut5(K_w1 , PRE_w , Q_w , K2A , K2B , clk);
nor uut6(K_w2 , K_w , K_w1);
and uut7(J_w , QBAR_w , J1A , J1B , clk);
and uut8(J_w1 , QBAR_w , J2A , J2B , clk);
nor uut9(J_w2 , J_w , J_w1);
nand uut10(A_w , J_w2 , PRE_w , B_w);
nand uut11(B_w , K_w2 , A_w);
nand uut12(C_w , K_w2 , B_w);
nand uut13(D_w , J_w2 , A_w);
nand uut14(QBAR , C_w , Q_w);
nand uut15(Q , D_w , PRE_w , QBAR_w);
endmodule
