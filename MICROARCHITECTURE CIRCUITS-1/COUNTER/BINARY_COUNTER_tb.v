module BIN_COUNT_1_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire QA;
	wire QB;
	wire QC;
	wire QD;

	// Instantiate the Unit Under Test (UUT)
	BIN_1 uut (
		.clk(clk), 
		.rst(rst), 
		.QA(QA), 
		.QB(QB), 
		.QC(QC), 
		.QD(QD)
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
