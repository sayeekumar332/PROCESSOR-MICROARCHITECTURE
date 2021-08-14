module FOURTO10_tb;

	// Inputs
	reg A;
	reg B;
	reg C;
	reg D;

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
	FOURTO10 uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
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
		A = 0;
		B = 0;
		C = 0;
		D = 0;

		// Wait 100 ns for global reset to finish
		#100;
      A = 0;
		B = 1;
		C = 0;
		D = 1;  
		
      #100;
      A = 0;
		B = 0;
		C = 0;
		D = 1; 
	end
      
endmodule

