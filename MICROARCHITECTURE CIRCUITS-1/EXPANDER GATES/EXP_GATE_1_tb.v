module EXP_GATE_1_tb;

	// Inputs
	reg A;
	reg B;
	reg C;
	reg D;

	// Outputs
	wire X;
	wire XBAR;

	// Instantiate the Unit Under Test (UUT)
	EXP_GATE_1 uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.X(X), 
		.XBAR(XBAR)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		C = 0;
		D = 0;

		// Wait 100 ns for global reset to finish
		#100;
      A = 0;
		B = 0;
		C = 1;
		D = 0;  
		

	end
      
endmodule
