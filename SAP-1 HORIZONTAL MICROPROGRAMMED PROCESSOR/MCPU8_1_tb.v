module MCPU8_1_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] PC_OUT;
	wire [3:0] MAR_OUT;
	wire [3:0] IR_OUT1;
	wire [3:0] IR_OUT2;
	wire [7:0] DATA_OUT1;
	wire [3:0] ADDR_OUT1;
	wire [3:0] COUNT_OUT;
	wire [7:0] ACCUMULATOR_OUT;
	wire [7:0] DATA_OUTPUT;
	wire [7:0] B_REG;
	wire [7:0] ALU_OUT;
	wire [7:0] OR_out;
	wire [16:0] CW;
	wire EP;
	wire CP;
	wire LM;
	wire CE;
	wire LI;
	wire EI;
	wire CS;
	wire LOAD;
	wire CLR;
	wire INC;
	wire LA;
	wire EA;
	wire LB;
	wire SU;
	wire AD;
	wire EU;
	wire LO;

	// Instantiate the Unit Under Test (UUT)
	MCPU8_1 uut (
		.clk(clk), 
		.rst(rst), 
		.PC_OUT(PC_OUT), 
		.MAR_OUT(MAR_OUT), 
		.IR_OUT1(IR_OUT1), 
		.IR_OUT2(IR_OUT2), 
		.DATA_OUT1(DATA_OUT1), 
		.ADDR_OUT1(ADDR_OUT1), 
		.COUNT_OUT(COUNT_OUT), 
		.ACCUMULATOR_OUT(ACCUMULATOR_OUT), 
		.DATA_OUTPUT(DATA_OUTPUT), 
		.B_REG(B_REG), 
		.ALU_OUT(ALU_OUT), 
		.OR_out(OR_out), 
		.CW(CW), 
		.EP(EP), 
		.CP(CP), 
		.LM(LM), 
		.CE(CE), 
		.LI(LI), 
		.EI(EI), 
		.CS(CS), 
		.LOAD(LOAD), 
		.CLR(CLR), 
		.INC(INC), 
		.LA(LA), 
		.EA(EA), 
		.LB(LB), 
		.SU(SU), 
		.AD(AD), 
		.EU(EU), 
		.LO(LO)
	);

	initial begin
      // Start LDA
      clk = 0;
      rst = 0;

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
// End of LDA
// Start of ADD
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
// End of ADD
// Start of OUT
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

	end
      
endmodule
