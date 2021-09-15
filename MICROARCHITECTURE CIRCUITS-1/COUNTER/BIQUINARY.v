module BI_QUIN_1(input clk , input rst , output QB , output QC , output QD , output QA);
wire Q_w = ~((~QB & ~QD) | (~QC & ~QD));
T_FF UUT1(.clk(clk & ~QD) , .rst(rst) , .T(1'b1) ,.Q(QB));
T_FF UUT2(.clk(QB) , .rst(rst) , .T(1'b1) , .Q(QC));
T_FF UUT3(.clk(clk & Q_w) , .rst(rst) , .T(1'b1) , .Q(QD));
T_FF UUT4(.clk(QD) , .rst(rst) , .T(1'b1) , .Q(QA));
endmodule


module T_FF(input clk , input rst , input T , output Q);
reg Q_r;
assign Q = Q_r;
always @(negedge clk)
begin
if(!rst)
Q_r <= 1'b0;
else if(T)
Q_r <= ~Q_r;
else
Q_r <= Q_r;
end
endmodule
