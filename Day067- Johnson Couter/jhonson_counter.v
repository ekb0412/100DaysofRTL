`timescale 1ns / 1ps

module jhonson_counter #(parameter N=4)
    (input clk, reset,
    output reg [3:0] counter);

always@(posedge clk)
    begin
        if(reset) 
            counter <= 0; 
        else 
            counter <= {~counter[0], counter[N-1:1]};  
    end 
endmodule
