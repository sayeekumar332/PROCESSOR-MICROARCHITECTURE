module RS_MS_1_tb;

	// Inputs
	reg R1;
	reg R2;
	reg R3;
	reg S1;
	reg S2;
	reg S3;
	reg PRE;
	reg CLR;
	reg clk;

	// Outputs
	wire Q;
	wire QBAR;

	// Instantiate the Unit Under Test (UUT)
	RS_MS_1 uut (
		.R1(R1), 
		.R2(R2), 
		.R3(R3), 
		.S1(S1), 
		.S2(S2), 
		.S3(S3), 
		.PRE(PRE), 
		.CLR(CLR), 
		.clk(clk), 
		.Q(Q), 
		.QBAR(QBAR)
	);

	initial begin
		// Initialize Inputs
		R1 = 0;
		R2 = 0;
		R3 = 0;
		S1 = 0;
		S2 = 0;
		S3 = 0;
		PRE = 0;
		CLR = 1;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
    R1 = 0;
		R2 = 0;
		R3 = 0;
		S1 = 1;
		S2 = 1;
		S3 = 1;
		PRE = 0;
		CLR = 0;
		clk = 0; 

      #100;
    R1 = 0;
		R2 = 0;
		R3 = 0;
		S1 = 1;
		S2 = 1;
		S3 = 1;
		PRE = 0;
		CLR = 0;
		clk = 1;	

      #100;
    R1 = 0;
		R2 = 0;
		R3 = 0;
		S1 = 1;
		S2 = 1;
		S3 = 1;
		PRE = 0;
		CLR = 0;
		clk = 0;	

      #100;
    R1 = 1;
		R2 = 1;
		R3 = 1;
		S1 = 0;
		S2 = 0;
		S3 = 0;
		PRE = 0;
		CLR = 0;
		clk = 0; 

      #100;
    R1 = 1;
		R2 = 1;
		R3 = 1;
		S1 = 0;
		S2 = 0;
		S3 = 0;
		PRE = 0;
		CLR = 0;
		clk = 1;	

      #100;
    R1 = 1;
		R2 = 1;
		R3 = 1;
		S1 = 0;
		S2 = 0;
		S3 = 0;
		PRE = 0;
		CLR = 0;
		clk = 0;		

      
		#100;
    R1 = 1;
		R2 = 1;
		R3 = 1;
		S1 = 1;
		S2 = 1;
		S3 = 1;
		PRE = 0;
		CLR = 0;
		clk = 0; 

    #100;
    R1 = 1;
		R2 = 1;
		R3 = 1;
		S1 = 1;
		S2 = 1;
		S3 = 1;
		PRE = 0;
		CLR = 0;
		clk = 1;	

    #100;
    R1 = 1;
		R2 = 1;
		R3 = 1;
		S1 = 1;
		S2 = 1;
		S3 = 1;
		PRE = 0;
		CLR = 0;
		clk = 0;		
		// Add stimulus here

	end
      
endmodule
