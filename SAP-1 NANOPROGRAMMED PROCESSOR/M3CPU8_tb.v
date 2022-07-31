module M3CPU8_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] PC_o;
	wire [3:0] MAR_o;
	wire [8:0] SRAM_o;
	wire [4:0] IR_o_1;
	wire [3:0] IR_o_2;
	wire [3:0] AR_o;
	wire [3:0] PRE_o;
	wire [4:0] ROM_o;
	wire [4:0] NANO_PRE_o;
	wire [16:0] NANO_ROM_o;
	wire EP_o;
	wire CP_o;
	wire LM_o;
	wire CE_o;
	wire LI_o;
	wire EI_o;
	wire CS_o;
	wire LA_o;
	wire EA_o;
	wire SU_o;
	wire AD_o;
	wire EU_o;
	wire LB_o;
	wire LO_o;
	wire LOAD_MICRO_o;
	wire CLEAR_MICRO_o;
	wire INC_MICRO_o;
	wire [8:0] B_out;
	wire [8:0] ALU_out;
	wire [8:0] A_out;
	wire [8:0] OR_out;

	// Instantiate the Unit Under Test (UUT)
	M3CPU8 uut (
		.clk(clk), 
		.rst(rst), 
		.PC_o(PC_o), 
		.MAR_o(MAR_o), 
		.SRAM_o(SRAM_o), 
		.IR_o_1(IR_o_1), 
		.IR_o_2(IR_o_2), 
		.AR_o(AR_o), 
		.PRE_o(PRE_o), 
		.ROM_o(ROM_o), 
		.NANO_PRE_o(NANO_PRE_o), 
		.NANO_ROM_o(NANO_ROM_o), 
		.EP_o(EP_o), 
		.CP_o(CP_o), 
		.LM_o(LM_o), 
		.CE_o(CE_o), 
		.LI_o(LI_o), 
		.EI_o(EI_o), 
		.CS_o(CS_o), 
		.LA_o(LA_o), 
		.EA_o(EA_o), 
		.SU_o(SU_o), 
		.AD_o(AD_o), 
		.EU_o(EU_o), 
		.LB_o(LB_o), 
		.LO_o(LO_o), 
		.LOAD_MICRO_o(LOAD_MICRO_o), 
		.CLEAR_MICRO_o(CLEAR_MICRO_o), 
		.INC_MICRO_o(INC_MICRO_o), 
		.B_out(B_out), 
		.ALU_out(ALU_out), 
		.A_out(A_out), 
		.OR_out(OR_out)
	);

	initial begin
		// Start of LDA Nanoroutine
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
// End of LDA Nanoroutine
// Start of ADD Nanoroutine
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
// End of ADD Nanoroutine
// Start of SUB Nanoroutine
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
// End of SUB Nanoroutine		
// Start of OUT Nanoroutine
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

