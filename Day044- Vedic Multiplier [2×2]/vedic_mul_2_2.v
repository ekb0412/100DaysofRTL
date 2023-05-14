`timescale 1ns / 1ps

module half_adder(
    input a,b,
    output sum,carry
    );
    assign sum=a^b;
    assign carry=a&b;
endmodule

module vedic_mul_2_2(
    input [1:0] a,b,
    output [3:0] out
    );

    wire [3:0] w;

    and m1(out[0],a[0],b[0]);
    and m2(w[0],a[0],b[1]);
    and m3(w[1],a[1],b[0]);
    and m4(w[2],a[1],b[1]);
    
    half_adder ha1(w[0],w[1],out[1],w[3]);
    half_adder ha2(w[3],w[2],out[2],out[3]);

endmodule
