module LG_7_tb;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire Y1;
	wire Y2;
	wire Y3;
	wire Y4;

	// Instantiate the Unit Under Test (UUT)
	LG_7 uut (
		.A(A), 
		.B(B), 
		.Y1(Y1), 
		.Y2(Y2), 
		.Y3(Y3), 
		.Y4(Y4)
	);

	initial begin
		// Initialize Inputs
		A = 0; // Test for Inverter
		B = 0;

		// Wait 100 ns for global reset to finish
		#100; // Test for Buffer
      A = 1;
		B = 0;

     	#100; // Test for 2-Input XOR gate
      A = 1;
		B = 0;

      #100; // Test for 2-Input XNOR gate
      A = 1;
		B = 1;		
		// Add stimulus here

	end
      
endmodule
