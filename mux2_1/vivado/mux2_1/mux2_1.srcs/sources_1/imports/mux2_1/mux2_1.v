module mux2_1(
    input in1,
    input in2,
    input sel,

    output out
);

assign out = (sel==1'b1)?in1:in2;
endmodule

