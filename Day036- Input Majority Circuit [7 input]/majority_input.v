`timescale 1ns / 1ps

module majority_input(
    input [6:0] in, 
    output out
    );

    wire [2:0] test;
    
    assign test[0] = (in[0] & in[1]) | (in[0] & in[2]) | (in[1] & in[2]);
    assign test[1] = (in[3] & in[4]) | (in[3] & in[5]) | (in[4] & in[5]);
    assign test[2] = in[6];
    
    assign out = (test[0]) & (test[1]) | (test[0] & test[2]) | (test[1] & test[2]); 
endmodule
