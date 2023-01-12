`timescale 1ps/1ps
module test;
reg A;
reg B;
reg C;
reg D;
wire z;

comparator uut(
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .z(z)
);

initial begin
    $dumpfile("test.vcd");
    $dumpvars(0,test);
    A=0;
    B=0;
    C=0;
    D=0;
    #20
    A=1;
    B=1;
    C=0;
    D=0;
    #20
    A=1;
    B=1;
    C=1;
    D=1;
    #40;
end

initial begin
    $monitor("A= %d, B = %d, C = %d, D = %d, z = %d\n",A,B,C,D,z);
end

endmodule
