`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/04/2021 02:17:02 PM
// Design Name: 
// Module Name: Game_state
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
module Game_state(FPGA_button,collision_data,game_enable, timer_enable,Clk,Reset);
input Clk; //100Mhz
input Reset;
input FPGA_button; //pressing button starts the game
input [1:0] collision_data;

output reg game_enable;
output reg timer_enable;

 reg [1:0] FSM_State;
 reg [1:0] FSM_NextState;

parameter s0_idle = 0;
parameter s1_game_running = 1;
parameter s2_game_pause = 2;
parameter s3_game_over = 3;

initial begin
        FSM_State <= s0_idle;    
    end
    
    // Synchronous Process for FSM_State transitions
    always@(posedge Clk) begin
        if(Reset == 1'b1) begin          // *synchronous* active high reset
            FSM_State <= s0_idle;
        end
        else begin
            FSM_State <= FSM_NextState;
        end
    end
    
    // Combinatorial Process for FSM_NextState transitions
    always@* begin
        case(FSM_State)
            s0_idle: begin

                    FSM_NextState = s1_game_running;
                end
            
            s1_game_running: begin
            
            if (FPGA_button ==1)
            begin
        
                    FSM_NextState = s2_game_pause;
            end
            else if (collision_data == 2'b10)
            begin 
                    FSM_NextState = s3_game_over;
            end
            end
           
            s2_game_pause: begin

                    FSM_NextState = s1_game_running;
            end   
            
            s3_game_over: begin

                    FSM_NextState = s0_idle;
            end 
            
            
            default: begin
                FSM_NextState = s0_idle;
            end     
        endcase
    end
    
    // Synchronous Process to drive outputs
    always@(posedge Clk) begin
        if(Reset == 1'b1) begin
            game_enable <= 0;
            timer_enable <= 0;
        end
        else begin
            case(FSM_State)
               s0_idle: begin 
                  
                   game_enable <= 0;
                    timer_enable <= 0;
                end
                
                s1_game_running: begin
                
                   game_enable <= 1;
                    timer_enable <= 1;
                    
                end
                
                s2_game_pause: begin
                
                    game_enable <= 0;
                     timer_enable <= 0;
                     
                end
                
                s3_game_over: begin
                
                    game_enable <= 0;
                     timer_enable <= 0;
                     
                end
                
            endcase
        end
    
    end
    
endmodule
