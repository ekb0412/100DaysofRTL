`timescale 1ns / 1ps

module test_bench;
reg [1:0] i;
reg select;
wire y_out;

mux_2_1 dut(i, select, y_out);

always begin
			
			i=$random;
			select=$random;
            #10;
		end
    initial
    begin $monitor("Input Data : %0d  Select Line : %0d Output : %0d ",i, select, y_out);
    #100 $finish;
    end
endmodule
