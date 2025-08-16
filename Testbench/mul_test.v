`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.08.2025 20:42:55
// Design Name: 
// Module Name: mul_test
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


module mul_test();
reg [15:0] data_in;
reg clk,start;
wire done;
datapath D1(clk,lda,ldb,clrp,ldp,decb,data_in,eqz);
controlpath C1(clk,eqz,start,lda,ldp,clrp,ldb,decb,done);
initial begin 
clk = 0;
#3 start = 1;
#500 $finish;
end
always #5 clk = ~clk;
initial begin 
#17 data_in=17;
#10 data_in=5;
end
initial begin
$monitor ($time," %d %b",D1.y,done);
end


endmodule
