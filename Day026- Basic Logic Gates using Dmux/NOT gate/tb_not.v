`timescale 1ns / 1ps

module tb_not;
    reg a;
    wire not_out;
         
    demux_not_gate dut(a, not_out);
    initial begin
            a= 1'b0;
        #10 a= 1'b1;

    end
    initial 
     begin $monitor("a: %b  not: %b ",a, not_out);
     #20 $finish;
     end
endmodule