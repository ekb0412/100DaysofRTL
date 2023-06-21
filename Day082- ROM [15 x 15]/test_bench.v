`timescale 1ns / 1ps

module test_bench;
reg clk;
reg r_en;
reg [3:0] addr;
wire [15:0] data;
        
rom dut(clk, r_en, addr, data);

initial 
    begin
      clk = 0;
      forever #5 clk <= ~clk;
      end
initial begin      

// Initialize memory
      dut.mem[0] = 16'h0103;
      dut.mem[1] = 16'h5200;
      dut.mem[2] = 16'he0b9;
      dut.mem[3] = 16'h0412;
      dut.mem[4] = 16'h4839;
      dut.mem[5] = 16'h0112;
      dut.mem[6] = 16'h0377;
      dut.mem[7] = 16'h0572;
      dut.mem[8] = 16'hcafe;
      dut.mem[9] = 16'h6225;
      dut.mem[10] = 16'h1447;
      dut.mem[11] = 16'haeec;
      dut.mem[12] = 16'h52dd;
      dut.mem[13] = 16'h1113;
      dut.mem[14] = 16'h4444;
      dut.mem[15] = 16'h5555;
      
// Apply stimulus to address input
      addr = 0;
      r_en =0;
      #10 r_en = 1;
      #10 addr = 1;
      #10 addr = 2;
      #10 addr = 3;
      #10 addr = 4;
      #10 addr = 5;
      #10 addr = 6;
      #10 addr = 7;
      #10 addr = 8;
      #10 addr = 9;
      #10 addr = 10;
      #10 addr = 11;
      #10 addr = 12;
      #10 addr = 13;
      #10 addr = 14;
      #10 addr = 15;

      #10 $finish;
    end

endmodule
