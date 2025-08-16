`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.08.2025 19:49:04
// Design Name: 
// Module Name: datapath
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


module datapath(input clk,lda,ldb,clrp,ldp,decb,
input [15:0] data_in,
output eqz);
wire [15:0] x,y,z,bout;
pipo1 A(clk,lda,data_in,x);
pipo2 P(clk,clrp,ldp,z,y);
counter B(clk,ldb,decb,data_in,bout);
adder Ad(x,y,z);
EQZ comp(bout,eqz);
endmodule
