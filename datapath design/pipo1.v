`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2025 21:06:43
// Design Name: 
// Module Name: pipo1
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


module pipo1(input clk,load,
input [15:0] din,output reg[15:0] dout);
always@(posedge(clk)) 
if(load) dout<=din;
endmodule
