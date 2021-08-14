module LG_2_tb;

	// Inputs
	reg A;
	reg B;
	reg C;
	reg D;
	reg E;
	reg G;

	// Outputs
	wire Y1;
	wire Y2;
	wire Y3;
	wire Y4;

	// Instantiate the Unit Under Test (UUT)
	LG_2_1 uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.E(E), 
		.G(G), 
		.Y1(Y1), 
		.Y2(Y2), 
		.Y3(Y3), 
		.Y4(Y4)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		C = 0;
		D = 0;
		E = 0;
		G = 0;

		// Wait 100 ns for global reset to finish
		#100; // Test for 2-Input NOR gate
      A = 1;
		B = 1;
		C = 0;
		D = 0;
		E = 0;
		G = 0;  
		
		#100; // Test for 3-Input NOR Gate
      A = 1;
		B = 1;
		C = 1;
		D = 0;
		E = 0;
		G = 0;
		
		#100; // Test for 4-Input NOR Gate
      A = 1;
		B = 1;
		C = 1;
		D = 1;
		E = 0;
		G = 1;
		
		#100; // Test for 5-Input NOR Gate
      A = 1;
		B = 1;
		C = 1;
		D = 1;
		E = 1;
		G = 0;

	end
      
endmodule

