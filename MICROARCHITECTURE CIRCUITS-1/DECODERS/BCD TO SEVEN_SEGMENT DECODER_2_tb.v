module BCDTOSEVEN_2_tb;

	// Inputs
	reg LT;
	reg BI;
	reg RBI;
	reg D;
	reg C;
	reg B;
	reg A;

	// Outputs
	wire [6:0] bcd;
	wire y1;
	wire y2;
	wire y3;
	wire y4;
	wire y5;
	wire y6;
	wire y7;
	wire RBO;

	// Instantiate the Unit Under Test (UUT)
	BCDTOSEVEN2_1 uut (
		.LT(LT), 
		.BI(BI), 
		.RBI(RBI), 
		.D(D), 
		.C(C), 
		.B(B), 
		.A(A), 
		.bcd(bcd), 
		.y1(y1), 
		.y2(y2), 
		.y3(y3), 
		.y4(y4), 
		.y5(y5), 
		.y6(y6), 
		.y7(y7), 
		.RBO(RBO)
	);

	initial begin
		// Initialize Inputs
		LT = 1;
		BI = 1;
		RBI = 1;
		D = 0;
		C = 0;
		B = 0;
		A = 0;

		// Wait 100 ns for global reset to finish
		#100;
    LT = 1;
		BI = 1;
		RBI = 0;
		D = 0;
		C = 0;
		B = 0;
		A = 0;  
		

	end
      
endmodule
