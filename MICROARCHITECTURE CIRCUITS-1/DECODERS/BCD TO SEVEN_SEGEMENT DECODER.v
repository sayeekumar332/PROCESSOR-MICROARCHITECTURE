module hadd(input LT , input BI , input RBI , input D , input C , input B , input A , output a, output b , output c , output d , output e , output f , output g , output RBO);
assign RBO = ~BI ? 1'b0 : RBO_r;
reg RBO_r;
wire [6:0] bcd_w = ~BI ? 7'b1111111 : bcd_r;
reg [6:0] bcd_r;
assign a = bcd_w[6];
assign b = bcd_w[5];
assign c = bcd_w[4];
assign d = bcd_w[3];
assign e = bcd_w[2];
assign f = bcd_w[1];
assign g = bcd_w[0];
always@(LT or RBI or D or C or B or A)
begin
if(LT)
begin
bcd_r <= (RBI && {D,C,B,A} == 4'b0000) ? 7'b0000001 : (~RBI && {D,C,B,A} == 4'b0000) ? 7'b1111111 : ({D,C,B,A} == 4'b0001) ? 7'b1001111 : ({D,C,B,A} == 4'b0010) ? 7'b0010010 : ({D,C,B,A} == 4'b0011) ? 7'b0000110 : ({D,C,B,A} == 4'b0100) ? 7'b1001100 : ({D,C,B,A} == 4'b0101) ? 7'b0100100 : ({D,C,B,A} == 4'b0110) ? 7'b1100000 : ({D,C,B,A} == 4'b0111) ? 7'b0001111 : 
({D,C,B,A} == 4'b1000) ? 7'b00000000 : ({D,C,B,A} == 4'b1001) ? 7'b0001100 : ({D,C,B,A} == 4'b1010) ? 7'b1110010 : ({D,C,B,A} == 4'b1011) ? 7'b1100110 : ({D,C,B,A} == 4'b1100) ? 7'b1011100 : 
({D,C,B,A} == 4'b1101) ? 7'b0110100 : ({D,C,B,A} == 4'b1110) ? 7'b1110000 : ({D,C,B,A} == 4'b1111) ? 7'b1111111 : 7'b1000001;
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
