module JK_MS_2(input clk , input J1 , input J2 , input J3 , input K1 , input K2 , input K3 , input PRE , input CLR , output Q , output QBAR);
wire A_w , B_w , C_w , D_w , E_w , F_w , H_w , G_w , J_w , I_w , PRE_w , CLR_w , Q_w , QBAR_w;
buf uut1(Q_w , Q);
buf uut2(QBAR_w , QBAR);
not uut3(PRE_w , PRE);
not uut4(CLR_w , CLR);
and uut5(A_w , CLR_w , F_w);
and uut6(B_w , QBAR_w , J1 , J2 , J3 , clk);
nor uut7(C_w , A_w , B_w);
and uut8(D_w , PRE_w , C_w);
and uut9(E_w , Q_w , K1 , K2 , K3 , clk);
nor uut10(F_w , D_w , E_w);
and uut11(G_w , F_w, J_w);
and uut12(H_w , C_w , I_w);
nand uut13(I_w , clk , G_w);
nand uut14(J_w , clk , H_w);
nand uut15(Q , QBAR_w , I_w , PRE_w);
nand uut16(QBAR , Q_w , J_w , CLR_w);
endmodule
