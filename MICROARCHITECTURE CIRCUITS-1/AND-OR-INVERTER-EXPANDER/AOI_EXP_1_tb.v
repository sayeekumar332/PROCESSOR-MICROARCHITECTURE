module AOI_EXP_1_tb;

	// Inputs
	reg A;
	reg B;
	reg C;
	reg D;

	// Outputs
	wire Y;

	// Instantiate the Unit Under Test (UUT)
	AOI_EXP_1 uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		C = 0;
		D = 0;

		// Wait 100 ns for global reset to finish
		#100;
      A = 1;
		B = 1;
		C = 1;
		D = 1;  
		

	end
      
endmodule
