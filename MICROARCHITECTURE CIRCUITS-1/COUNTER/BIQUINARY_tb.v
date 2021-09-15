module BI_QUIN_1_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire QB;
	wire QC;
	wire QD;
	wire QA;

	// Instantiate the Unit Under Test (UUT)
	BI_QUIN_1 uut (
		.clk(clk), 
		.rst(rst), 
		.QB(QB), 
		.QC(QC), 
		.QD(QD), 
		.QA(QA)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#50;
      clk = 1;
		rst = 1; 
      #50;
      clk = 0;
		rst = 1;		
		
      #50;
      clk = 1;
		rst = 1; 
      #50;
      clk = 0;
		rst = 1;
		
		#50;
      clk = 1;
		rst = 1; 
      #50;
      clk = 0;
		rst = 1;
		
		#50;
      clk = 1;
		rst = 1; 
      #50;
      clk = 0;
		rst = 1;
		
		#50;
      clk = 1;
		rst = 1; 
      #50;
      clk = 0;
		rst = 1;
		
		#50;
      clk = 1;
		rst = 1; 
      #50;
      clk = 0;
		rst = 1;
		
		#50;
      clk = 1;
		rst = 1; 
      #50;
      clk = 0;
		rst = 1;
		
		#50;
      clk = 1;
		rst = 1; 
      #50;
      clk = 0;
		rst = 1;
		
		#50;
      clk = 1;
		rst = 1; 
      #50;
      clk = 0;
		rst = 1;
		
		#50;
      clk = 1;
		rst = 1; 
      #50;
      clk = 0;
		rst = 1;
	end
      
endmodule
