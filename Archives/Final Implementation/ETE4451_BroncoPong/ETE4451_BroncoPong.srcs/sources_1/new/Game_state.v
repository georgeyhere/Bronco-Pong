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
module GameControl (

    input           Clk,        // 100MHz
    input           Reset,
    input           VMA_busy,
    input           startButton, //pressing button starts the game
    input           pauseSwitch,
    
    input           ControlTimer_Done,
    
    input [1:0]     LivesCount,
    
    
    output reg      ControlTimer_Enable,
    output reg      Game_Enable,      // enables game modules, collision etc
    output reg      DisplayEnable,
    output reg      GameTimer_Enable, // enables on-screen game timer
    output reg      GameTimer_Reset   // reseets on-screen game timer
);

// ===========================================================================
//                    Parameters, Registers, and Wires    
// =========================================================================== 
    reg [1:0] FSM_State;
    reg [1:0] FSM_NextState;
    
    reg vsync_latch0;
    reg vsync_latch1;
    wire VMA_busy_negedge;
    
    parameter s0_idle = 0;
    parameter s1_game_running = 1;
    parameter s2_game_pause = 2;
    parameter s3_game_over = 3;
    

// ===========================================================================
//                              Implementation    
// ===========================================================================    
    initial begin
        FSM_State <= s0_idle;    
    end
    
    always@(posedge Clk, posedge Reset) begin
        if(Reset == 1'b1) begin
            vsync_latch0 <= 0;
            vsync_latch1 <= 0;
        end
        else begin
            vsync_latch0 <= VMA_busy;
            vsync_latch1 <= vsync_latch0;
        end
    end
    assign VMA_busy_negedge = (~VMA_busy) & (vsync_latch1);
    
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
                FSM_NextState = (startButton == 1) ? s1_game_running:s0_idle;
                ControlTimer_Enable = 0;
            end
            
            s1_game_running: begin              
                if (pauseSwitch == 1) begin
                    FSM_NextState = s2_game_pause;
                    ControlTimer_Enable = 0;
                end
                else if (LivesCount == 2'b0) begin
                    FSM_NextState = s3_game_over;
                    ControlTimer_Enable = 1;
                end
                else begin
                    ControlTimer_Enable = 0;
                    FSM_NextState = s1_game_running;
                end
            end
           
            s2_game_pause: begin
                ControlTimer_Enable = 0;
                FSM_NextState = (pauseSwitch == 0) ? s1_game_running:s2_game_pause;
            end   
            
            s3_game_over: begin
                ControlTimer_Enable = 1;
                FSM_NextState = (ControlTimer_Done) ? s0_idle:s3_game_over; 
            end 

            default: begin
                FSM_NextState = s0_idle;
            end          
        endcase
    end
    
    // Synchronous Process to drive outputs
    always@(posedge Clk) begin
        if(Reset == 1'b1) begin
            Game_Enable <= 0;
            DisplayEnable <= 1;
            GameTimer_Enable <= 0;
            GameTimer_Reset <= 1;
        end
        else begin
            case(FSM_State)
                s0_idle: begin 
                    Game_Enable <= 0;
                    DisplayEnable <= 1;
                    GameTimer_Enable <= 0;
                    GameTimer_Reset <= 1; 
                end 
                
                s1_game_running: begin
                   Game_Enable <= (VMA_busy_negedge == 1) ? 1:0;
                   DisplayEnable <= (VMA_busy_negedge == 1) ? 0:1;
                   GameTimer_Enable <= 1;   
                   GameTimer_Reset <= 0;
                end
                
                s2_game_pause: begin
                    Game_Enable <= 0;
                    GameTimer_Enable <= 0;  
                    GameTimer_Reset <= 0;  
                end
                
                s3_game_over: begin
                    Game_Enable <= 0;
                    GameTimer_Enable <= 0;  
                    GameTimer_Reset <= 0; 
                end    
            endcase
        end
    end  
   
    
    
endmodule
