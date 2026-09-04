`timescale 1ns/1ns
module shift_reg_tb();

reg sys_clk;
reg sys_rst;
reg a;

wire y;

initial begin
    sys_clk = 1'b1;
    sys_rst = 1'b0;
    a = 1'b0;
    #201;
    sys_rst <= 1'b1;
    #100;
    a<=1'b1;
    #100;
    a<=1'b0;
    #100;
    $finish;
end

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, shift_reg_tb);
end

always #10 sys_clk<=~sys_clk;

shift_reg shift_reg_inst(
    .sys_clk(sys_clk),
    .sys_rst(sys_rst),
    .a(a),
    .y(y)
);

endmodule
