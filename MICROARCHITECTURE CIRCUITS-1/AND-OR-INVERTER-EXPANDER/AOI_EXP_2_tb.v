module AOI_EXP_2_tb;

	// Inputs
	reg A;
	reg B;
	reg C;
	reg D;
	reg E;
	reg F;
	reg G;
	reg H;
	reg I;
	reg J;

	// Outputs
	wire Y;

	// Instantiate the Unit Under Test (UUT)
	AOI_EXP_2 uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.E(E), 
		.F(F), 
		.G(G), 
		.H(H), 
		.I(I), 
		.J(J), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		C = 0;
		D = 0;
		E = 0;
		F = 0;
		G = 0;
		H = 0;
		I = 0;
		J = 0;

		// Wait 100 ns for global reset to finish
		#100;
      A = 0;
		B = 0;
		C = 1;
		D = 1;
		E = 1;
		F = 0;
		G = 1;
		H = 1;
		I = 1;
		J = 1;  
		

	end
      
endmodule