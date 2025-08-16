`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2025 21:24:36
// Design Name: 
// Module Name: counter
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


module counter(input clk,load,dec,
input [15:0] din,
output reg [15:0] dout);
always@(posedge(clk)) begin
if(load) dout <= din;
else if(dec) dout<= dout-1;
end

endmodule
