`timescale 1ns / 1ps

module test_bench;
reg [1:0]a,b;
wire [3:0]out;

vedic_mul_2_2 dut(a,b,out);

always begin
    a=2'd2;
    b=2'd1;
    #10;
    a=2'd3;
    b=2'd2;
    #10;
    a=2'd0;
    b=2'd1;
    #10;
    a=2'd3;
    b=2'd1;
    #10;
    a=2'd2;
    b=2'd2;
    #10;
    a=2'd3;
    b=2'd3;
    #10;
    end
    
initial begin
$monitor("%d * %d = %d", a,b,out);
#60 $finish;
end
endmodule
