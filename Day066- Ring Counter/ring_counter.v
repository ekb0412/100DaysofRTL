`timescale 1ns / 1ps

module ring_counter #(parameter N=4)
    (input clk, reset,
    output reg [N-1:0] counter );

always @(posedge clk) 
    begin
    
    if (reset) 
        counter <= 1;
     
    else 
        counter <= {counter[0], counter[N-1:1]};
    
    end
endmodule
