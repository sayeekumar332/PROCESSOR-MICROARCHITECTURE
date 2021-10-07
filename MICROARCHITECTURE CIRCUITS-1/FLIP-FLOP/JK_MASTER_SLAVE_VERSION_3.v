module JK_MS_3(input clk , input J1 , input J2 , input J3 , input K1 , input K2 , input K3 , input PRE , input CLR , output Q , output QBAR);
wire A_w , B_w , C_w , D_w , E_w , F_w , PRE_w , CLR_w , Q_w , QBAR_w;
buf uut1(Q_w , Q);// Always for Verilog predefined logic gate primitives , output signal must be specified first , followed by one or more input signals. For Verilog user-defined logic gate primitives , one or more input signals must be specified first , followed by output signal. Same thing for user defined modules.
buf uut2(QBAR_w , QBAR);
not uut3(PRE_w , PRE);
not uut4(CLR_w , CLR);
nand uut5(A_w , PRE_w , Q_w , K1 , K2 , K3 , clk);
nand uut6(B_w , CLR_w , QBAR_w , J1 , J2 , J3 , clk);
nand uut7(C_w , PRE_w , D_w , B_w);
nand uut8(D_w , CLR_w , C_w , A_w);
nand uut9(E_w , A_w , D_w);
nand uut10(F_w, B_w , C_w);
nand uut11(Q , PRE_w , F_w , QBAR_w);
nand uut12(QBAR , CLR_w , E_w , Q_w);
endmodule
