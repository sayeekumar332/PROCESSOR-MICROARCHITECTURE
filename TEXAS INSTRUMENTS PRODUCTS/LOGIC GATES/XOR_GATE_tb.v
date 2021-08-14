module XORG_1_tb;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire Y;

	// Instantiate the Unit Under Test (UUT)
	XORG_1 uut (
		.A(A), 
		.B(B), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
      A = 0;
		 B = 1; 
      
      #100;
      A = 1;
		 B = 0;   

      #100;
      A = 1;
		  B = 1; 		
		// Add stimulus here

	end
      
endmodule
