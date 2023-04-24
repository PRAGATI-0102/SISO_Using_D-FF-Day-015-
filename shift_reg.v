`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2023 09:55:35 AM
// Design Name: 
// Module Name: shift_reg
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


module shift_reg(clk,d,q);

        input d,clk;
        output q;
        wire q1,q2,q3;
        
        d_ff F1(clk,d,q1);
        d_ff F2(clk,q1,q2);
        d_ff F3(clk,q2,q3);
        d_ff F4(clk,q3,q);
      
endmodule
