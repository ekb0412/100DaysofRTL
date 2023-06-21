`timescale 1ns / 1ps

module rom(
    input clk, r_en,
    input [3:0] addr,
    output reg [15:0] data);
    
    reg [15:0] mem [15:0];

    always@(posedge clk) begin
        if(r_en)
            data <= mem[addr];
        else
            data <= 'bz;
    end
endmodule
