module EXP_GATE_2_tb;

	// Inputs
	reg A;
	reg B;
	reg C;

	// Outputs
	wire X;

	// Instantiate the Unit Under Test (UUT)
	EXP_GATE_2 uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.X(X)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		C = 0;

		// Wait 100 ns for global reset to finish
		#100;
      A = 0;
		B = 1;
		C = 0;  
		// Add stimulus here

	end
      
endmodule
