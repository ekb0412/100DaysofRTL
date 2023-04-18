`timescale 1ns / 1ps

module mux_2_1(
    input [1:0] i,
    input select,
    output y_out    
    );
    assign y_out= select ? i[1] : i[0];
endmodule
