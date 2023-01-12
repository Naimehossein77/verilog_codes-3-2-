/*RUN CODE COMMAND:
iverilog -o new new.v && vvp new

GRAPHICAL:
iverilog -o new new.v && vvp new && gtkwave test.vcd &
*/

module  new;
initial begin
     $display("Hello world!");
end
    
endmodule

