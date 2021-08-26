module FOURTO10_2_b(input D , input C , input B , input A , output Y0 , output Y1 , output Y2 , output Y3 , output Y4 , output Y5 , output Y6 , output Y7 , output Y8 , output Y9);
assign Y0 = ({D,C,B,A} == 4'b0010) ? 1'b0 : 1'b1;
assign Y1 = ({D,C,B,A} == 4'b0110) ? 1'b0 : 1'b1;
assign Y2 = ({D,C,B,A} == 4'b0111) ? 1'b0 : 1'b1;
assign Y3 = ({D,C,B,A} == 4'b0101) ? 1'b0 : 1'b1;
assign Y4 = ({D,C,B,A} == 4'b0100) ? 1'b0 : 1'b1;
assign Y5 = ({D,C,B,A} == 4'b1100) ? 1'b0 : 1'b1;
assign Y6 = ({D,C,B,A} == 4'b1101) ? 1'b0 : 1'b1;
assign Y7 = ({D,C,B,A} == 4'b1111) ? 1'b0 : 1'b1;
assign Y8 = ({D,C,B,A} == 4'b1110) ? 1'b0 : 1'b1;
assign Y9 = ({D,C,B,A} == 4'b1010) ? 1'b0 : 1'b1;
endmodule
