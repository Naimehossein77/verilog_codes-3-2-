`timescale 1ps/1ps
module test;
reg x;
reg y;
wire z;

comparator uut
(
    .x(x),
    .y(y),
    .z(z)
);

initial begin
    $dumpfile("test.vcd");
    $dumpvars(0,test);
    x=0;
    y=0;
    #20
    x=1;
    y=0;
    #20
    x=0;
    y=1;
    #20
    x=1;
    y=1;
    #40;
end

initial begin
    $monitor("x = %d, y = %d, z = %d",x,y,z);
end


endmodule