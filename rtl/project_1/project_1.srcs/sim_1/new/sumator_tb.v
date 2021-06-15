`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2021 15:55:17
// Design Name: 
// Module Name: sumator_tb
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
    parameter  M = 6;
    parameter  N = 4;
    
    integer iterator;
    integer i;
    
    reg clock, reset;
    reg clear;
    reg process, ready;
    
    reg[5:0] numb_numbs;
    reg[5:0] numb_bits;
    
    reg[31:0] input_data;
    // generate test numblers
    reg [N-1:0] T [M-1:0];
    
    reg [31:0] output_data;
    
    initial 
    begin
        clear <= 1'b1;
        reset <= 1'b0;
	    clock <= 1'b1;
	    input_data = 0;
	    iterator = 0;
	    process = 0;
	    numb_numbs[0] = 0;
	    numb_numbs[1] = 1;
	    numb_numbs[2] = 1;
	    numb_numbs[3] = 0;
	    numb_numbs[4] = 0;
	    numb_numbs[5] = 0;
	    
	    numb_bits[0] = 0;
	    numb_bits[1] = 0;
	    numb_bits[2] = 1;
	    numb_bits[3] = 0;
	    numb_bits[4] = 0;
	    numb_bits[5] = 0;
	    T[0] = 2;
	    T[1] = 2;
	    T[2] = 2;
	    T[3] = 1;
	    T[4] = 1;
	    T[5] = 1;
    end
    
    integer x = 0;
    
    sumator test(clock, reset, clear, numb_numbs, numb_bits, input_data, process, ready, output_data);
    
    initial
begin
    reset <= 1'b1;
    #5 reset <= 1'b0;
end
	   
    always    
	   #5 clock <= ~clock;
	   
	always @ (posedge clock)
	   begin
	         if(clear == 1'b1) 
	         begin
	               clear <= 1'b0;
	         end
	         else if(iterator < N && reset != 1'b1) 
	         begin 
	               if(ready == 0 && x == 0)
	               begin
                       input_data = 0;
	                   for (i=0; i < M; i=i+1) 
	                   begin
                            input_data = {input_data[31-2:0], T[i][iterator]};
                     end
	                   iterator = iterator + 1; 
	                   x = 1;
	               end
	               else if (x == 1 && ready == 0)
	               begin 
                       process = 1;
	               
	               end 
	               else if (ready == 1)
	               begin
	                   process = 0;
	                   x = 0;
	               end
	         end       
	         else 
	         begin
               iterator = 0;
               clear <= 1'b1;
               x = 0;
	         end
	   end
	   
endmodule