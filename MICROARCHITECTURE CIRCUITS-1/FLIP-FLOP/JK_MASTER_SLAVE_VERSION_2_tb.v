module JK_MS_2_tb;

	// Inputs
	reg clk;
	reg J1;
	reg J2;
	reg J3;
	reg K1;
	reg K2;
	reg K3;
	reg PRE;
	reg CLR;

	// Outputs
	wire Q;
	wire QBAR;

	// Instantiate the Unit Under Test (UUT)
	JK_MS_2 uut (
		.clk(clk), 
		.J1(J1), 
		.J2(J2), 
		.J3(J3), 
		.K1(K1), 
		.K2(K2), 
		.K3(K3), 
		.PRE(PRE), 
		.CLR(CLR), 
		.Q(Q), 
		.QBAR(QBAR)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		J1 = 0;
		J2 = 0;
		J3 = 0;
		K1 = 0;
		K2 = 0;
		K3 = 0;
		PRE = 0;
		CLR = 1;

		// Wait 100 ns for global reset to finish
		#100;
    clk = 0;
		J1 = 1;
		J2 = 1;
		J3 = 1;
		K1 = 0;
		K2 = 0;
		K3 = 0;
		PRE = 0;
		CLR = 0;
		
		#100;
    clk = 1;
		J1 = 1;
		J2 = 1;
		J3 = 1;
		K1 = 0;
		K2 = 0;
		K3 = 0;
		PRE = 0;
		CLR = 0;
		
		#100;
    clk = 0;
		J1 = 1;
		J2 = 1;
		J3 = 1;
		K1 = 0;
		K2 = 0;
		K3 = 0;
		PRE = 0;
		CLR = 0;
		
		#100;
    clk = 0;
		J1 = 0;
		J2 = 0;
		J3 = 0;
		K1 = 1;
		K2 = 1;
		K3 = 1;
		PRE = 0;
		CLR = 0;
		
		#100;
    clk = 1;
		J1 = 0;
		J2 = 0;
		J3 = 0;
		K1 = 1;
		K2 = 1;
		K3 = 1;
		PRE = 0;
		CLR = 0;
		
		#100;
    clk = 0;
		J1 = 0;
		J2 = 0;
		J3 = 0;
		K1 = 1;
		K2 = 1;
		K3 = 1;
		PRE = 0;
		CLR = 0;
		
		#100;
      clk = 0;
		J1 = 1;
		J2 = 1;
		J3 = 1;
		K1 = 1;
		K2 = 1;
		K3 = 1;
		PRE = 0;
		CLR = 0;
		
		#100;
    clk = 1;
		J1 = 1;
		J2 = 1;
		J3 = 1;
		K1 = 1;
		K2 = 1;
		K3 = 1;
		PRE = 0;
		CLR = 0;
		
		#100;
    clk = 0;
		J1 = 1;
		J2 = 1;
		J3 = 1;
		K1 = 1;
		K2 = 1;
		K3 = 1;
		PRE = 0;
		CLR = 0;
		

	end
      
endmodule
