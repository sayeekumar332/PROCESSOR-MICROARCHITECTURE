module LG_6_tb;

	// Inputs
	reg A;
	reg B;
	reg C;
	reg D;

	// Outputs
	wire Y1;
	wire Y2;

	// Instantiate the Unit Under Test (UUT)
	LG_6_1 uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.Y1(Y1), 
		.Y2(Y2)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		C = 0;
		D = 0;

		// Wait 100 ns for global reset to finish
		#100; // Test for 2-Input OR gate
      A = 1;
		B = 1;
		C = 0;
		D = 0;

      #100; // Test for 4-Input OR gate
      A = 1;
		B = 1;
		C = 0;
		D = 1;		
		// Add stimulus here

	end
      
endmodule
