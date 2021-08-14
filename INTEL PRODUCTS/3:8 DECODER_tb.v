module THREE_EIGHT_DECODER_tb;

	// Inputs
	reg [2:0] A;
	reg [3:1] E;

	// Outputs
	wire [7:0] O;

	// Instantiate the Unit Under Test (UUT)
	THREE_EIGHT_DECODER uut (
		.A(A), 
		.E(E), 
		.O(O)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		E = 0;

		// Wait 100 ns for global reset to finish
		#100;
      A = 3'b000;
		E = 3'b100;  
		// Add stimulus here
      #100;
      A = 3'b001;
		E = 3'b100; 
	end
      
endmodule
