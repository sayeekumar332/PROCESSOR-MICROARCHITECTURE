module BCDTOSEVEN3_1_tb;

	// Inputs
	reg BI;
	reg D;
	reg C;
	reg B;
	reg A;

	// Outputs
	wire [6:0] bcd_o;
	wire y1;
	wire y2;
	wire y3;
	wire y4;
	wire y5;
	wire y6;
	wire y7;

	// Instantiate the Unit Under Test (UUT)
	BCDTOSEVEN3_1 uut (
		.BI(BI), 
		.D(D), 
		.C(C), 
		.B(B), 
		.A(A), 
		.bcd_o(bcd_o), 
		.y1(y1), 
		.y2(y2), 
		.y3(y3), 
		.y4(y4), 
		.y5(y5), 
		.y6(y6), 
		.y7(y7)
	);

	initial begin
		// Initialize Inputs
		BI = 0;
		D = 0;
		C = 0;
		B = 0;
		A = 0;

		// Wait 100 ns for global reset to finish
		#100;
      BI = 0;
		D = 1'bx;
		C = 1'bx;
		B = 1'bx;
		A = 1'bx;  
		// Add stimulus here
      #100;
      BI = 1;
		D = 0;
		C = 0;
		B = 0;
		A = 1;
	end
      
endmodule
