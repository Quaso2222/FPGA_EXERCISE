`timescale 1ns/1ns

module tb_or_gate();
 reg a;
 reg b;

 wire y;

 initial begin
    a=0;
    b=0;
    #100
    a=0;
    b=1;
    #100
    a=1;
    b=0;
    #100
    a=1;
    b=1;
end

or_gate or_gate_inst(
    .a(a),
    .b(b),
    .y(y)
);
endmodule