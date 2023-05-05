`timescale 1ns / 1ps

module n_bit_square(num, result);
    parameter n=4;
    input [n-1:0] num;
    output reg [2*n-1:0] result;
    reg [2*n-1:0] tmp;
    
    always @(*) begin
        tmp = num * num;
        result = tmp;
    end
endmodule
