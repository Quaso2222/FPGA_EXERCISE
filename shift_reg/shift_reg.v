`timescale 1ns/1ns
module shift_reg(
    input sys_clk,
    input sys_rst,
    input a,

    output y
);

reg a_reg1;
reg a_reg2;
reg a_reg3;
reg a_reg4;

always@(posedge sys_clk or negedge sys_rst ) begin
    if(!sys_rst) begin
        a_reg1<=0;
        a_reg2<=0;
        a_reg3<=0;
        a_reg4<=0;
    end else begin
        a_reg1<=a;
        a_reg2<=a_reg1;
        a_reg3<=a_reg2;
        a_reg4<=a_reg3;
    end
end

assign y= a_reg4;
endmodule

