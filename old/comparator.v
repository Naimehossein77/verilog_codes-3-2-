/*
iverilog -o new comparator.v stimulus.v && vvp new && gtkwave test.vcd &
*/

module comparator (
    input x,
    input y,
    input z
);

wire  x_,y_,p,q;
// not(x_,x);
// not(y_,y);
// and(p,x,y);
// and(q,x_,y_);
// or(z,p,q);
assign z = (!x)&(!y) || x&y;
    
endmodule