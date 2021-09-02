module BCDTOSEVEN3_1(input BI , input D , input C , input B , input A , output[6:0] bcd_o , output y1 , output y2 , output y3 , output y4 , output y5 , output y6 , output y7);
reg[6:0] bcd_r;
assign bcd_o = bcd_r;
assign y1 = bcd_r[0];
assign y2 = bcd_r[1];
assign y3 = bcd_r[2];
assign y4 = bcd_r[3];
assign y5 = bcd_r[4];
assign y6 = bcd_r[5];
assign y7 = bcd_r[6];
always@(BI or D or C or B or A)
begin
if(BI)
bcd_r <= ({D,C,B,A}==4'b0000) ? 7'b1111110 : ({D,C,B,A}==4'b0001) ? 7'b0110000 : ({D,C,B,A}==4'b0010) ? 7'b1101101 :({D,C,B,A}==4'b0011) ? 7'b1111001 : ({D,C,B,A}==4'b0100) ? 7'b0110011 : ({D,C,B,A}==4'b0101) ? 7'b1011011: 
({D,C,B,A}==4'b0110) ? 7'b0011111: ({D,C,B,A}==4'b0111) ? 7'b1110000 : ({D,C,B,A}==4'b1000) ? 7'b1111111: ({D,C,B,A}==4'b1001) ? 7'b1110011: ({D,C,B,A}==4'b1010) ? 7'b0001101 : ({D,C,B,A}==4'b1011) ? 7'b0011001 : ({D,C,B,A}==4'b1100) ? 7'b0100011: ({D,C,B,A}==4'b1101) ? 7'b1001011 : ({D,C,B,A}==4'b1110) ? 7'b0001111 :
({D,C,B,A}==4'b1111) ? 7'b0000000 : 7'bzzzzzzz;
else if(~BI)
bcd_r <= 7'b0000000;
end
endmodule
