`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2021 02:35:06 PM
// Design Name: 
// Module Name: poop
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


module poop(
    input wr_clk,          // 100 Mhz clock
    input CounterY,
    
    output reg [3:0] FIFO_din,   // fifo data in
    output wire     write_enable // enables fifo write
    );
    
    always@(posedge Clk) begin
        Local_Counter <= (Local_Counter == 641) ? 1:Counter+1; // update the data being sent to fifo when counter counts up
    end
    
    assign write_enable = (activeArea) ? 0:1;
    
    always@(posedge clk)
        
        case(CounterY)  // external CounterY indicates current row to be sent
            
            1: begin // row 1
                FIF0_datain <= 8'b0;
            end
            
            2: begin  // row 2
                
            end
        
            6: begin    // row 6
                case(Local_Counter) // pixel counter
                
                    1: begin    // pixel 1
                    
                    end
                    
                    2: begin  // pixel 2
                    
                    end
                    
                    default: begin // everything else
                        
                    end
                    
                    
                
                endcase
            end
            
            
            
            
        endcase
    end
    
    
    
    
endmodule
