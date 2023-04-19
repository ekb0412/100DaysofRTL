`timescale 1ns / 1ps

module mux_2_1(
    input [1:0] i,
    input sel,
    output y_out    
    );
    assign y_out= sel ? i[1] : i[0];
endmodule

module mux_4_1(
    input [3:0] i,
    input [1:0]select,
    output y_out
    );
    wire [1:0]w;
    
    mux_2_1 m1(i[1:0], select[0], w[0]);
    mux_2_1 m2(i[3:2], select[0], w[1]);
    mux_2_1 m3(w, select[1], y_out);
    
endmodule
