`timescale 1ns / 1ps

module test_bench;
    reg [2:0]sel;
    reg  i;
    wire y0, y1, y2, y3, y4, y5, y6, y7;
  
    dmux_1_8 demux(sel, i, y0, y1, y2, y3, y4, y5, y6, y7);
    always begin
    sel= $random;
    i= 1'b1;
    #10;
    end
    initial 
     begin $monitor("sel: %b  i: %b  y0 = %0b  y1 = %0b  y2 = %0b  y3 = %0b  y4 = %0b  y5 = %0b  y6 = %0b  y7 = %0b", sel, i, y0, y1, y2, y3, y4, y5, y6, y7);
     #80 $finish;
     end
endmodule
