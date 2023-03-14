`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/14 09:40:33
// Design Name: 
// Module Name: Top_mudule
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


module update_module(
      input sys_clk,
      input n_reset,
      output reg[3:0]  LED
    );
    
parameter  Value_500ms = 25_000_00; 

integer cnt; 
always@(posedge sys_clk or negedge n_reset)
begin
     if(!n_reset)
         LED <= 4'b1110;
      else if(cnt ==Value_500ms )
              begin
                 LED <= {LED[2:0],LED[3]};
                 cnt <= 0;
              end
              else 
                 cnt <= cnt+1'b1;
end
endmodule