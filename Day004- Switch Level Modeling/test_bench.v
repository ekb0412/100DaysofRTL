`timescale 1ns / 1ps

module test_bench;
    reg in;
    wire out;
    not_gate dut(in, out);
    initial in= 1'b0;
    initial forever #50 in = ~in;
    initial #600 $finish;
endmodule
