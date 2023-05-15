`timescale 1ns / 1ps

module test_bench;
reg [3:0] a,b;
wire [7:0] out;

vedic_mul_4_4 dut(a,b,out);

always begin
a=$random;
b=$random;
#10;
end

initial begin
$monitor("%d * %d = %d", a,b,out);
#60 $finish;
end
endmodule
