
//test branch code
`timescale 1ns/1ps
module stimulus;
reg a;
reg b;
reg c;
reg d;
wire z;

//UNIT UNDER TESTING
comparator uut(
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .z(z)
);

//for input 1,0
initial begin
    $dumpfile("test.vcd");
    $dumpvars(0,stimulus);
    a = 0;
    b = 0;
    c = 0;
    d = 0;

    #20; a = 1;
    b = 1;
    #20 b = 0;
    #20 c = 1;
    #40;
end


//for printing output
initial begin
    $monitor("a = %d, b = %d, c = %d, d = %d, z = %d\n",a,b,c,d,z);
end

endmodule