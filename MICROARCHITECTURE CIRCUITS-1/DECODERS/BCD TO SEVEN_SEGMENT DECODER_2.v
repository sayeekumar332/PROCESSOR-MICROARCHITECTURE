module BCDTOSEVEN2_1(input LT,input BI,input RBI,input D,input C,input B,input A,output [6:0] bcd,output y1,y2,y3,y4,y5,y6,y7,output RBO);
assign RBO = ~BI ? 1'b0 : RBO_r;
reg RBO_r;
reg [6:0] bcd_r;
assign bcd = ~BI ? 7'b1111111 : bcd_r;
assign y1 = bcd[6];
assign y2 = bcd[5];
assign y3  = bcd[4];
assign y4 = bcd[3];
assign y5 = bcd[2];
assign y6 = bcd[1];
assign y7 = bcd[0];
always@(LT or RBI or D or C or B or A)
begin
if(LT)
begin
bcd_r <= (RBI && {D,C,B,A} == 4'b0000) ? 7'b1111110 : (~RBI && {D,C,B,A} == 4'b0000) ? 7'b1111111 : ({D,C,B,A} == 4'b0001) ? 7'b0110000 : ({D,C,B,A} == 4'b0010) ? 7'b1101101 : ({D,C,B,A} == 4'b0011) ? 7'b1111001 : ({D,C,B,A} == 4'b0100) ? 7'b0110011 : ({D,C,B,A} == 4'b0101) ? 7'b1011011 : ({D,C,B,A} == 4'b0110) ? 7'b0011111 : ({D,C,B,A} == 4'b0111) ? 7'b1110000 : 
({D,C,B,A} == 4'b1000) ? 7'b1111111 : ({D,C,B,A} == 4'b1001) ? 7'b1110011 : ({D,C,B,A} == 4'b1010) ? 7'b0001101 : ({D,C,B,A} == 4'b1011) ? 7'b0011001 : ({D,C,B,A} == 4'b1100) ? 7'b0100011 : 
({D,C,B,A} == 4'b1101) ? 7'b1001011 : ({D,C,B,A} == 4'b1110) ? 7'b0001111 : ({D,C,B,A} == 4'b1111) ? 7'b0000000 : 7'b1000001;
RBO_r <= (RBI && {D,C,B,A} == 4'b0000) ? 1'b1 : (~RBI && {D,C,B,A} == 4'b0000) ? 1'b0 : 1'b1;
end
else if(~LT)
begin
bcd_r <= 7'b0000000;
RBO_r <= 1'b1;
end
else
begin
bcd_r <= 7'b1000000;
RBO_r <= 1'bz;
end
end
endmodule
