`timescale 1ns / 1ps

module test_bench;
parameter n=4;
reg [n-1:0]num;
wire [2*n-1:0]result;
n_bit_square dut(num, result);
always begin
			num=$random;
            #10;
		end
    initial
    begin $monitor("%d^2 = %0d ",num, result);
    #80 $finish;
    end
endmodule
