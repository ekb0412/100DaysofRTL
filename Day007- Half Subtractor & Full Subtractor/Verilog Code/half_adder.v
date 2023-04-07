`timescale 1ns / 1ps

module half_adder(
    input a, b,
    output sout, cout
    );
    
    assign sout = a^b;
    assign cout = a&b;
    
endmodule
