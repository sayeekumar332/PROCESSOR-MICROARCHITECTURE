module M2CPU8_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire EP;
	wire CP;
	wire [4:0] PC_OUT_o;
	wire [4:0] SRAM_ADDR_o;
	wire LM;
	wire CE_o;
	wire [3:0] IR_1_OUT_o;
	wire [4:0] IR_2_OUT_o;
	wire [8:0] SRAM_OUT;
	wire LI_o;
	wire EI_o;
	wire CS_o;
	wire LOAD_o;
	wire INC_o;
	wire CLR_o;
	wire LA_o;
	wire EA_o;
	wire SU_o;
	wire AD_o;
	wire EU_o;
	wire LB_o;
	wire LO_o;
	wire [8:0] OUT_o;
	wire [4:0] PRE_OUT_o;
	wire [8:0] ACC_OUT_o;
	wire [8:0] ACC_OUT_bus_o;
	wire [8:0] B_o;
	wire [8:0] ALU_OUT_o;
	wire [8:0] ALU_OUT_bus;

	// Instantiate the Unit Under Test (UUT)
	M2CPU8 uut (
		.clk(clk), 
		.rst(rst), 
		.EP(EP), 
		.CP(CP), 
		.PC_OUT_o(PC_OUT_o), 
		.SRAM_ADDR_o(SRAM_ADDR_o), 
		.LM(LM), 
		.CE_o(CE_o), 
		.IR_1_OUT_o(IR_1_OUT_o), 
		.IR_2_OUT_o(IR_2_OUT_o), 
		.SRAM_OUT(SRAM_OUT), 
		.LI_o(LI_o), 
		.EI_o(EI_o), 
		.CS_o(CS_o), 
		.LOAD_o(LOAD_o), 
		.INC_o(INC_o), 
		.CLR_o(CLR_o), 
		.LA_o(LA_o), 
		.EA_o(EA_o), 
		.SU_o(SU_o), 
		.AD_o(AD_o), 
		.EU_o(EU_o), 
		.LB_o(LB_o), 
		.LO_o(LO_o), 
		.OUT_o(OUT_o), 
		.PRE_OUT_o(PRE_OUT_o), 
		.ACC_OUT_o(ACC_OUT_o), 
		.ACC_OUT_bus_o(ACC_OUT_bus_o), 
		.B_o(B_o), 
		.ALU_OUT_o(ALU_OUT_o), 
		.ALU_OUT_bus(ALU_OUT_bus)
	);

	initial begin
	// Start LDA Routine
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
// End of LDA Routine
// Start of ADD Routine
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
// End of ADD Routine
// Start of SUB Routine
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
// End of SUB Routine
// Start of OUT Routine
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
// End of OUT Routine
	end
      
endmodule

