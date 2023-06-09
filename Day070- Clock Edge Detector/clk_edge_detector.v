`timescale 1ns / 1ps

module clk_edge_detector(
    input clk, temp_clk,
    output posedge_detect, negedge_detect, dualedge_detect
    );
    
    assign posedge_detect= clk & (~temp_clk);
    assign negedge_detect= (~clk) & temp_clk;
    assign dualedge_detect= clk ^ temp_clk;
endmodule
