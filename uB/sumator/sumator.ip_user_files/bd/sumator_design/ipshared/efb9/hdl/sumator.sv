

module sumator(clock, reset, clear, numb_numbs, numb_bits, input_data, process, ready, output_data);    
    input clock, reset;
    input clear; 
    input [5:0] numb_numbs;
    input [5:0] numb_bits;
    input process;
    input [31:0] input_data;
    
    output reg ready;
    output reg [31:0] output_data;
    
    reg signed [31:0] input_bit_level;
    reg signed [31:0] tmp;
    integer i;
    integer processDone;
    
always @ (posedge clock)
begin
   if(reset==1'b1)
    begin
        output_data = 0;
        input_bit_level <= 0;
        input_bit_level[0] <= 1;
        ready <= 0;
        processDone = 0;
    end
    else
    begin
        if(clear == 1'b1) 
        begin
            output_data = 0;
            input_bit_level <= 0;
            input_bit_level[0] <= 1;
            ready <= 0;
            processDone = 0;
        end
        else if(process == 1'b1 && processDone == 0) 
        begin
            processDone = 1;
            if (input_bit_level != 0) 
            begin
                tmp = 0;
                for (i=0; i < numb_numbs; i=i+1) 
                begin
                    tmp = tmp + input_data[i];
                end
                  
                output_data <= output_data + (tmp * input_bit_level);
                input_bit_level <= {input_bit_level[31-2:0], 1'b0};
            end
                ready <= 1;
        end 
        else if(process == 1'b0 && processDone == 1)
        begin
            processDone = 0;
            ready = 0;
        end 
    end
    
end
endmodule
