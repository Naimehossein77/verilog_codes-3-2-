`timescale  1ps/1ps
module test;
reg [1:0] A;
reg E;
wire [3:0] Y;

decoder2to4 uut(
    .E(E),
    .A(A),
    .Y(Y)
);
initial begin
    $dumpfile("test.vcd");
    $dumpvars(0,test);

    E = 0;
    A[1] = 0;
    A[0] = 0;
    #20
    E = 1;
    #20
    A[1] = 0;
    A[0] = 1;
    #20
    A[1] = 1;
    A[0] = 0;
    #20
    A[1] = 1;
    A[0] = 0;
    #20
    A[1] = 1;
    A[0] = 1;
    #40;
end

initial begin
    $monitor("%d%d%d%d\n",Y[3],Y[2],Y[1],Y[0]);
end

endmodule