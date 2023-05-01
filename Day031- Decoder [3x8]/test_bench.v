`timescale 1ns / 1ps

module test_bench;
    reg [2:0] in;
	wire [7:0] out;

	decoder_3_8 dut(in,out);
	initial
	begin
		in=3'b000;
		#10;
	end
	always begin
		#10 in=3'b000;
		#10 in=3'b001;
		#10 in=3'b010;
		#10 in=3'b011;
		#10 in=3'b100;
		#10 in=3'b101;
		#10 in=3'b110;
		#10 in=3'b111;	
	end	
	initial begin
	$monitor("in: %b  out: %b", in, out);
	#90 $finish;
	end
endmodule
