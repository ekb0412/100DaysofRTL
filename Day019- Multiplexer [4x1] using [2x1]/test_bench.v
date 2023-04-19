`timescale 1ns / 1ps

module test_bench;
    reg [3:0] i;
    reg [1:0] select;
    wire y_out;
    
    mux_4_1 dut(i, select, y_out);
    always begin
			
			i=$random;
			select=$random;
            #10;
		end
    initial
    begin $monitor("Input Data : %b  Select Line : %b Output : %b ",i, select, y_out);
    #100 $finish;
    end
endmodule
