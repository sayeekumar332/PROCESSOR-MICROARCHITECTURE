// Whenever a Control ROM location is assigned two different values , the latest value[i.e. current value] will be taken into consideration
// For example :
// CR[14] <= 17'b00111000011011001; // SU signal activated and Preset Counter Incremented
// CR[14] <= 17'b00111000001010001; // NOP instruction.
// In the above case NOP instruction will be executed.
// Assign a bus output of one device to input of multiple devices. This is allowed in Xilinx ISE 14.7 Webpack. Assign multiple outputs to a bus is not allowed. It is called bus driver overload
// 
module MCPU8_1(input clk , input rst  , output [4:0] PC_OUT , output [4:0] MAR_OUT , output [3:0] IR_OUT1 , output [4:0] IR_OUT2 , output[8:0] DATA_OUT1 , output[4:0] ADDR_OUT1 , output [4:0] COUNT_OUT , output [8:0] ACCUMULATOR_OUT , output [8:0] DATA_OUTPUT , output [8:0] B_REG , output [8:0] ALU_OUT , output [8:0] OR_out , output [16:0] CW, output EP , output CP , output LM , output CE ,output LI , output EI , output CS , output LOAD , output CLR , output INC , output LA , output EA , output LB , output SU , output AD , output EU , output LO);
wire [4:0] MAR_OUT_w , IR_OUT_2_w , MAR_IN_w , MUX_IN;
wire [3:0] IR_OUT_1_w;
wire [16:0] CW_w;
wire [8:0] DATA_IN_w;
wire[4:0] bus_5;
wire [4:0] bus_5_1;
wire [8:0] bus_9 , bus_9_1 , bus_9_2 , ACC_IN_w;
wire [8:0] ALU_A_w;
wire [8:0] ALU_B_w;
wire EP_w , CP_w ,  CS_w , CE_w , LOAD_w , LI_w , LM_w , EI_w , CLR_w , INC_w,  LA_w , EA_w , LB_w , SU_w , AD_w , EU_w , LO_w;
assign EP = EP_w;
assign CP = CP_w;
assign CW = CW_w;
assign LOAD = LOAD_w;
assign CS = CS_w;
assign LI = LI_w;
assign LM = LM_w;
assign CE = CE_w;
assign EI = EI_w;
assign INC = INC_w;
assign CLR = CLR_w;
assign LA = LA_w;
assign EA = EA_w;
assign LB = LB_w;
assign SU = SU_w;
assign AD = AD_w;
assign EU = EU_w;
assign LO = LO_w;
assign DATA_OUT1 = bus_9;
assign IR_OUT1 = IR_OUT_1_w;
assign IR_OUT2 = bus_5_1;
assign ADDR_OUT1 = MUX_IN;
assign PC_OUT = bus_5;
assign MAR_OUT = MAR_OUT_w;
assign ACCUMULATOR_OUT = ALU_A_w;
assign OR_out = DATA_OUTPUT;
assign B_REG = ALU_B_w;
assign ALU_OUT = bus_9_1;
PC_4 UUT1 (.clk(clk) , .rst(rst) , .EP(EP_w) , .CP(CP_w) , .PC_OUT(bus_5));
MAR UUT2(.clk(clk) , .LM(LM_w) , .MAR_IN(bus_5 | bus_5_1) , .MAR_OUT(MAR_OUT_w));
SRAM_8 UUT3(.clk(clk) , .ADDR(MAR_OUT_w) , .CE(CE_w) ,.DATA_OUT(bus_9)); 
IR_8 UUT4(.clk(clk) , .rst(rst) , .LI(LI_w) , .EI(EI_w) ,.DATA_IN(bus_9) , .IR_OUT_1(IR_OUT_1_w) , .IR_OUT_2(bus_5_1));
ADDR_ROM UUT5(.CS(CS_w) , .ADDR(IR_OUT_1_w) , .ADDR_OUT(MUX_IN));
PRESET_COUNT UUT6(.clk(clk) , .rst(rst) , .LOAD(LOAD_w) , .CLR(CLR_w) ,  .INC(INC_w) ,  .COUNT_IN(MUX_IN) , .COUNT_OUT(COUNT_OUT));
CONTROL_ROM UUT7(.ADDR_IN(COUNT_OUT) , .CW(CW_w));
MICRO_DECODER UUT8(.CW(CW_w) , .EP(EP_w) , .CP(CP_w) , .LM(LM_w) ,.CE(CE_w), .LI(LI_w) , .EI(EI_w) , .CS(CS_w) ,  .LOAD(LOAD_w) , .CLR(CLR_w) , .INC(INC_w) , .LA(LA_w) , .EA(EA_w) , .LB(LB_w) , .SU(SU_w) , .AD(AD_w) , .EU(EU_w) , .LO(LO_w));
ACC_8 UUT9(.clk(clk) , .ACC_IN(bus_9 | bus_9_1) , .LA(LA_w) , .EA(EA_w) , .ACC_OUT_ALU(ALU_A_w) , .ACC_OUT_BUS(bus_9_2));
B_REG_8 UUT10(.clk(clk) , .LB(LB_w) , .B_IN(bus_9) , .B_OUT(ALU_B_w));
OUT_REG_8 UUT11(.clk(clk) , .OUT_IN(bus_9_2) , .LO(LO_w) , .OUT_P(DATA_OUTPUT));
ALU_8 UUT12(.ALU_A(ALU_A_w) ,.ALU_B(ALU_B_w) ,.SU(SU_w) , .AD(AD_w) , .EU(EU_w) ,.ALU_OUT(bus_9_1));
endmodule

module PC_4(input clk , input rst , input EP , input CP , output [4:0] PC_OUT);
reg [4:0] PC_OUT_r;
assign PC_OUT = EP ? PC_OUT_r : 5'h00;
always@(posedge clk or posedge rst)
begin
if(rst)
PC_OUT_r <= 5'b00000;
else if(CP)
PC_OUT_r <= PC_OUT_r + 1'b1;
end
endmodule


module MAR(input clk , input LM , input [4:0] MAR_IN , output [4:0] MAR_OUT);
reg[4:0]MAR_r;
assign MAR_OUT = MAR_r;
always@(posedge clk)
begin
if(~LM)
MAR_r <= MAR_IN;
end
endmodule

module SRAM_8(input clk , input [4:0] ADDR , input CE , output[8:0] DATA_OUT);
reg [8:0] SRAM [15:0] ;// A SRAM with 16 locations with each location capable of holding 8-bit of DATA
assign DATA_OUT = (~CE) ? SRAM[ADDR] : 9'h000;
always@(posedge clk)
begin
SRAM[0] <= 9'b000001001; //LDA 09 instruction - Load the contents of memory location 09 into the accumulator
SRAM[1] <= 9'b000101010; // ADD 0A instruction - Add the contents of Accumulator with the contents of memory location 0A and store the result in Accumulator
SRAM[2] <= 9'b001001011; // SUB 0B - Add the contents of Accumulator that is obtained from previous instruction with the contents of memory location 0B and store the result in Accumulator
SRAM[3] <= 9'b0011xxxxx; // OUT instruction - To output the content of accumulator that is obtained from previous addition operation
SRAM[4] <= 9'b111111111; // HLT instruction - To stop the execution of instructions
SRAM[5] <= 9'b111111111; // Unused memory locations are filled with FF
SRAM[6] <= 9'b111111111; // Unused memory locations are filled with FF
SRAM[7] <= 9'b111111111; //Unused memory locations are filled with FF
SRAM[8] <= 9'b111111111; // Unused memory locations are filled with FF
SRAM[9] <= 9'b000000001; // 01H is the 8-bit value stored in the location 09
SRAM[10]<= 9'b000000010; // 02H is the 8-bit value stored in the location 0A
SRAM[11]<= 9'b000000001; // 01H is the 8-bit value stored in the location 0B
SRAM[12]<= 9'b111111111; // Unused memory locations are filled with FF
SRAM[13]<= 9'b111111111; // Unused memory locations are filled with FF
SRAM[14]<= 9'b111111111; // Unused memory locations are filled with FF
SRAM[15]<= 9'b111111111; // Unused memory locations are filled with FF
end
endmodule

module IR_8 (input clk , input rst , input LI , input EI,  input [8:0] DATA_IN , output[3:0] IR_OUT_1 , output [4:0] IR_OUT_2);
reg [8:0] IR_r;
assign IR_OUT_1 = IR_r[8:5];
assign IR_OUT_2 = EI ? IR_r[4:0] : 5'h00;
always@(posedge clk or posedge rst)
begin
if(rst)
IR_r <= 9'h000;
else if(~LI)
IR_r <= DATA_IN;
end
endmodule

module ADDR_ROM(input CS , input[3:0] ADDR , output[4:0] ADDR_OUT);
reg [4:0] AR [15:0];
assign ADDR_OUT = CS ? AR[ADDR] : 5'h00;
always @(ADDR)
begin
AR[0] <= 5'b00100; // LDA Routine Address
AR[1] <= 5'b00111; // ADD Routine Address
AR[2] <= 5'b01100; // SUB Routine Address
AR[3] <= 5'b10001; // OUT Routine Address
AR[4] <= 5'bxxxxx;
AR[5] <= 5'bxxxxx;
AR[6] <= 5'bxxxxx;
AR[7] <= 5'bxxxxx;
AR[8] <= 5'bxxxxx;
AR[9] <= 5'bxxxxx;
AR[10] <= 5'bxxxxx;
AR[11] <= 5'bxxxxx;
AR[12] <= 5'bxxxxx;
AR[13] <= 5'bxxxxx;
AR[14] <= 5'bxxxxx;
AR[15] <= 5'bxxxxx;
end
endmodule


module PRESET_COUNT(input clk , input rst , input INC , input CLR , input LOAD , input [4:0] COUNT_IN , output [4:0] COUNT_OUT); // Micro-Routine Program Counter
reg [4:0] COUNT_OUT_r;
assign COUNT_OUT = COUNT_OUT_r;
always@(posedge clk or posedge rst)
begin
if(rst)
COUNT_OUT_r <= 5'b0000;
else if(LOAD)
COUNT_OUT_r <= COUNT_IN;
else if(INC) // Always associate a signal that must occur along with CLOCK EDGE , for an operation to be done. This is the correct way.
COUNT_OUT_r <= COUNT_OUT_r + 1'b1;
else if(CLR)
COUNT_OUT_r <= COUNT_IN;
end
endmodule

module CONTROL_ROM(input [4:0] ADDR_IN , output [16:0] CW);
reg [16:0] CR [19:0];
assign CW = CR[ADDR_IN];
always@(ADDR_IN)
//  EP  CP  LM*  CE* LI* EI CS LOAD CLR INC LA* EA LB* SU AD EU LO*
// ************************ FETCH ROUTINE ***************************
//  1   0    0    1   1  0  0   0    0   1   1  0   1  0  0   0  1
//  0   1    1    1   1  0  0   0    0   1   1  0   1  0  0   0  1
//  0   0    1    0   0  0  0   0    0   1   1  0   1  0  0   0  1
//  0   0    1    1   1  0  1   1    0   0   1  0   1  0  0   0  1  
// ********************** LDA ROUTINE ****************************
//  0   0    0    1   1  1  0   0    0   1   1  0   1  0  0   0  1 
//  0   0    1    0   1  0  0   0    0   1   0  0   1  0  0   0  1
//  0   0    1    1   1  0  0   0    1   0   1  0   1  0  0   0  1
// ************************ADD ROUTINE ***************************
//  0   0    0    1   1  1  0   0    0   1   1  0   1  0  0   0  1
//  0   0    1    0   1  0  0   0    0   1   1  0   0  0  0   0  1 
//  0   0    1    1   1  0  0   0    0   1   1  0   1  0  1   0  1  
//  0   0    1    1   1  0  0   0    0   1   0  0   1  0  0   1  1  
//  0   0    1    1   1  0  0   0    1   0   1  0   1  0  0   0  1 
// *********************** SUB ROUTINE ****************************
//  0   0    0    1   1  1  0   0    0   1   1  0   1  0  0   0  1 
//  0   0    1    0   1  0  0   0    0   1   1  0   0  0  0   0  1 
//	 0   0    1    1   1  0  0   0    0   1   1  0   1  1  0   0  1 
//  0   0    1    1   1  0  0   0    0   1   0  0   1  0  0   1  1
//  0   0    1    1   1  0  0   0    1   0   1  0   1  0  0   1  1 
// ********************** OUT ROUTINE ****************************
//  0   0    0    1   1  1  0   0    0   1   1  0   1  0  0   1  1
//  0   0    1    1   1  0  0   0    0   1   1  1   1  0  0   1  0
//  0   0    1    1   1  0  0   0    1   0   1  0   1  0  0   1  1   
begin
// Fetch Micro-routine
CR[0] <= 17'b10011000011010001; // EP and LM signals activated and Preset Counter Incremented
CR[1] <= 17'b01111000011010001; // CP signal activated and Preset Counter Incremented
CR[2] <= 17'b00100000011010001; // CE and LI signals activated and Preset Counter Incremented
CR[3] <= 17'b00111011001010001; // CS and Preset LOAD signal activated. 
// LDA Micro-routine
CR[4] <= 17'b00011100011010001 ; // LM , EI signals activated and Preset Counter Incremented
CR[5] <= 17'b00101000010010001; // CE and LA signals activated and Preset Counter Incremented 
CR[6] <= 17'b00111000101000001; // Preset CLR signal activated
// ADD Micro-routine
CR[7] <= 17'b00011100011010001; // LM , EI signals activated and Preset Counter Incremented
CR[8] <= 17'b00101000011000001; // CE and LB signals activated and Preset Counter Incremented
CR[9] <= 17'b00111000011010101; // AD signal activated and Preset Counter Incremented
CR[10] <= 17'b00111000010010011; // EU and LA signals activated and Preset Counter Incremented
CR[11] <= 17'b00111000101010001; // Preset CLR signal activated
// SUB Micro-routine
CR[12] <= 17'b00011100011010001; // LM , EI signals activated and Preset Counter Incremented
CR[13] <= 17'b00101000011000001; // CE and LB signals activated and Preset Counter Incremented
CR[14] <= 17'b00111000011011001; // SU signal activated and Preset Counter Incremented
CR[15] <= 17'b00111000010010011; // EU and LA signals activated and Preset Counter Incremented
CR[16] <= 17'b00111000101010011; // Preset CLR signal activated
                                    // Actually this design of CPU requires 5-bit address [i.e. memory with 32 memory locations] in order to accomodate the micro-routines of all instructions. The design has to be accordingly changed.
// OUT Micro-routine
CR[17] <= 17'b00011100011010011;
CR[18] <= 17'b00111000011110010;
CR[19] <= 17'b00111000101010011;
// NOP Micro-routine
//CR[14] <= 17'b00111000001010001; 
end
endmodule

module MICRO_DECODER(input [16:0] CW , output EP , CP , LM ,  CE , LI , EI , CS , LOAD , CLR , INC , LA , EA , LB , SU , AD , EU , LO);
assign EP = CW[16];
assign CP = CW[15];
assign LM = CW[14];
assign CE = CW[13];
assign LI = CW[12];
assign EI = CW[11];
assign CS = CW[10];
assign LOAD = CW[9];
assign CLR = CW[8];
assign INC = CW[7];
assign LA = CW[6];
assign EA = CW[5];
assign LB = CW[4];
assign SU = CW[3];
assign AD = CW[2];
assign EU = CW[1];
assign LO = CW[0];
endmodule

module ACC_8(input clk , input [8:0] ACC_IN  , input LA , input EA , output [8:0] ACC_OUT_ALU , output[8:0] ACC_OUT_BUS);
reg [8:0] ACC_OUT_r;
assign ACC_OUT_ALU = ACC_OUT_r;
assign ACC_OUT_BUS = EA ? ACC_OUT_r : 9'h000;
always@(posedge clk)
begin
if(~LA)
ACC_OUT_r <= ACC_IN;
end
endmodule

module B_REG_8(input clk , input [8:0] B_IN  , input LB , output [8:0] B_OUT);
reg [8:0] B_OUT_r;
assign B_OUT = B_OUT_r;
always@(posedge clk)
begin
if(~LB)
B_OUT_r <= B_IN;
end
endmodule

module OUT_REG_8(input clk , input [8:0] OUT_IN  , input LO , output [8:0]OUT_P );
reg [8:0] OUT_P_r;
assign OUT_P = OUT_P_r;
always@(posedge clk)
begin
if(~LO)
OUT_P_r<= OUT_IN;
end
endmodule

module ALU_8(input[8:0] ALU_A ,  input [8:0] ALU_B  , input SU , input AD , input EU ,  output [8:0]ALU_OUT); // Here addition of AD signal , eliminated the need for a separate multiplexer for the accumulator.
wire [8:0] ALU_OUT_w;
assign ALU_OUT_w = SU ? ALU_A - ALU_B : AD ? ALU_A + ALU_B : ALU_OUT_w;
assign ALU_OUT = EU ? ALU_OUT_w : 9'h000;
endmodule

