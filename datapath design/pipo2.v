`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2025 21:20:57
// Design Name: 
// Module Name: pipo2
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


module pipo2(input clk,clr,load,
input [15:0] din,
output reg [15:0] dout);
always@(posedge(clk))
if(clr) dout<=0;
else if (load) dout<=din;
endmodule
