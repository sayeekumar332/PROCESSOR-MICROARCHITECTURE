`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:43:16 06/12/2022 
// Design Name: 
// Module Name:    M3CPU8 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module M3CPU8(input clk , input rst , output [3:0] PC_o , output [3:0] MAR_o , output [8:0] SRAM_o , output [4:0] IR_o_1 , output [3:0] IR_o_2 , output [3:0] AR_o , output [3:0] PRE_o , output [4:0] ROM_o , output [4:0] NANO_PRE_o  , output [16:0] NANO_ROM_o, output EP_o , output CP_o , output LM_o , output CE_o , output LI_o , output EI_o , output CS_o , output LA_o , output EA_o , output SU_o , output AD_o , output EU_o , output LB_o , output LO_o , output LOAD_MICRO_o , output CLEAR_MICRO_o , output INC_MICRO_o , output [8:0] B_out , output [8:0] ALU_out , output [8:0] A_out , output [8:0] OR_out);
wire [3:0] bus_4 , bus_4_1 , SRAM_IN;
wire [8:0] bus_8 , bus_8_1 , bus_8_2 , ALU_IN_A , ALU_IN_B, OREG_IN;
wire [4:0] AR_IN , MICRO_ROM_IN , PRE_IN;
wire [5:0] NANO_PRE_IN , NANO_ROM_IN;
wire [16:0] NANO_DEC_IN;
wire EP_w , CP_w , LM_w , CE_w , LI_w , EI_w , CS_w , LA_w , EA_w , SU_w , AD_w , EU_w , LB_w , LO_w , LOAD_MICRO_w , INC_MICRO_w , CLEAR_MICRO_w;
assign PC_o = bus_4;
assign MAR_o = SRAM_IN;
assign SRAM_o = bus_8;
assign IR_o_1 = AR_IN;
assign IR_o_2 = bus_4_1;
assign AR_o = PRE_IN;
assign PRE_o = MICRO_ROM_IN;
assign ROM_o = NANO_PRE_IN;
assign NANO_PRE_o = NANO_ROM_IN;
assign NANO_ROM_o = NANO_DEC_IN;
assign EP_o = EP_w;
assign CP_o = CP_w;
assign LM_o = LM_w;
assign CE_o = CE_w;
assign LI_o = LI_w;
assign EI_o = EI_w;
assign CS_o = CS_w;
assign LA_o = LA_w;
assign EA_o = EA_w;
assign SU_o = SU_w;
assign AD_o = AD_w;
assign EU_o = EU_w;
assign LB_o = LB_w;
assign LO_o = LO_w;
assign LOAD_MICRO_o = LOAD_MICRO_w;
assign INC_MICRO_o = INC_MICRO_w;
assign CLEAR_MICRO_o = CLEAR_MICRO_w;
assign B_out = ALU_IN_B;
assign A_out = ALU_IN_A;
assign ALU_out = bus_8_1;
assign OR_out = OREG_IN;

PC UUT1(.clk(clk) , .rst(rst) , .EP(EP_w) , .CP(CP_w) , .PC_OUT(bus_4));
MAR UUT2(.clk(clk) , .LM(LM_w) , .PC_IN(bus_4 | bus_4_1) , .MAR_OUT(SRAM_IN));
SRAM UUT3(.CE(CE_w) , .MAR_IN(SRAM_IN) , .SRAM_OUT(bus_8));
IR UUT4(.clk(clk) , .LI(LI_w) , .EI(EI_w) , .SRAM_IN(bus_8) , .IR_OUT_1(AR_IN) , .IR_OUT_2(bus_4_1));
ADDR_ROM UUT5(.IR_OUT(AR_IN) , .CS(CS_w) , .AR_OUT(PRE_IN));
MICRO_PROG_COUNTER UUT6(.clk(clk) , .rst(rst) , .AR_ROM_IN(PRE_IN) , .LOAD_MICRO(LOAD_MICRO_w) , .INC_MICRO(INC_MICRO_w) , .CLEAR_MICRO(CLEAR_MICRO_w) , .PRE_OUT(MICRO_ROM_IN)); 
MICROCODE_ROM UUT7(.PRE_IN(MICRO_ROM_IN) , .ROM_OUT(NANO_PRE_IN));
NANO_PROG_COUNTER UUT8(.MCR_IN(NANO_PRE_IN),.NANO_PRE_OUT(NANO_ROM_IN));
NANOCODE_ROM UUT9 (.NANO_PRE_IN(NANO_ROM_IN) , .NANO_ROM_OUT(NANO_DEC_IN));
NANOCODE_DECODER UUT10(.NANO_ROM_IN(NANO_DEC_IN) , .EP_o(EP_w), .CP_o(CP_w) , .LM_o(LM_w) , .CE_o(CE_w) , .LI_o(LI_w) , .EI_o(EI_w) , .CS_o(CS_w) , .LA_o(LA_w) , .EA_o(EA_w) , .SU_o(SU_w) , .AD_o(AD_w) , .EU_o(EU_w) , .LB_o(LB_w) , .LO_o(LO_w) , .LOAD_MICRO_o(LOAD_MICRO_w) , .CLEAR_MICRO_o(CLEAR_MICRO_w) , .INC_MICRO_o(INC_MICRO_w));
ACC UUT11(.clk(clk) , .ACC_IN(bus_8 | bus_8_1) , .LA(LA_w) , .EA(EA_w) , .ACC_ALU(ALU_IN_A) , .ACC_BUS(bus_8_2));
BREG UUT12(.clk , .B_IN(bus_8) , .LB(LB_w) , .B_OUT(ALU_IN_B));
ALU UUT13(.ALU_A(ALU_IN_A) , .ALU_B(ALU_IN_B) , .SU(SU_w) , .AD(AD_w) , .EU(EU_w) , .ALU_OUT(bus_8_1));
OREG UUT14(.clk(clk) , .O_IN(bus_8_2) , .LO(LO_w) , .O_OUT(OREG_IN));
endmodule

module PC(input clk , input rst , input EP , input CP , output[3:0] PC_OUT);
reg [3:0] PC_OUT_r;
assign PC_OUT = EP ? PC_OUT_r: 4'h0;
always@(posedge clk or posedge rst)
begin
if(rst)
PC_OUT_r <= 4'h0;
else if(CP)
PC_OUT_r <= PC_OUT_r + 1'b1;
end
endmodule

module MAR(input clk , input LM , input [3:0] PC_IN , output [3:0] MAR_OUT);
reg [3:0] MAR_r;
assign MAR_OUT = MAR_r;
always@(posedge clk)
begin
if(~LM)
MAR_r <= PC_IN;
end
endmodule

module SRAM(input CE , input [3:0] MAR_IN , output[8:0] SRAM_OUT);
reg [8:0] SRAM_r [15:0];
assign SRAM_OUT = (~CE) ? SRAM_r[MAR_IN] : 9'h000;
always@(MAR_IN)
begin
SRAM_r[0] <= 9'b000001001;// LDA 09
SRAM_r[1] <= 9'b000011010; // ADD 0A
SRAM_r[2] <= 9'b000101011; // SUB 0B
SRAM_r[3] <= 9'b000111111; // OUT
SRAM_r[4] <= 9'b111111111; // Unused memory locations to be filled with FF
SRAM_r[5] <= 9'b111111111; // Unused memory locations to be filled with FF
SRAM_r[6] <= 9'b111111111; // Unused memory locations to be filled with FF
SRAM_r[7] <= 9'b111111111; // Unused memory locations to be filled with FF
SRAM_r[8] <= 9'b111111111; // Unused memory locations to be filled with FF
SRAM_r[9] <= 9'b000000001; // Content of Location 9
SRAM_r[10] <= 9'b000000010; // Content of Location A
SRAM_r[11] <= 9'b000000001; // Content of Location B
SRAM_r[12] <= 9'b111111111; // Unused memory locations to be filled with FF
SRAM_r[13] <= 9'b111111111; // Unused memory locations to be filled with FF
SRAM_r[14] <= 9'b111111111; // Unused memory locations to be filled with FF
SRAM_r[15] <= 9'b111111111; // Unused memory locations to be filled with FF
end
endmodule

module IR(input clk , input LI , input EI , input [8:0] SRAM_IN , output [4:0] IR_OUT_1 , output [3:0] IR_OUT_2);
reg [8:0] IR_OUT_r;
assign IR_OUT_1 = IR_OUT_r[8:4];
assign IR_OUT_2 = EI ? IR_OUT_r[3:0] : 4'h0;
always@(posedge clk)
begin
if(~LI)
IR_OUT_r <= SRAM_IN;
end
endmodule

module ADDR_ROM(input [4:0] IR_OUT , input CS , output [4:0] AR_OUT);// Holds the Micro-routine for a Macro-Instruction fetched from SRAM
reg [4:0] AR_OUT_r[15:0];
assign AR_OUT = AR_OUT_r[IR_OUT];// Instruction Fetched from IR serves as the address for reading data from Address ROM. The output of Address ROM is the starting address of a Micro-Routine.
always@(CS) // Whenever the CS[Chip Select] signal is activated , content of a ROM address will be output.
begin
AR_OUT_r[0] <= 5'b00100;
AR_OUT_r[1] <= 5'b00111;
AR_OUT_r[2] <= 5'b01100;
AR_OUT_r[3] <= 5'b10001;
AR_OUT_r[4] <= 5'hFF;
AR_OUT_r[5] <= 5'hFF;
AR_OUT_r[6] <= 5'hFF;
AR_OUT_r[7] <= 5'hFF;
AR_OUT_r[8] <= 5'hFF;
AR_OUT_r[9] <= 5'hFF;
AR_OUT_r[10] <= 5'hFF;
AR_OUT_r[11] <= 5'hFF;
AR_OUT_r[12] <= 5'hFF;
AR_OUT_r[13] <= 5'hFF;
AR_OUT_r[14] <= 5'hFF;
AR_OUT_r[15] <= 5'hFF;
end
endmodule

module MICRO_PROG_COUNTER (input clk , input rst , input [4:0] AR_ROM_IN , input LOAD_MICRO , input INC_MICRO , input CLEAR_MICRO , output [4:0] PRE_OUT); // This is called Microprogram Counter
reg [4:0] PRE_OUT_r;
assign PRE_OUT = PRE_OUT_r;
always@(posedge clk or posedge rst) // Signals separated by "or" in sensitivity list of "always" statement are Asynchronous.
begin
if(rst)
PRE_OUT_r <= 5'h00;
else if(LOAD_MICRO)
PRE_OUT_r <= AR_ROM_IN;
else if(INC_MICRO)
PRE_OUT_r <= PRE_OUT_r + 1'b1;
else if(CLEAR_MICRO) // Difference between RST and CLR is RST is asynchronous signal[Occurs independent of clock edge] whereas CLR is Synchronous signal[i.e. occurs when a clock edge has occured]
PRE_OUT_r <= 5'h00; 
end
endmodule

module MICROCODE_ROM(input [4:0] PRE_IN , output [5:0] ROM_OUT); // Vertical Microcode ROM
reg [5:0] ROM_OUT_r[19:0];
assign ROM_OUT = ROM_OUT_r[PRE_IN];// The output of PRESETTABLE COUNTER acts as the input for reading the content of MICROCODE ROM
always@(PRE_IN)
begin
//   CP   EP  LM   CE  LI  EI CS LOAD  INC  CLR   LA  EA  SU  EU  LB  LO
//    |------- M1------------------|----------M2-----------------|------LOAD-----|------INC-----|--------CLR--------|
//          8 7 6                         5  4  3                         2               1                0  
//          0 0 0 (EP)                    0  0  0 (LI)
//          0 0 1 (CP)                    0  0  1 (LM)
//          0 1 0 (CE)                    0  1  0 (LB) 
//          0 1 1 (EI)                    0  1  1 (LO)                   
//          1 0 0 (CS)                    1  0  0 (LA)  
//          1 0 1 (EA)					      1  0  1 (SU) 
//          1 1 0 (EU)                    1  1  0 (AD)
//          1 1 1 (NOP)                   1  1  1 (NOP)           

// Fetch Routine
ROM_OUT_r[0] <= 6'b000000;// EP and LM  activated and Preset Counter Incremented
ROM_OUT_r[1] <= 6'b000001; // CP  activated and Preset Counter Incremented
ROM_OUT_r[2] <= 6'b000010; // CE and LI activated and Preset Counter Incremented
ROM_OUT_r[3] <= 6'b000011; // CS and LOAD activated
// LDA Routine
ROM_OUT_r[4] <= 6'b000100; // EI and LM activated and Preset Counter Incremented 
ROM_OUT_r[5] <= 6'b000101; // CE and LA activated and Preset Counter Incremented
ROM_OUT_r[6] <= 6'b000110; // Preset CLR
// ADD Routine
ROM_OUT_r[7] <= 6'b000100; // EI and LM activated and Preset Counter Incremented 
ROM_OUT_r[8] <= 6'b000111; // CE and LB activated and Preset Counter Incremented
ROM_OUT_r[9] <= 6'b001000; // AD activated and Preset Counter Incremented
ROM_OUT_r[10] <= 6'b001001; // EU and LA activated and Preset Counter Incremented
ROM_OUT_r[11] <= 6'b000110; // Preset CLR
// SUB Routine
ROM_OUT_r[12] <= 6'b000100; // EI and LM activated and Preset Counter Incremented 
ROM_OUT_r[13] <= 6'b000111; // CE and LB activated and Preset Counter Incremented
ROM_OUT_r[14] <= 6'b001010; // SU activated and Preset Counter Incremented 
ROM_OUT_r[15] <= 6'b001001; // EU and LA activated and Preset Counter Incremented
 ROM_OUT_r[16] <= 6'b000110; // Preset CLR. Actually this CPU requires 4-bit Address for SRAM and 5-bit address for Microcode ROM. So that needs to be changed.
// OUT Routine
ROM_OUT_r[17] <= 6'b000100; // EI and LM activated and Preset Counter Incremented  
ROM_OUT_r[18] <= 6'b001011; // EA and LO activated and Preset Counter Incremented
ROM_OUT_r[19] <= 6'b000110; // Preset CLR
end
endmodule

module NANO_PROG_COUNTER (input [5:0] MCR_IN , output [5:0] NANO_PRE_OUT);
reg [5:0] NANO_PRE_OUT_r;
assign NANO_PRE_OUT = NANO_PRE_OUT_r;
always@(MCR_IN)
begin
NANO_PRE_OUT_r <= MCR_IN;
end
endmodule

module NANOCODE_ROM(input [5:0] NANO_PRE_IN , output [16:0] NANO_ROM_OUT); // Horizontal Microcode Control ROM
reg [16:0] NANO_ROM_OUT_r[11:0];
assign NANO_ROM_OUT = NANO_ROM_OUT_r[NANO_PRE_IN];
always@(NANO_PRE_IN)
begin
// Fetch Nanoroutine
// EP  CP  LM  CE  LI EI CS LA EA SU AD EU LB LO LOAD_MICRO CLEAR_MICRO INC_MICRO    
// 1   0    0   1   1  0  0  1  0  0 0   0  1  1    0         0          1                     - EP , LM and INC_MICRO activated
// 0   1    1   1   1  0  0  1  0  0 0   0  1  1    0         0          1                     - CP and INC_MICRO activated
// 0   0    1   0   0  0  0  1  0  0 0   0  1  1    0         0          1                     - CE , LI and  INC_MICRO activated
// 0   0    1   1   1  0  1  1  0  0 0   0  1  1    1         0          0                     - CS , LOAD_MICRO activated
// 0   0    0   1   1  1  0  1  0  0 0   0  1  1    0         0          1                     - EI , LM and INC_MICRO activated
// 0   0    1   0   1  0  0  0  0  0 0   0  1  1    0         0          1                     - CE* , LA* and INC_MICRO activated 
// 0   0    1   1   1  0  0  1  0  0 0   0  1  1    0         1          0                     - CLEAR_MICRO activated     
// 0   0    1   0   1  0  0  1  0  0 0   0  0  1    0         0          1                     - CE* , LB* and INC_MICRO activated 
// 0   0    1   1   1  0  0  1  0  0 1   0  1  1    0         0          1                     - AD and INC_MICRO activated
// 0   0    1   1   1  0  0  1  0  1 0   0  1  1    0         0          1                     - SU and INC_MICRO activated
// 0   0    1   1   1  0  0  0  0  0 0   1  1  1    0         0          1                     - EU,LA* and INC_MICRO activated
// 0   0    1   1   1  0  0  1  1  0 0   0  1  0    0         0          1                     - EA,LO* and INC_MICRO activated   
NANO_ROM_OUT_r[0] <= 17'b10011001000011001; // EP , LM* and INC_MICRO activated
NANO_ROM_OUT_r[1] <= 17'b01111001000011001; // CP and INC_MICRO activated
NANO_ROM_OUT_r[2] <= 17'b00100001000011001; // CE* , LI* and INC_MICRO activated
NANO_ROM_OUT_r[3] <= 17'b00111011000011100; // CS,LOAD_MICRO activated
NANO_ROM_OUT_r[4] <= 17'b00011101000011001; // EI,LM* and INC_MICRO activated
NANO_ROM_OUT_r[5] <= 17'b00101000000011001; // CE* , LA* and INC_MICRO activated
NANO_ROM_OUT_r[6] <= 17'b00111001000011010; // CLEAR_MICRO activated
NANO_ROM_OUT_r[7] <= 17'b00101001000001001; // CE* , LB* and INC_MICRO activated
NANO_ROM_OUT_r[8] <= 17'b00111001001011001; // AD and INC_MICRO activated
NANO_ROM_OUT_r[9] <= 17'b00111000000111001; // EU,LA* and INC_MICRO activated
NANO_ROM_OUT_r[10] <= 17'b00111001010011001; // SU and INC_MICRO activated
NANO_ROM_OUT_r[11] <= 17'b00111001100010001; // EA,LO* and INC_MICRO activated
end
endmodule

module NANOCODE_DECODER(input [16:0] NANO_ROM_IN , output EP_o , output CP_o , output LM_o , output CE_o , output LI_o , output EI_o , output CS_o , output LA_o , output EA_o , output SU_o , output AD_o , output EU_o , output LB_o , output LO_o , output LOAD_MICRO_o , output CLEAR_MICRO_o , output INC_MICRO_o);
assign EP_o = NANO_ROM_IN[16];
assign CP_o = NANO_ROM_IN[15];
assign LM_o = NANO_ROM_IN[14];
assign CE_o = NANO_ROM_IN[13];
assign LI_o = NANO_ROM_IN[12];
assign EI_o = NANO_ROM_IN[11];
assign CS_o = NANO_ROM_IN[10];
assign LA_o = NANO_ROM_IN[9];
assign EA_o = NANO_ROM_IN[8];
assign SU_o = NANO_ROM_IN[7];
assign AD_o = NANO_ROM_IN[6];
assign EU_o = NANO_ROM_IN[5];
assign LB_o = NANO_ROM_IN[4];
assign LO_o = NANO_ROM_IN[3];
assign LOAD_MICRO_o = NANO_ROM_IN[2];
assign CLEAR_MICRO_o = NANO_ROM_IN[1];
assign INC_MICRO_o = NANO_ROM_IN[0];
endmodule

module ACC(input clk , input [8:0] ACC_IN , input LA , input EA , output [8:0] ACC_ALU , output [8:0] ACC_BUS);
reg[8:0] ACC_r;
assign ACC_ALU = ACC_r;
assign ACC_BUS = EA ? ACC_r : 9'h000;
always@(posedge clk)
begin
if(~LA)
ACC_r <= ACC_IN;
end
endmodule

module BREG(input clk , input [8:0] B_IN , input LB , output [8:0] B_OUT);
reg [8:0] B_OUT_r;
assign B_OUT = B_OUT_r;
always@(posedge clk)
begin
if(~LB)
B_OUT_r <= B_IN;
end
endmodule

module ALU(input[8:0] ALU_A , input[8:0] ALU_B , input SU , input AD , input EU , output[8:0] ALU_OUT);
wire [8:0] ALU_OUT_w;
assign ALU_OUT_w = SU ? ALU_A - ALU_B : AD ? ALU_A + ALU_B : ALU_OUT_w;
assign ALU_OUT = EU ? ALU_OUT_w : 9'h000;
endmodule

module OREG(input clk , input [8:0] O_IN , input LO , output [8:0] O_OUT);
reg [8:0] O_OUT_r;
assign O_OUT = O_OUT_r;
always@(posedge clk)
begin
if(~LO)
O_OUT_r <= O_IN;
end
endmodule


