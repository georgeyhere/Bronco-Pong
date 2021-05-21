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
    
    input [7:0]     SecondsCounter,
    input           Clk_Div,
    
    input [1:0]     LivesCount,
    
    output reg      Welcome_Enable,
    
    output reg      ControlTimer_Enable,
    output reg      Game_Enable,      // enables game modules, collision etc
    output reg      DisplayEnable,
    output reg      GameTimer_Enable, // enables on-screen game timer
    
    output reg      GameTimer_Reset,   // reseets on-screen game timer
    output reg      GameTimer_Pause,
    output reg      ballPosReset,
    output reg      paddlePosReset,
    output reg      LivesCountReset,
    
    output reg      startPrompt_Enable
);

// ===========================================================================
//                    Parameters, Registers, and Wires    
// =========================================================================== 
    reg [1:0] FSM_State;
    reg [1:0] FSM_NextState;
    
    reg vsync_latch0;
    reg vsync_latch1;
    wire VMA_busy_negedge;
    
    reg Clk_Div_latch;
    wire Clk_Div_posedge;
    
    reg [1:0] livesCount_latch;
    wire livesCount_delta;
    
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
    
    // negedge detector
    // used to know when to pulse Game_Enable
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
    
    // delta detector for livesCount
    always@(posedge Clk, posedge Reset) begin
        if(Reset == 1'b1) begin
            livesCount_latch <= 0;        
        end
        else begin
            livesCount_latch <= LivesCount;
        end
    end
    assign livesCount_delta = (livesCount_latch) ^  (LivesCount);
    
    // posedge detector 
    // used to flash the start prompt
    always@(posedge Clk, posedge Reset) begin
        if(Reset == 1'b1) begin
            Clk_Div_latch <= 0;
        end
        else begin
            Clk_Div_latch <= Clk_Div;
        end
    end
    assign Clk_Div_posedge = (~Clk_Div_latch) & (Clk_Div);
    
    
    // Synchronous Process for FSM_State transitions
    always@(posedge Clk, posedge Reset) begin
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
            s0_idle: begin  // Idle state, game will prompt user to press a button to start the game
                FSM_NextState = (startButton == 1) ? s1_game_running:s0_idle;
                ControlTimer_Enable = 1; // ControlTimer is used to blink the prompt
            end
            
            s1_game_running: begin // Game is running, user is playing gaem             
                if (pauseSwitch == 1) begin // if switch is flipped to 'on'
                    FSM_NextState = s2_game_pause;  // go to pause state
                    ControlTimer_Enable = 0; // ControlTimer is disabled in this state
                end
                else if (LivesCount == 2'b0) begin // if lives drop to 0
                    FSM_NextState = s3_game_over; // go to game over state
                    ControlTimer_Enable = 1;    // enable the control timer so that we can stay in the game over state for a certain duration
                end
                else begin
                    ControlTimer_Enable = 0;    
                    FSM_NextState = s1_game_running; // else just keep running the game
                end
            end
           
            s2_game_pause: begin
                ControlTimer_Enable = 0;
                FSM_NextState = (pauseSwitch == 0) ? s1_game_running:s2_game_pause;
            end   
            
            s3_game_over: begin
                ControlTimer_Enable = 1;
                FSM_NextState = ((SecondsCounter == 10) || (startButton == 1) ) ? s0_idle:s3_game_over; // use SecondsCounter from ControlTimer to stay in game over screen for a few seconds
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
            Welcome_Enable <= 1;
            startPrompt_Enable <= 1;
            ballPosReset <= 1;
            paddlePosReset <= 1;
            LivesCountReset <= 1;
            GameTimer_Pause <= 0;
        end
        else begin
            case(FSM_State)
                
                s0_idle: begin 
                    Game_Enable <= 0;       // game logic disabled
                    DisplayEnable <= 1;     // display enabled
                    GameTimer_Enable <= 0;  // on screen timer disabled
                    GameTimer_Reset <= 1;   // on screen timer reset
                    Welcome_Enable <= 1;    // welcome prompt enabled
                    startPrompt_Enable <= (Clk_Div_posedge) ? ~startPrompt_Enable:startPrompt_Enable; // start prompt flashes on and off on Clk_Div from ControlTimer
                    ballPosReset <= 1;      // reset ball position
                    paddlePosReset <= 1;    // reset paddle position
                    LivesCountReset <= 1;   // reset lives counter to 3
                    GameTimer_Pause <= 0;
                end 
                
                s1_game_running: begin
                   Game_Enable <= (VMA_busy_negedge == 1) ? 1:0;    // generates a pulse on Game_Enable once per frame
                   DisplayEnable <= (VMA_busy_negedge == 1) ? 0:1;  // don't enable display while game is enabled
                   GameTimer_Enable <= 1;           // game timer enabled because game is running
                   GameTimer_Reset <= 0;            // 
                   Welcome_Enable <= 0;             // hide the welcome text
                   startPrompt_Enable <= 0;         // hide the start prompt
                   ballPosReset <= (livesCount_delta) ? 1:0;               // dont reset the gameplay elements
                   paddlePosReset <= 0;
                   LivesCountReset <= 0;
                   GameTimer_Pause <= 0;
                end
                
                s2_game_pause: begin
                    Game_Enable <= 0;
                    GameTimer_Enable <= 0;  
                    GameTimer_Reset <= 0;  
                    Welcome_Enable <= 0;
                    startPrompt_Enable <= 0;
                    ballPosReset <= 0;
                    paddlePosReset <= 0;
                    LivesCountReset <= 0;
                    GameTimer_Pause <= 0;
                end
                
                s3_game_over: begin
                    Game_Enable <= 0;
                    GameTimer_Enable <= 1;  
                    GameTimer_Reset <= 0; 
                    Welcome_Enable <= 0;
                    startPrompt_Enable <= 1;
                    ballPosReset <= 0;
                    paddlePosReset <= 0;
                    LivesCountReset <= 0;
                    GameTimer_Pause <= 1;
                end    
            endcase
        end
    end  
    
    
    
    
endmodule
