`timescale 1ns / 1ps

module full_adder(
    input a, b, cin,
    output sout, cout
    );
    
    assign sout = a ^ b ^ cin;
    assign cout = (a&b) | cin&(a^b);
endmodule
