module FOURTO10_2_b_tb;

	// Inputs
	reg D;
	reg C;
	reg B;
	reg A;

	// Outputs
	wire Y0;
	wire Y1;
	wire Y2;
	wire Y3;
	wire Y4;
	wire Y5;
	wire Y6;
	wire Y7;
	wire Y8;
	wire Y9;

	// Instantiate the Unit Under Test (UUT)
	FOURTO10_2_b uut (
		.D(D), 
		.C(C), 
		.B(B), 
		.A(A), 
		.Y0(Y0), 
		.Y1(Y1), 
		.Y2(Y2), 
		.Y3(Y3), 
		.Y4(Y4), 
		.Y5(Y5), 
		.Y6(Y6), 
		.Y7(Y7), 
		.Y8(Y8), 
		.Y9(Y9)
	);

	initial begin
		// Initialize Inputs
		D = 0;
		C = 0;
		B = 0;
		A = 0;

		// Wait 100 ns for global reset to finish
		#100;
    D = 0;
		C = 1;
		B = 0;
		A = 0;  
		

	end
      
endmodule
