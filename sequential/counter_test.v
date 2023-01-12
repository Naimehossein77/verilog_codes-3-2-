`timescale 1ns/1ns
module counter_tb;
reg clk;
reg reset;
wire [6:0] q;
counter counter_circuit1
(clk, reset, q);
always begin
clk = ~clk;
#10;
end
initial begin
 $dumpfile("test.vcd");
 $dumpvars(0, counter_tb);
clk <= 0;
reset <= 1;
#10;
reset <= 0;
#10;
#10;
#10;
#10;
$finish;
end
initial begin
$monitor("clk = %b,
reset = %b, q = %b",
clk, reset, q);
end
endmodule