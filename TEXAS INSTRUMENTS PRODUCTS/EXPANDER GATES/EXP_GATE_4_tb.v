module EXP_GATE_4_tb;

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
	wire X;
	wire XBAR;

	// Instantiate the Unit Under Test (UUT)
	EXP_GATE_4 uut (
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
		.X(X), 
		.XBAR(XBAR)
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
		C = 0;
		D = 1;
		E = 0;
		F = 1;
		G = 0;
		H = 0;
		I = 1;
		J = 0;  
		// Add stimulus here

	end
      
endmodule
