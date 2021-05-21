`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2021 04:55:15 PM
// Design Name: 
// Module Name: BP_top
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


module BP_top(
    input           SysClk,
    input           Reset,
    input           startButton,
    input           pauseSwitch,
    
    input           MISO,
    
    output          SS,
    output          SCLK,
    output          MOSI,
    
    output [3:0]    TMDS_P,
    output [3:0]    TMDS_N
    );


// ===========================================================================
//                    Parameters, Registers, and Wires    
// =========================================================================== 
    // DCM
    wire Clk_100MHz;
    wire TMDS_Clk;
    wire PClk;
    
    // HDMI Timing
    wire BRAM_PORTA_0_we;
    
    // GameControl
    wire Display_Enable;
    wire GameEnable;
    wire GameTimer_Enable;
    wire GameTimer_Reset;
    wire Welcome_Enable;
    wire startPrompt_Enable;
    
    
    // Collision
    wire [1:0] LivesCount;
    wire [2:0] Collsion_Out;
    wire       LivesCountReset;
    
    // Ball
    wire [9:0] ballPosX;
    wire [9:0] ballPosY;
    wire       ballPosReset;
    
    // Paddle
    wire [9:0] paddlePosY;
    wire       paddlePosReset;
    
// ===========================================================================
//                                  Implementation    
// ===========================================================================    
    DCM_wrapper CLKGEN(
    .Clk_100MHz_0(Clk_100MHz),  // Buffered 100 MHz clock used for game logic
    .PClk_0(PClk),              // 25 MHz pixel clock for HDMI
    .TMDS_Clk_0(TMDS_Clk),      // 250 MHz HDMI shift register clock
    .reset_0(Reset),            // active-high reset
    .clk_in1_0(SysClk)          // 100 MHz board clock
    );


    GameControl_top UUT0 (
    .Clk_100MHz(Clk_100MHz),            // 100MHz clock
    .Reset(Reset),                      // active-high reset
    .VMA_busy(BRAM_PORTA_0_we),             // from Display_top, used to know when to pulse Game_Enable
    .startButton(startButton),              // FPGA board button1
    .pauseSwitch(pauseSwitch),              // FPGA board sw[0]          
    .LivesCount(LivesCount),                      // LivesCount -> get from collision addon
    .Game_Enable(GameEnable),               // Game_Enable -> pulses once per frame
    .Display_Enable(Display_Enable),        // Display_Enable -> enable for video memory write
    .GameTimer_Enable(GameTimer_Enable),    // enable for on-screen timer
    .GameTimer_Reset(GameTimer_Reset),      // reset for on-screen timer
    .Welcome_Enable(Welcome_Enable),        // enable for on-screen welcome text
    .startPrompt_Enable(startPrompt_Enable), // enable for start button prompt
    .ballPosReset(ballPosReset),
    .paddlePosReset(paddlePosReset),
    .LivesCountReset(LivesCountReset)
    );
    
    /*
    BallCollision UUT2 (
    .XCord(ballPosX), //take in on pos edge
    .YCord(ballPosY),  //take in on pos edge
    .PadTY(paddlePosY),  //take in on pos edge
    .ColSel(Collision_Sel), //internal ingnore
    .ColOut(Collsion_Out), //sent out on neg edge
    .PadBY(PadBY),//internal ingnore
    .Clk(Clk_100MHz)
    );
    */
    
    BallCollision_top UUT1 (
    .Clk_100MHz(Clk_100MHz),
    .Reset(Reset),
    .GameEnable(GameEnable),
    .LivesCountReset(LivesCountReset),
    .paddlePosY(paddlePosY),
    .ballPosX(ballPosX),
    .ballPosY(ballPosY),
    .ColOut(ColOut),
    .ballSpeed(ballSpeed),
    .LivesCount(LivesCount)
    );
    
    JstkPmod_top UUT3 (
    .Clk_100MHz(Clk_100MHz),
    .Reset(Reset),
    .Game_Enable(GameEnable),
    .paddlePosReset(paddlePosReset),
    .MISO(MISO),
    .SS(SS),
    .MOSI(MOSI),
    .SCLK(SCLK),
    .paddlePosY(paddlePosY)
    );
 
 
    Display_top UUT4 (
    .Clk_100MHz(Clk_100MHz),            // 100 MHz clock
    .TMDS_Clk(TMDS_Clk),                // 250 MHz TMDS clock
    .PClk(PClk),                        // 25 MHz pixel clock
    .Reset(Reset),                      // active-high reset
    .LivesCount(LivesCount),    
    .ballPosX(10'd320),   
    .ballPosY(10'd400),   
    .paddlePosY(paddlePosY), 
    .Display_Enable(Display_Enable),
    .GameTimer_Reset(GameTimer_Reset),
    .GameTimer_Enable(GameTimer_Enable),
    .GameEnable(GameEnable),
    .Welcome_Enable(Welcome_Enable),
    .startPrompt_Enable(startPrompt_Enable),
    
    .TMDS_P(TMDS_P),        // HDMI output
    .TMDS_N(TMDS_N),
    .BRAM_PORTA_0_we(BRAM_PORTA_0_we)
    );
    
     
  
endmodule
