`timescale 1ns / 1ps

module test_bench;
reg sel, i;
wire [1:0]y;

demux_1_2 dut(sel, i, y);
initial begin
sel=0; i=0; 
#10;
sel=0; i=1; 
#10;
sel=1; i=0; 
#10;
sel=1; i=1; 
end
initial 
     begin $monitor("sel: %b  i: %b  y[0]: %b  y[1]: %b", sel, i, y[0], y[1]);
     #40 $finish;
     end
endmodule
