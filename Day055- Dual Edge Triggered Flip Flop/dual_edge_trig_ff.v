`timescale 1ns / 1ps

module dual_edge_trig_ff(
    input clk, reset, d,
    output q
    );
    reg q1, q2;
    
    assign q = clk ? q1 : q2;
    
    always@ (posedge clk)
        begin
            if(reset) q1<= 1'b0;
            q1 <= d;
        end
    
    always@ (negedge clk)
        begin
            if(reset) q2<= 1'b0;
            q2 <= d; 
        end

endmodule
