`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2023 10:02:57 AM
// Design Name: 
// Module Name: tb_shift_reg
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_shift_reg;

        reg d,clk;
        wire q;
        
        shift_reg dut(.clk(clk),.d(d),.q(q));
        
        initial 
        begin
        clk = 0;
        forever #5 clk = ~clk;
        end
        
        initial 
        begin
        d = 1;
        #10;
        d = 0;
        #10;
        d = 1;
        #10;
        d = 0;
        #10;
        end
        
        initial 
        begin
            $monitor("clk = %b,d = %b,q = %b",clk,d,q);
            #100;
            $finish;
        end
endmodule
