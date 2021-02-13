module LG_1_tb();
reg a;
reg b;
wire y;
LG_1 UUT(.a(a) , .b(b) , .y(y));
initial
begin
// One or More Inputs is Low//
#100;
a = 0;
b = 0;

#100;
a = 0;
b = 1;

#100;
a = 1;
b = 0;

// All Inputs High
#100;
a = 1;
b = 1;

end
endmodule
