// A bus output can be connected to multiple inputs. But a bus cannot be connected to multiple outputs. This generates 'The GIVEN BUS IS DRIVEN BY MULTIPLE DRIVERS in Xilinx ISE 14.7 Webpack
module M2CPU8(input clk , input rst , output EP , output CP , output[4:0] PC_OUT_o , output [4:0] SRAM_ADDR_o , output LM , output CE_o , output [3:0] IR_1_OUT_o , output [4:0] IR_2_OUT_o, output [8:0] SRAM_OUT , output LI_o , output EI_o , output CS_o , output LOAD_o , output INC_o , output CLR_o , output LA_o , output EA_o , output SU_o , output AD_o , output EU_o , output LB_o , output LO_o , output [8:0]OUT_o , output[4:0] PRE_OUT_o ,output [8:0] ACC_OUT_o , output[8:0] ACC_OUT_bus_o , output [8:0] B_o , output[8:0] ALU_OUT_o , output[8:0] ALU_OUT_bus);
wire [8:0] bus_9 , ACC_MUX_w , bus_9_1 , bus_9_2 , ALU_OUT_w , A_OUT_w , B_OUT_w , OUT_w ;
wire [8:0] ROM_OUT_w;
wire EP_w , CP_w , LM_w ,  CE_w , LI_w, CS_w , LOAD_w , INC_w , CLR_w , LA_w , EA_w ,  SU_w , AD_w , EU_w , LB_w , LO_w; 
wire [4:0] bus_5 , bus_5_1 , PC_OUT_w , SRAM_ADDR_w , MAR_IN_w , AR_OUT_w , PRE_OUT_w ;
wire [3:0] INSTR_w;
assign EP = EP_w;
assign CP = CP_w;
assign LM = LM_w;
assign SRAM_OUT = bus_9;
assign CE_o = CE_w;
assign LI_o = LI_w;
assign EI_o = EI_w;
assign CS_o = CS_w;
assign LOAD_o = LOAD_w;
assign INC_o = INC_w;
assign CLR_o = CLR_w;
assign LA_o = LA_w;
assign EA_o = EA_w;
assign SU_o = SU_w;
assign AD_o = AD_w;
assign EU_o = EU_w;
assign LB_o = LB_w;
assign LO_o = LO_w;
assign OUT_o = OUT_w;
assign PRE_OUT_o = PRE_OUT_w;
assign PC_OUT_o = bus_5;
assign SRAM_ADDR_o = SRAM_ADDR_w;
assign ACC_OUT_o = A_OUT_w;
assign IR_1_OUT_o = INSTR_w;
assign IR_2_OUT_o = bus_5_1;
assign ACC_OUT_bus_o = bus_9_2;
assign ALU_OUT_bus = bus_9_1;
assign ALU_OUT_o = ALU_OUT_w;
assign B_o = B_OUT_w;
PC_4 UUT1(.clk(clk) , .rst(rst) , .EP(EP_w),.CP(CP_w)  , .PC_OUT(bus_5));
MAR_4 UUT2(.clk(clk) , .MAR_IN(bus_5| bus_5_1) ,  .LM(LM_w) , .MAR_OUT(SRAM_ADDR_w));
SRAM_8 UUT3(.SRAM_ADDR(SRAM_ADDR_w) , .CE(CE_w),.SRAM_OUT(bus_9));
IR_8 UUT4(.clk(clk) , .rst(rst), .LI(LI_w) , .EI(EI_w) , .SRAM_IN(bus_9) , .IR_OUT_1(INSTR_w) , .IR_OUT_2(bus_5_1));
ADDR_ROM UUT5 (.INSTR(INSTR_w) , .CS(CS_w) , .AR_OUT(AR_OUT_w));
PRESET_COUNTER UUT6(.clk(clk) , .rst(rst) , .AR_ROM_IN(AR_OUT_w) , .LOAD(LOAD_w) , .INC(INC_w) , .CLR(CLR_w) , .PRE_OUT(PRE_OUT_w));
MICROCODE_ROM UUT7(.PRE_IN(PRE_OUT_w) , .ROM_OUT(ROM_OUT_w));
MICROCODE_DECODER UUT8(.OPCODE(ROM_OUT_w) , .EP_o(EP_w) , .CP_o(CP_w) , .CE_o(CE_w) , .LM_o(LM_w) , .LI_o(LI_w) , .EI_o(EI_w) ,.CS_o(CS_w) , .LOAD_o(LOAD_w) , .INC_o(INC_w) , .CLR_o(CLR_w) , .LA_o(LA_w) , .EA_o(EA_w) , .SU_o(SU_w) , .AD_o(AD_w) , .EU_o(EU_w) , .LB_o(LB_w) , .LO_o(LO_w));
ACC UUT9(.clk(clk) , .LA(LA_w) , .EA(EA_w) , .ACC_IN(bus_9 | bus_9_1) , .ACC_OUT_adder(A_OUT_w) , .ACC_OUT_bus(bus_9_2));
ALU_8  UUT10(.A(A_OUT_w) , .B(B_OUT_w) , .EU(EU_w) , .SU(SU_w), .AD(AD_w) , .ALU_OUT_bus(bus_9_1),.ALU_OUT_o(ALU_OUT_w));
B_REG UUT11(.clk(clk) , .LB(LB_w) , .B_IN(bus_9) , .B_OUT(B_OUT_w));
OUT_REG UUT12(.clk(clk) , .LO(LO_w) , .OUT_IN(bus_9_2) , .OUT_o(OUT_w));
endmodule

module PC_4(input clk , input rst , input EP , input CP ,  output [4:0] PC_OUT);
reg [4:0] PC_r;
assign PC_OUT = EP ? PC_r : 5'h00;
always@(posedge clk or posedge rst)
begin
if(rst)
PC_r <= 5'b00000; // At the positive edge of rst , the 4-bit Program Counter gets reset to 4'b0000 or 4'h0.
else if(CP) // During positive edge of clock , if CP is logic 1 , the 4-bit PC gets incremented by 1.
PC_r <= PC_r + 1'b1;
end
endmodule

module MAR_4(input clk ,input [4:0] MAR_IN ,  input LM , output[4:0] MAR_OUT);
reg [4:0] MAR_r;
assign MAR_OUT = MAR_r;
always@(posedge clk)
begin
if(~LM)// When LM = 0 , the input will be loaded into MAR.
MAR_r <= MAR_IN;
end
endmodule

module SRAM_8(input [4:0] SRAM_ADDR , input CE , output [8:0] SRAM_OUT); // The SRAM follows ASYNCHRONOUS WRITE and ASYNCHRONOUS READ.
reg [8:0] SRAM [15:0]; // SRAM is a memory with 16 memory locations , with each location capable of holding 8-bits of data
assign SRAM_OUT = (~CE) ? SRAM[SRAM_ADDR] : 9'h000; // ASYNCHRONOUS READ.
always@(SRAM_ADDR) // ASYNCHRONOUS WRITE
begin
SRAM[0] <= 9'b000001001; //LDA 09 ; Here LDA is the opcode or instruction and 09 is the SRAM address from where data will be loaded into accumulator.
SRAM[1] <= 9'b000101010; // ADD 0A ; - Add the contents of Accumulator with the contents of memory location 0A and store the result in Accumulator
SRAM[2] <= 9'b001001011; // SUB 0B ;Add the contents of Accumulator that is obtained from previous instruction with the contents of memory location 0B and store the result in Accumulator 
SRAM[3] <= 9'b0011xxxxx; //  OUT ; Subtract the contents of the accumulator 
SRAM[4] <= 9'hFFF; // 
SRAM[5] <= 9'hFFF; // 
SRAM[6] <= 9'hFFF; // Unused memory locations are filled with FF
SRAM[7] <= 9'hFFF; // Unused memory locations are filled with FF
SRAM[8] <= 9'hFFF; // Unused memory locations are filled with FF
SRAM[9] <= 9'h001; //01H is the 8-bit value stored in the location 09
SRAM[10] <= 9'h006; //06H is the 8-bit value stored in the location 0A
SRAM[11] <= 9'h003; //03H is the 8-bit value stored in the location 0B
SRAM[12] <= 9'hFFF;// Unused memory locations are filled with FF
SRAM[13] <= 9'hFFF;// Unused memory locations are filled with FF
SRAM[14] <= 9'hFFF;// Unused memory locations are filled with FF
SRAM[15] <= 9'hFFF;// Unused memory locations are filled with FF
end
endmodule

module IR_8(input clk , input rst , input LI , input EI , input [8:0] SRAM_IN , output [3:0] IR_OUT_1 ,output [4:0] IR_OUT_2);
reg [8:0] IR_8_r;
assign IR_OUT_1 = IR_8_r[8:5];
assign IR_OUT_2 = (~EI) ? IR_8_r[4:0] : 5'h00;
always@(posedge clk or posedge rst)
begin
if(rst)
IR_8_r <= 9'h000;
else if(~LI)
IR_8_r <= SRAM_IN;
end
endmodule

module ADDR_ROM(input [3:0] INSTR , input CS , output [4:0] AR_OUT);// Holds the Micro-routine for a Macro-Instruction fetched from SRAM
reg [4:0] AR_OUT_r[15:0];
assign AR_OUT = AR_OUT_r[INSTR];// Instruction Fetched from IR serves as the address for reading data from Address ROM. The output of Address ROM is the starting address of a Micro-Routine.
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

module PRESET_COUNTER (input clk , input rst , input [4:0] AR_ROM_IN , input LOAD , input INC , input CLR , output [4:0] PRE_OUT); // This is called Microprogram Counter
reg [4:0] PRE_OUT_r;
assign PRE_OUT = PRE_OUT_r;
always@(posedge clk or posedge rst) // Signals separated by "or" in sensitivity list of "always" statement are Asynchronous.
begin
if(rst)
PRE_OUT_r <= 5'h00;
else if(LOAD)
PRE_OUT_r <= AR_ROM_IN;
else if(INC)
PRE_OUT_r <= PRE_OUT_r + 1'b1;
else if(CLR) // Difference between RST and CLR is RST is asynchronous signal[Occurs independent of clock edge] whereas CLR is Synchronous signal[i.e. occurs when a clock edge has occured]
PRE_OUT_r <= 5'h00; 
end
endmodule

module MICROCODE_ROM(input [4:0] PRE_IN , output [8:0] ROM_OUT);
reg [8:0] ROM_OUT_r[19:0];
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
ROM_OUT_r[0] <= 9'b000001010 ;// EP and LM  activated and Preset Counter Incremented
ROM_OUT_r[1] <= 9'b001111010; // CP  activated and Preset Counter Incremented
ROM_OUT_r[2] <= 9'b010000010; // CE and LI activated and Preset Counter Incremented
ROM_OUT_r[3] <= 9'b100111100; // CS and LOAD activated
// LDA Routine
ROM_OUT_r[4] <= 9'b011001010; // EI and LM activated and Preset Counter Incremented 
ROM_OUT_r[5] <= 9'b010100010; // CE and LA activated and Preset Counter Incremented
ROM_OUT_r[6] <= 9'b111111001; // Preset CLR
// ADD Routine
ROM_OUT_r[7] <= 9'b011001010; // EI and LM activated and Preset Counter Incremented 
ROM_OUT_r[8] <= 9'b010010010; // CE and LB activated and Preset Counter Incremented
ROM_OUT_r[9] <= 9'b111110010; // AD activated and Preset Counter Incremented
ROM_OUT_r[10] <= 9'b110100010; // EU and LA activated and Preset Counter Incremented
ROM_OUT_r[11] <= 9'b111111001; // Preset CLR
// SUB Routine
ROM_OUT_r[12] <= 9'b011001010; // EI and LM activated and Preset Counter Incremented 
ROM_OUT_r[13] <= 9'b010010010; // CE and LB activated and Preset Counter Incremented
ROM_OUT_r[14] <= 9'b111101010; // SU activated and Preset Counter Incremented 
ROM_OUT_r[15] <= 9'b110100010; // EU and LA activated and Preset Counter Incremented
 ROM_OUT_r[16] <= 9'b111111001; // Preset CLR. Actually this CPU requires 4-bit Address for SRAM and 5-bit address for Microcode ROM. So that needs to be changed.
// OUT Routine
ROM_OUT_r[17] <= 9'b011001010; // EI and LM activated and Preset Counter Incremented  
ROM_OUT_r[18] <= 9'b101011010; // EA and LO activated and Preset Counter Incremented
ROM_OUT_r[19] <= 9'b111111001; // Preset CLR
end
endmodule

module MICROCODE_DECODER(input [8:0] OPCODE , output EP_o , output CP_o , output LM_o, output CE_o ,output LI_o , output EI_o , output CS_o , output LOAD_o , output INC_o , output CLR_o , output LA_o , output EA_o , output SU_o , output AD_o , output EU_o , output LB_o , output LO_o);
// M1 Decoder
assign EP_o = ~OPCODE[8] & ~OPCODE[7] & ~OPCODE[6]; //0 0 0
assign CP_o = ~OPCODE[8] & ~OPCODE[7] & OPCODE[6]; // 0 0 1
assign CE_o = ~(~OPCODE[8] & OPCODE[7] & ~OPCODE[6]);// 0 1 0
assign EI_o = ~(~OPCODE[8] & OPCODE[7] & OPCODE[6]);// 0 1 1
assign CS_o = OPCODE[8] & ~OPCODE[7] & ~OPCODE[6];// 1 0 0
assign EA_o = OPCODE[8] & ~OPCODE[7] & OPCODE[6]; // 1 0 1
assign EU_o = OPCODE[8] & OPCODE[7] & ~OPCODE[6]; // 1 1 0
// M2 Decoder
assign LI_o = ~(~OPCODE[5] & ~OPCODE[4] & ~OPCODE[3]); // 0 0 0
assign LM_o = ~(~OPCODE[5] & ~OPCODE[4] & OPCODE[3]); // 0 0 1
assign LB_o = ~(~OPCODE[5] & OPCODE[4] & ~OPCODE[3]); // 0 1 0
assign LO_o = ~(~OPCODE[5] & OPCODE[4] & OPCODE[3]); // 0 1 1
assign LA_o = ~(OPCODE[5] & ~OPCODE[4] & ~OPCODE[3]); // 1 0 0
assign SU_o =  OPCODE[5] & ~OPCODE[4] & OPCODE[3]; // 1 0 1
assign AD_o = OPCODE[5] & OPCODE[4] & ~OPCODE[3]; // 1 1 0

assign LOAD_o = OPCODE[2];
assign INC_o = OPCODE[1];
assign CLR_o = OPCODE[0];
endmodule


module ACC(input clk , input LA , input EA , input [8:0] ACC_IN , output [8:0] ACC_OUT_adder , output[8:0] ACC_OUT_bus); // Any component[register or ALU] that interacts with a common data bus , must have ENABLE signal in it. When ENABLE signal is activated , the data stored in the component's register is transferred to the bus. When ENABLE signal is deactivated , the data gets retained within the component's register.
reg [8:0] ACC_OUT_r;
assign ACC_OUT_adder = ACC_OUT_r;
assign ACC_OUT_bus = EA ? ACC_OUT_r : 9'h000;
always @(posedge clk)
begin
if(~LA)
ACC_OUT_r <= ACC_IN;
end
endmodule

module ALU_8(input [8:0] A , input [8:0] B , input EU , input SU , input AD , output [8:0] ALU_OUT_bus , output[8:0] ALU_OUT_o);
wire [8:0] ALU_OUT_w;
assign ALU_OUT_w = SU ? A-B : AD ? A+B : ALU_OUT_w; // Here AD signal added to ADDER. When SU or AU is 0, the ALU_OUT_w will be holding its previous value. This is a change when c
assign ALU_OUT_o = ALU_OUT_w;
assign ALU_OUT_bus = EU ? ALU_OUT_w : 9'h000;
endmodule

module B_REG(input clk , input LB , input [8:0] B_IN , output [8:0] B_OUT);
reg [8:0] B_OUT_r;
assign B_OUT = B_OUT_r;
always@(posedge clk)
begin
if(~LB) // else block added here in order to avoid don't care value. This is a change when compared to hardwired processor
B_OUT_r <= B_IN;
else
B_OUT_r <= 9'h000;
end
endmodule 

module OUT_REG(input clk , input LO , input [8:0] OUT_IN , output [8:0] OUT_o);
reg [8:0] OUT_o_r;
assign OUT_o = OUT_o_r;
always@(posedge clk)
begin
if(~LO) // else block added here in order to avoid don't care value. This is a change when compared to hardwired processor
OUT_o_r <= OUT_IN;
else
OUT_o_r <= 9'h000;
end
endmodule 
