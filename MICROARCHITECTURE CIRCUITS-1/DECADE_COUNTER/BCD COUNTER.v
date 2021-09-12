module DEC_COUNT_1(input clk , input rst , output QA , output QB , output QC , output QD);
wire Q_w = QA & ~((~QB & ~QD) | (~QC & ~QD));
T_FF UUT1(.clk(clk) , .rst(rst) , .T(1'b1) , .Q(QA));
T_FF UUT2(.clk(QA & ~QD) , .rst(rst) , .T(1'b1) , .Q(QB));
T_FF UUT3(.clk(QB) , .rst(rst) , .T(1'b1) , .Q(QC));
T_FF UUT4(.clk(Q_w),.rst(rst),.T(1'b1),.Q(QD));
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
