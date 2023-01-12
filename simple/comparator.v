module comparator(
    input A,
    input B,
    input C,
    input D,
    output z
);
wire p,q;

and(p,A,C);
and(q,B,D);
or(z,p,q);

endmodule