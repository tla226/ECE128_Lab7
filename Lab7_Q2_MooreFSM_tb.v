`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2024 02:10:08 PM
// Design Name: 
// Module Name: Lab7_Q2_MooreFSM_tb
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


module Lab7_Q2_MooreFSM_tb;
reg P1,P2;
reg clk;
reg reset;

wire z;

Lab7_Q2_MooreFSM uut1(P1,P2,clk,reset,z);

initial begin
clk = 1'b0;
reset = 1'b1;
#15 reset = 1'b0;
end

always #5 clk = ~clk;

initial begin
#10 P1 = 1; P2 = 0;
#10 P1 = 1; P2 = 0;
#10 P1 = 1; P2 = 0;
#10 P1 = 1; P2 = 0;
#10 P1 = 0; P2 = 1;
#10 P1 = 1; P2 = 0;
#10 P1 = 1; P2 = 0;
#10 P1 = 0; P2 = 1;
#10 P1 = 0; P2 = 1;



#10 $finish;
end


endmodule
