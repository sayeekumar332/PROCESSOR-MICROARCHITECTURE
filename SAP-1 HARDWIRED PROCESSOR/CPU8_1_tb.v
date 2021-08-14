module CPU8_1_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] PC_OUT;
	wire [5:0] T;
	wire [3:0] ADDR_out;
	wire [7:0] DATA_OUT_1;
	wire [3:0] IR_OUT_w1;
	wire [3:0] IR_OUT_w2;
	wire [7:0] ALU_out;
	wire LDA;
	wire ADD;
	wire SUB;
	wire OUT;
	wire HLT;
	wire [7:0] DATA_OUT;
	wire [7:0] ACC_OUT;
	wire CP;
	wire EP;
	wire LM;
	wire CE;
	wire LI;
	wire EI;
	wire LA;
	wire EA;
	wire SU;
	wire EU;
	wire LB;
	wire LO;
	wire NOP;

	// Instantiate the Unit Under Test (UUT)
	CPU8_1 uut (
		.clk(clk), 
		.rst(rst), 
		.PC_OUT(PC_OUT), 
		.T(T), 
		.ADDR_out(ADDR_out), 
		.DATA_OUT_1(DATA_OUT_1), 
		.IR_OUT_w1(IR_OUT_w1), 
		.IR_OUT_w2(IR_OUT_w2), 
		.ALU_out(ALU_out), 
		.LDA(LDA), 
		.ADD(ADD), 
		.SUB(SUB), 
		.OUT(OUT), 
		.HLT(HLT), 
		.DATA_OUT(DATA_OUT), 
		.ACC_OUT(ACC_OUT), 
		.CP(CP), 
		.EP(EP), 
		.LM(LM), 
		.CE(CE), 
		.LI(LI), 
		.EI(EI), 
		.LA(LA), 
		.EA(EA), 
		.SU(SU), 
		.EU(EU), 
		.LB(LB), 
		.LO(LO), 
		.NOP(NOP)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#50;
      clk = 0;
		rst = 1;
      #50;
      clk = 1;
		rst = 0;

      #50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;

      #50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;

      #50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;

      #50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;  	

      #50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;

      #50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;

      #50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;

      #50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;

      #50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;

      #50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;		
		
		#50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;
		
		#50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;
		
		#50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;
		
		#50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;
		
		#50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;
		
		#50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;
		
		#50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;
		
		#50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;
		
		#50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;
		
		#50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;
		
		#50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;
		
		#50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;
		
		#50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;
		
		#50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;
		
		#50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;
		
		#50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;
		
		#50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;
		
		#50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;
		
		#50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;
		
		#50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;
		
		#50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;
		
		#50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;
		
		#50;
      clk = 0;
		rst = 0;
      #50;
      clk = 1;
		rst = 0;
		
		// Add stimulus here

	end
      
endmodule

