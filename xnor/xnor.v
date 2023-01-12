module comparator(
    input x,
    input y,
    output z
);
wire x_,y_,p,q;
not(x_,x);
not(y_,y);
and(p,x_,y_);
and(q,x,y);
or(z,p,q);

endmodule