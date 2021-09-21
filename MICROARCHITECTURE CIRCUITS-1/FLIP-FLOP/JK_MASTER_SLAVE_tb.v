module JK_MS_1_tb;

	// Inputs
	reg clk;
	reg PRE;
	reg J1A;
	reg J1B;
	reg J2A;
	reg J2B;
	reg K1A;
	reg K1B;
	reg K2A;
	reg K2B;

	// Outputs
	wire Q;
	wire QBAR;

	// Instantiate the Unit Under Test (UUT)
	JK_MS_1 uut (
		.clk(clk), 
		.PRE(PRE), 
		.J1A(J1A), 
		.J1B(J1B), 
		.J2A(J2A), 
		.J2B(J2B), 
		.K1A(K1A), 
		.K1B(K1B), 
		.K2A(K2A), 
		.K2B(K2B), 
		.Q(Q), 
		.QBAR(QBAR)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		PRE = 1;
		J1A = 0;
		J1B = 0;
		J2A = 0;
		J2B = 0;
		K1A = 0;
		K1B = 0;
		K2A = 0;
		K2B = 0;

		// Wait 100 ns for global reset to finish
		#100;
      clk = 0;
		PRE = 0;
		J1A = 1;
		J1B = 1;
		J2A = 1;
		J2B = 1;
		K1A = 1;
		K1B = 1;
		K2A = 1;
		K2B = 1;

      #100;
      clk = 1;
		PRE = 0;
		J1A = 1;
		J1B = 1;
		J2A = 1;
		J2B = 1;
		K1A = 1;
		K1B = 1;
		K2A = 1;
		K2B = 1;

      #100;
      clk = 0;
		PRE = 0;
		J1A = 1;
		J1B = 1;
		J2A = 1;
		J2B = 1;
		K1A = 1;
		K1B = 1;
		K2A = 1;
		K2B = 1;		
		// Add stimulus here
     #100;
      clk = 0;
		PRE = 0;
		J1A = 1;
		J1B = 1;
		J2A = 1;
		J2B = 1;
		K1A = 1;
		K1B = 1;
		K2A = 1;
		K2B = 1;

      #100;
      clk = 1;
		PRE = 0;
		J1A = 1;
		J1B = 1;
		J2A = 1;
		J2B = 1;
		K1A = 1;
		K1B = 1;
		K2A = 1;
		K2B = 1;

      #100;
      clk = 0;
		PRE = 0;
		J1A = 1;
		J1B = 1;
		J2A = 1;
		J2B = 1;
		K1A = 1;
		K1B = 1;
		K2A = 1;
		K2B = 1;	
	end
      
endmodule
