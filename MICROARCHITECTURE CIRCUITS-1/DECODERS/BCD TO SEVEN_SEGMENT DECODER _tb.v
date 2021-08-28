module BCDTOSEVEN_1_tb;

	// Inputs
	reg LT;
	reg BI;
	reg RBI;
	reg D;
	reg C;
	reg B;
	reg A;

	// Outputs
	wire a;
	wire b;
	wire c;
	wire d;
	wire e;
	wire f;
	wire g;
	

	// Instantiate the Unit Under Test (UUT)
	BCDTOSEVEN_1 uut (
		.LT(LT), 
		.BI(BI), 
		.RBI(RBI), 
		.D(D), 
		.C(C),
		.B(B)
		.A(A)
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.e(e), 
		.f(f), 
		.g(g)
	);

	initial begin
		// Initialize Inputs
		LT = 1;
		BI = 1'bx;
		RBI = 0
		D = 0;
		C = 0;
		B = 0;
		A = 0;

		// Wait 100 ns for global reset to finish
		#100;
		LT = 1;
		BI = 1'bx;
		RBI = 1'bx;
                D = 0;
		C = 0;
		B = 0;
		A = 1;  
		
	end      
endmodule
