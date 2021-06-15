`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2021 16:50:58
// Design Name: 
// Module Name: my_design_tb
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

module sumator_tb();

reg clk_n, clk_p;

reg reset, reset_n;

initial
begin
    reset = 1'b1;
    reset_n = 1'b0;
    #10 reset = 1'b0;
    reset_n = 1'b1;
end
// Clocks stimulus
initial
begin
    clk_n = 1'b0; //set clk to 0
    clk_p = 1'b1;
end
always
begin
    #5 clk_n = ~clk_n; //toggle clk every 5 time units
    clk_p = ~clk_p; //toggle clk every 5 time units
end

sumator_design_wrapper sumator_design_inst (clk_n, clk_p, reset, reset_n);


endmodule