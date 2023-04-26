`timescale 1ns / 1ps

module demux_1_2(
    input sel,
    input i,
    output y0, y1
    );    
    assign {y0,y1} = sel?{1'b0,i}: {i,1'b0};
endmodule

module demux_and_gate(
    input a, b,
    output and_g
    );
    wire w;
    
    demux_1_2 andgate(b, a, w, and_g);
endmodule
