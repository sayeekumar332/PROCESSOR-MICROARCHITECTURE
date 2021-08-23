module LG_1_tb;

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
	reg K;
	reg L;
	reg M;
	reg OC;

	// Outputs
	wire Y;
	wire Y1;
	wire Y2;
	wire Y3;
	wire Y4;
	wire Y5;

	// Instantiate the Unit Under Test (UUT)
	LG_1 uut (
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
		.K(K), 
		.L(L), 
		.M(M), 
		.OC(OC), 
		.Y(Y), 
		.Y1(Y1), 
		.Y2(Y2), 
		.Y3(Y3), 
		.Y4(Y4), 
		.Y5(Y5)
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
		K = 0;
		L = 0;
		M = 0;
		OC = 1;

		// Wait 100 ns for global reset to finish
		#100; // Testing 2-Input NAND Gate
      A = 1; 
		B = 1;
		C = 0;
		D = 0;
		E = 0;
		F = 0;
		G = 0;
		H = 0;
		I = 0;
		J = 0;
		K = 0;
		L = 0;
		M = 0;
		OC = 1;  
		
		#100; // Testing 3-Input NAND Gate
      A = 1; 
		B = 1;
		C = 1;
		D = 0;
		E = 0;
		F = 0;
		G = 0;
		H = 0;
		I = 0;
		J = 0;
		K = 0;
		L = 0;
		M = 0;
		OC = 1;

      #100; // Testing 4-Input NAND Gate
      A = 1; 
		B = 1;
		C = 1;
		D = 1;
		E = 0;
		F = 0;
		G = 0;
		H = 0;
		I = 0;
		J = 0;
		K = 0;
		L = 0;
		M = 0;
		OC = 1; 		
		
		#100; // Testing 8-Input NAND Gate
      A = 1; 
		B = 1;
		C = 1;
		D = 1;
		E = 1;
		F = 1;
		G = 1;
		H = 1;
		I = 0;
		J = 0;
		K = 0;
		L = 0;
		M = 0;
		OC = 1; 
		
		#100; // Testing 12-Input NAND Gate
      A = 1; 
		B = 1;
		C = 1;
		D = 1;
		E = 1;
		F = 1;
		G = 1;
		H = 1;
		I = 1;
		J = 1;
		K = 1;
		L = 1;
		M = 0;
		OC = 0; 
		
		#100; // Testing 13-Input NAND Gate
      A = 1; 
		B = 1;
		C = 1;
		D = 1;
		E = 1;
		F = 1;
		G = 1;
		H = 1;
		I = 1;
		J = 1;
		K = 1;
		L = 1;
		M = 1;
		OC = 1;

	end
      
endmodule
