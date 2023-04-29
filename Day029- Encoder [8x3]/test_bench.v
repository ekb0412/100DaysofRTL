`timescale 1ns / 1ps

module test_bench;
	reg [7:0] in;
	wire [2:0] out;

	encoder_8_3 dut(in, out);
	
	initial
	begin
		#0 in=8'b10000000;
		#10 in=8'b01000000;
		#10 in=8'b00100000;
		#10 in=8'b00010000;
		#10 in=8'b00001000;
		#10 in=8'b00000100;
		#10 in=8'b00000010;
		#10 in=8'b00000001;
		#10 in=8'b00000000;
	end
    initial 
    begin $monitor("in: %b   out: %b ",in, out);
    #90 $finish;
    end
endmodule
