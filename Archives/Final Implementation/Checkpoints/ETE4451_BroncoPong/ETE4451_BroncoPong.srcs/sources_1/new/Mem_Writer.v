`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2021 02:55:20 PM
// Design Name: 
// Module Name: Mem_Writer
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
module Mem_Writer(
    input             Clk,          // 100MHz clock
    input             Reset,        // sync active high reset
    
    input [3:0]       TimerDigit0,
    input [3:0]       TimerDigit1,
    input [3:0]       TimerDigit2,
    
    input             timer_en,
    input             disp_en,
    input             welcome_en,
    input             startPrompt_en,
    
    input [1:0]       LivesCount_input,
    input [9:0]       ballPosX,
    input [9:0]       ballPosY,
    input [9:0]       paddlePosY,
    
    // From UUT1 Mem_Timing
    input [9:0]       memCounterX,  // these counters control memory write address
    input [9:0]       memCounterY,
    
    // From UUT4 HDMI_Timing
    input [9:0]       CounterX,     // these counters control state transitions
    input [9:0]       CounterY,
    
    output reg        memTiming_en, // enable for memCounters
    
    output reg [18:0] BRAM_address, // VideoBuffer write address
    output reg [0:0]  BRAM_data,    // VideoBuffer write data
    output reg        BRAM_en,      // VideoBuffer Port A enable
    output reg        BRAM_wr_en    // VideoBuffer Port A write enable
    
    );

// ===========================================================================
// 			              Parameters, Registers, and Wires
// ===========================================================================
    
    reg [1:0] FSM_State;
    reg [1:0] FSM_NextState;
    
    // FSM States, one-hot encoding
    localparam s0_INITIALIZE = 2'b01;
    localparam s1_IDLE       = 2'b00;  // default state
    localparam s2_WRITE      = 2'b10;
    
    reg  DigitT_Active; 
    wire DigitT_SegA = ((memCounterX > 1)  && (memCounterX < 5) && (memCounterY > 5)  && (memCounterY < 12));
    wire DigitT_SegB = ((memCounterX == 5) &&                      (memCounterY > 11) && (memCounterY < 34));
    wire DigitT_SegC = ((memCounterX == 5) &&                      (memCounterY > 33) && (memCounterY < 60));
    wire DigitT_SegD = ((memCounterX > 4)  && (memCounterX < 8) && (memCounterY > 5)  && (memCounterY < 12)); //NEXT TO SEG A
    wire DigitT_SegE = ((memCounterX > 3)  && (memCounterX < 5) && (memCounterY > 33) && (memCounterY < 60));
    wire DigitT_SegF = ((memCounterX == 4) &&                      (memCounterY > 11) && (memCounterY < 34));
    wire DigitT_SegG = ((memCounterX == 4) &&                      (memCounterY > 11) && (memCounterY < 34)); //OVERLAP
    
    reg  DigitI_Active; 
    wire DigitI_SegA = ((memCounterX > 9)  && (memCounterX < 13) && (memCounterY > 5)  && (memCounterY < 12));
    wire DigitI_SegB = ((memCounterX > 10) && (memCounterX < 13) && (memCounterY > 11) && (memCounterY < 34));
    wire DigitI_SegC = ((memCounterX > 10) && (memCounterX < 13) && (memCounterY > 33) && (memCounterY < 54));
    wire DigitI_SegD = ((memCounterX > 9)  && (memCounterX < 13) && (memCounterY > 53)  && (memCounterY < 60)); 
    wire DigitI_SegE = ((memCounterX > 9)  && (memCounterX < 11) && (memCounterY > 33) && (memCounterY < 54));
    wire DigitI_SegF = ((memCounterX == 10) &&                      (memCounterY > 11) && (memCounterY < 34));
    wire DigitI_SegG = ((memCounterX > 9)  && (memCounterX < 13) && (memCounterY > 30) && (memCounterY < 37)); //OVERLAP
    
    reg  DigitM_Active; 
    wire DigitM_SegA = ((memCounterX > 14)  && (memCounterX < 18) && (memCounterY > 5)  && (memCounterY < 12));
    wire DigitM_SegB = ((memCounterX == 17) &&                      (memCounterY > 11) && (memCounterY < 34));
    wire DigitM_SegC = ((memCounterX == 17) &&                      (memCounterY > 33) && (memCounterY < 60));
    wire DigitM_SegD = ((memCounterX > 14)  && (memCounterX < 18) && (memCounterY > 5)  && (memCounterY < 12)); //OVERLAP
    wire DigitM_SegE = ((memCounterX > 14)  && (memCounterX < 16) && (memCounterY > 33) && (memCounterY < 60));
    wire DigitM_SegF = ((memCounterX == 15) &&                      (memCounterY > 11) && (memCounterY < 34));
    wire DigitM_SegG = ((memCounterX == 15) &&                      (memCounterY > 11) && (memCounterY < 34)); //OVERLAP
    
    reg  DigitM1_Active; 
    wire DigitM1_SegA = ((memCounterX > 17)  && (memCounterX < 21) && (memCounterY > 5)  && (memCounterY < 12));
    wire DigitM1_SegB = ((memCounterX == 20) &&                      (memCounterY > 11) && (memCounterY < 34));
    wire DigitM1_SegC = ((memCounterX == 20) &&                      (memCounterY > 33) && (memCounterY < 60));
    wire DigitM1_SegD = ((memCounterX > 17)  && (memCounterX < 21) && (memCounterY > 5)  && (memCounterY < 12)); //OVERLAP
    wire DigitM1_SegE = ((memCounterX > 17)  && (memCounterX < 19) && (memCounterY > 33) && (memCounterY < 60));
    wire DigitM1_SegF = ((memCounterX == 18) &&                      (memCounterY > 11) && (memCounterY < 34));
    wire DigitM1_SegG = ((memCounterX == 18) &&                      (memCounterY > 11) && (memCounterY < 34)); //OVERLAP
    
    reg  DigitE_Active; 
    wire DigitE_SegA = ((memCounterX > 22)  && (memCounterX < 26) && (memCounterY > 5)  && (memCounterY < 12)); 
    wire DigitE_SegG = ((memCounterX > 22)  && (memCounterX < 26) && (memCounterY > 30) && (memCounterY < 37));
    wire DigitE_SegB = ((memCounterX == 23) &&                      (memCounterY > 11) && (memCounterY < 34)); //OVERLAP
    wire DigitE_SegC = ((memCounterX == 23) &&                      (memCounterY > 11) && (memCounterY < 34)); //OVERLAP
    wire DigitE_SegD = ((memCounterX > 22)  && (memCounterX < 26) && (memCounterY > 53) && (memCounterY < 60));
    wire DigitE_SegE = ((memCounterX > 22)  && (memCounterX < 24) && (memCounterY > 33) && (memCounterY < 54));
    wire DigitE_SegF = ((memCounterX == 23) &&                      (memCounterY > 11) && (memCounterY < 34));
//    wire DigitE_SegG = ((memCounterX > 22)  && (memCounterX < 26) && (memCounterY > 30) && (memCounterY < 37));
    
    reg  DigitSemiColon_Active; 
    wire DigitSemiColon_SegA = ((memCounterX > 34)  && (memCounterX < 36) && (memCounterY > 17)  && (memCounterY < 24)); 
    wire DigitSemiColon_SegB = ((memCounterX > 34)  && (memCounterX < 36) && (memCounterY > 17)  && (memCounterY < 24)); //OVERLAP
    wire DigitSemiColon_SegC = ((memCounterX > 34)  && (memCounterX < 36) && (memCounterY > 17)  && (memCounterY < 24)); //OVERLAP
    wire DigitSemiColon_SegD = ((memCounterX > 34)  && (memCounterX < 36) && (memCounterY > 42) && (memCounterY < 49));
    wire DigitSemiColon_SegE = ((memCounterX > 34)  && (memCounterX < 36) && (memCounterY > 42) && (memCounterY < 49)); //OVERLAP
    wire DigitSemiColon_SegF = ((memCounterX > 34)  && (memCounterX < 36) && (memCounterY > 42) && (memCounterY < 49)); //OVERLAP
    wire DigitSemiColon_SegG = ((memCounterX > 34)  && (memCounterX < 36) && (memCounterY > 42) && (memCounterY < 49)); //OVERLAP
    
    reg  Digit0_Active; 
    wire Digit0_SegA = ((memCounterX > 29)  && (memCounterX < 33) && (memCounterY > 5)  && (memCounterY < 12)); 
    wire Digit0_SegB = ((memCounterX == 32) &&                      (memCounterY > 11) && (memCounterY < 34));
    wire Digit0_SegC = ((memCounterX == 32) &&                      (memCounterY > 33) && (memCounterY < 54));
    wire Digit0_SegD = ((memCounterX > 29)  && (memCounterX < 33) && (memCounterY > 53) && (memCounterY < 60));
    wire Digit0_SegE = ((memCounterX > 29)  && (memCounterX < 31) && (memCounterY > 33) && (memCounterY < 54));
    wire Digit0_SegF = ((memCounterX == 30) &&                      (memCounterY > 11) && (memCounterY < 34));
    wire Digit0_SegG = ((memCounterX > 29)  && (memCounterX < 33) && (memCounterY > 30) && (memCounterY < 37));
    
    reg  Digit1_Active; 
    wire Digit1_SegA = ((memCounterX > 37)  && (memCounterX < 41) && (memCounterY > 5)  && (memCounterY < 12)); 
    wire Digit1_SegB = ((memCounterX == 40) &&                      (memCounterY > 11) && (memCounterY < 34));
    wire Digit1_SegC = ((memCounterX == 40) &&                      (memCounterY > 33) && (memCounterY < 54));
    wire Digit1_SegD = ((memCounterX > 37)  && (memCounterX < 41) && (memCounterY > 53) && (memCounterY < 60));
    wire Digit1_SegE = ((memCounterX >37)  && (memCounterX < 39) && (memCounterY > 33) && (memCounterY < 54));
    wire Digit1_SegF = ((memCounterX == 38) &&                      (memCounterY > 11) && (memCounterY < 34));
    wire Digit1_SegG = ((memCounterX > 37)  && (memCounterX < 41) && (memCounterY > 30) && (memCounterY < 37));
    
    reg  Digit2_Active; 
    wire Digit2_SegA = ((memCounterX > 42)  && (memCounterX < 46) && (memCounterY > 5)  && (memCounterY < 12)); 
    wire Digit2_SegB = ((memCounterX == 45) &&                      (memCounterY > 11) && (memCounterY < 34));
    wire Digit2_SegC = ((memCounterX == 45) &&                      (memCounterY > 33) && (memCounterY < 54));
    wire Digit2_SegD = ((memCounterX > 42)  && (memCounterX < 46) && (memCounterY > 53) && (memCounterY < 60));
    wire Digit2_SegE = ((memCounterX > 42)  && (memCounterX < 44) && (memCounterY > 33) && (memCounterY < 54));
    wire Digit2_SegF = ((memCounterX == 43) &&                      (memCounterY > 11) && (memCounterY < 34));
    wire Digit2_SegG = ((memCounterX > 42)  && (memCounterX < 46) && (memCounterY > 30) && (memCounterY < 37));

    reg  Live1_Active; 
    wire Live1_SegA = ((memCounterX >= 615) && (memCounterX <= 626) && (memCounterY >= 33) && (memCounterY <= 45));

    reg  Live2_Active; 
    wire Live2_SegA = ((memCounterX >= 597) && (memCounterX <= 608) && (memCounterY >= 33) && (memCounterY <= 45)); 

    reg  Live3_Active; 
    wire Live3_SegA = ((memCounterX > 578)  && (memCounterX < 589) && (memCounterY >= 33)  && (memCounterY <= 45)); 

    reg Lives_Active;
    
    reg GameBorder_Active;
    wire TopBorder = ((memCounterX >= 0) && (memCounterX <= 640) && (memCounterY >= 65) && (memCounterY <= 73));
    wire LeftBorder = ((memCounterX >= 0) && (memCounterX <= 7) && (memCounterY >= 65) && (memCounterY <= 480));
    wire RightBorder = ((memCounterX >= 639) && (memCounterX <= 640) && (memCounterY >= 65) && (memCounterY <= 480));
    wire BottomBorder = ((memCounterX >= 0) && (memCounterX <= 640) && (memCounterY >= 472) && (memCounterY <= 480));
    
    
    reg Game_Active;
    wire Ball = ((memCounterX >= ballPosX) && (memCounterX <= (ballPosX+10'd8)) && (memCounterY >= ballPosY) && (memCounterY <= ballPosY+10'd8));
    wire Paddle = ((memCounterX >= 592) && (memCounterX <= 600) && (memCounterY >= paddlePosY) && (memCounterY <= (paddlePosY+10'd80)));
    
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    reg WelcomeText;
    wire B_Seg0 = ((memCounterX >= 245) && (memCounterY >= 209) && (memCounterX <= 248) && (memCounterY <= 224));
    wire B_Seg1 = ((memCounterX >= 248) && (memCounterY >= 209) && (memCounterX <= 254) && (memCounterY <= 212));
    wire B_Seg2 = ((memCounterX >= 248) && (memCounterY >= 215) && (memCounterX <= 254) && (memCounterY <= 218));
    wire B_Seg3 = ((memCounterX >= 248) && (memCounterY >= 221) && (memCounterX <= 254) && (memCounterY <= 224));
    wire B_Seg4 = ((memCounterX >= 254) && (memCounterY >= 212) && (memCounterX <= 257) && (memCounterY <= 215));
    wire B_Seg5 = ((memCounterX >= 254) && (memCounterY >= 218) && (memCounterX <= 257) && (memCounterY <= 221));
     
    wire R_Seg0 = ((memCounterX >= 260) && (memCounterY >= 209) && (memCounterX <= 263) && (memCounterY <= 224)); 
    wire R_Seg1 = ((memCounterX >= 263) && (memCounterY >= 209) && (memCounterX <= 269) && (memCounterY <= 212)); 
    wire R_Seg2 = ((memCounterX >= 263) && (memCounterY >= 215) && (memCounterX <= 269) && (memCounterY <= 218)); 
    wire R_Seg3 = ((memCounterX >= 266) && (memCounterY >= 218) && (memCounterX <= 269) && (memCounterY <= 221));
    wire R_Seg4 = ((memCounterX >= 269) && (memCounterY >= 221) && (memCounterX <= 272) && (memCounterY <= 224)); 
    wire R_Seg5 = ((memCounterX >= 269) && (memCounterY >= 212) && (memCounterX <= 272) && (memCounterY <= 215));
    
    wire O_Seg0 = ((memCounterX >= 275) && (memCounterY >= 212) && (memCounterX <= 278) && (memCounterY <= 221)); 
    wire O_Seg1 = ((memCounterX >= 284) && (memCounterY >= 212) && (memCounterX <= 287) && (memCounterY <= 221));
    wire O_Seg2 = ((memCounterX >= 278) && (memCounterY >= 209) && (memCounterX <= 284) && (memCounterY <= 212));
    wire O_Seg3 = ((memCounterX >= 278) && (memCounterY >= 221) && (memCounterX <= 284) && (memCounterY <= 224));
    
    wire N_Seg0 = ((memCounterX >= 290) && (memCounterY >= 209) && (memCounterX <= 293) && (memCounterY <= 224));
    wire N_Seg1 = ((memCounterX >= 299) && (memCounterY >= 209) && (memCounterX <= 302) && (memCounterY <= 224));
    wire N_Seg2 = ((memCounterX >= 293) && (memCounterY >= 212) && (memCounterX <= 296) && (memCounterY <= 215));
    wire N_Seg3 = ((memCounterX >= 296) && (memCounterY >= 215) && (memCounterX <= 299) && (memCounterY <= 218));
    
    wire C_Seg0 = ((memCounterX >= 308) && (memCounterY >= 209) && (memCounterX <= 314) && (memCounterY <= 212));
    wire C_Seg1 = ((memCounterX >= 308) && (memCounterY >= 221) && (memCounterX <= 314) && (memCounterY <= 224));
    wire C_Seg2 = ((memCounterX >= 305) && (memCounterY >= 212) && (memCounterX <= 308) && (memCounterY <= 221));
    
    wire O1_Seg0 = ((memCounterX >= 320) && (memCounterY >= 212) && (memCounterX <= 323) && (memCounterY <= 221)); 
    wire O1_Seg1 = ((memCounterX >= 329) && (memCounterY >= 212) && (memCounterX <= 332) && (memCounterY <= 221));
    wire O1_Seg2 = ((memCounterX >= 323) && (memCounterY >= 209) && (memCounterX <= 329) && (memCounterY <= 212));
    wire O1_Seg3 = ((memCounterX >= 323) && (memCounterY >= 221) && (memCounterX <= 329) && (memCounterY <= 224));
    
    wire P_Seg0 = ((memCounterX >= 341) && (memCounterY >= 209) && (memCounterX <= 344) && (memCounterY <= 224)); 
    wire P_Seg1 = ((memCounterX >= 344) && (memCounterY >= 209) && (memCounterX <= 350) && (memCounterY <= 212));
    wire P_Seg2 = ((memCounterX >= 344) && (memCounterY >= 215) && (memCounterX <= 350) && (memCounterY <= 218));
    wire P_Seg3 = ((memCounterX >= 344) && (memCounterY >= 212) && (memCounterX <= 349) && (memCounterY <= 215));
    
    wire O2_Seg0 = ((memCounterX >= 356) && (memCounterY >= 212) && (memCounterX <= 359) && (memCounterY <= 221)); 
    wire O2_Seg1 = ((memCounterX >= 365) && (memCounterY >= 212) && (memCounterX <= 368) && (memCounterY <= 221));
    wire O2_Seg2 = ((memCounterX >= 359) && (memCounterY >= 209) && (memCounterX <= 365) && (memCounterY <= 212));
    wire O2_Seg3 = ((memCounterX >= 359) && (memCounterY >= 221) && (memCounterX <= 365) && (memCounterY <= 224));
    
    wire N1_Seg0 = ((memCounterX >= 371) && (memCounterY >= 209) && (memCounterX <= 374) && (memCounterY <= 224));
    wire N1_Seg1 = ((memCounterX >= 380) && (memCounterY >= 209) && (memCounterX <= 383) && (memCounterY <= 224));
    wire N1_Seg2 = ((memCounterX >= 374) && (memCounterY >= 212) && (memCounterX <= 377) && (memCounterY <= 215));
    wire N1_Seg3 = ((memCounterX >= 377) && (memCounterY >= 215) && (memCounterX <= 380) && (memCounterY <= 218));
    
    wire G_Seg0 = ((memCounterX >= 386) && (memCounterY >= 212) && (memCounterX <= 389) && (memCounterY <= 221));
    wire G_Seg1 = ((memCounterX >= 389) && (memCounterY >= 209) && (memCounterX <= 395) && (memCounterY <= 212));
    wire G_Seg2 = ((memCounterX >= 389) && (memCounterY >= 221) && (memCounterX <= 395) && (memCounterY <= 224));
    wire G_Seg3 = ((memCounterX >= 392) && (memCounterY >= 215) && (memCounterX <= 398) && (memCounterY <= 218));
    wire G_Seg4 = ((memCounterX >= 395) && (memCounterY >= 218) && (memCounterX <= 398) && (memCounterY <= 221));
    ///////////////////////////////////////////////////////////////////////////////////////////////////
    reg startPrompt;
    wire sp_P_seg0 = ((memCounterX >= 293) && (memCounterX <= 295) && (memCounterY >= 239) && (memCounterY <= 239));
    wire sp_P_seg1 = ((memCounterX >= 293) && (memCounterX <= 293) && (memCounterY >= 240) && (memCounterY <= 243));
    wire sp_P_seg2 = ((memCounterX >= 294) && (memCounterX <= 295) && (memCounterY >= 241) && (memCounterY <= 241));
    wire sp_P_seg3 = ((memCounterX == 296) && (memCounterY == 240));
    
    wire sp_R_Seg0 = ((memCounterX >= 298) && (memCounterX <= 298) && (memCounterY >= 239) && (memCounterY <= 243));
    wire sp_R_Seg1 = ((memCounterX >= 299) && (memCounterX <= 300) && (memCounterY == 239));
    wire sp_R_Seg2 = ((memCounterX >= 299) && (memCounterX <= 300) && (memCounterY == 241));
    wire sp_R_Seg3 = ((memCounterX == 301) && (memCounterY == 240));
    wire sp_R_Seg4 = ((memCounterX == 300) && (memCounterY == 242));
    wire sp_R_Seg5 = ((memCounterX == 301) && (memCounterY == 243));
    
    wire sp_E_Seg0 = ((memCounterX == 303) && (memCounterY >= 239) && (memCounterY <= 243));
    wire sp_E_Seg1 = ((memCounterX >= 304) && (memCounterX <= 306) && (memCounterY == 239));
    wire sp_E_Seg2 = ((memCounterX >= 304) && (memCounterX <= 305) && (memCounterY == 241));
    wire sp_E_Seg3 = ((memCounterX >= 304) && (memCounterX <= 306) && (memCounterY == 243));
    
    wire sp_S_Seg0 = ((memCounterX >= 309) && (memCounterX <= 311) && (memCounterY == 239));
    wire sp_S_Seg1 = ((memCounterX == 308) && (memCounterY == 240));
    wire sp_S_Seg2 = ((memCounterX == 311) && (memCounterY == 242));
    wire sp_S_Seg3 = ((memCounterX >= 309) && (memCounterX <= 310) && (memCounterY == 241));
    wire sp_S_Seg4 = ((memCounterX >= 308) && (memCounterX <= 310) && (memCounterY == 243));
    
    wire sp_S1_Seg0 = ((memCounterX >= 314) && (memCounterX <= 316) && (memCounterY == 239));
    wire sp_S1_Seg1 = ((memCounterX == 313) && (memCounterY == 240));
    wire sp_S1_Seg2 = ((memCounterX == 316) && (memCounterY == 242));
    wire sp_S1_Seg3 = ((memCounterX >= 314) && (memCounterX <= 315) && (memCounterY == 241));
    wire sp_S1_Seg4 = ((memCounterX >= 313) && (memCounterX <= 315) && (memCounterY == 243));
    
    wire sp_B_Seg0 = ((memCounterX == 320) && (memCounterY >= 239) && (memCounterY <= 243));
    wire sp_B_Seg1 = ((memCounterX == 323) && (memCounterY == 240));
    wire sp_B_Seg2 = ((memCounterX == 323) && (memCounterY == 242));
    wire sp_B_Seg3 = ((memCounterX >= 321) && (memCounterX <= 322) && (memCounterY == 241));
    wire sp_B_Seg4 = ((memCounterX >= 321) && (memCounterX <= 322) && (memCounterY == 243));
    wire sp_B_Seg5 = ((memCounterX >= 321) && (memCounterX <= 322) && (memCounterY == 239));
    
    wire sp_T_Seg0 = ((memCounterX >= 325) && (memCounterX <= 329) && (memCounterY == 239));
    wire sp_T_Seg1 = ((memCounterX == 327) && (memCounterY >= 240) && (memCounterY <= 243));
    
    wire sp_N_Seg0 = ((memCounterX == 331) && (memCounterY >= 239) && (memCounterY <= 243));
    wire sp_N_Seg1 = ((memCounterX == 332) && (memCounterY == 240));
    wire sp_N_Seg2 = ((memCounterX == 333) && (memCounterY == 241));
    wire sp_N_Seg3 = ((memCounterX == 334) && (memCounterY >= 239) && (memCounterY <= 243));
    
    wire sp_N_1 = ((memCounterX == 337) && (memCounterY >= 239) && (memCounterY <= 243));
    
    
// ===========================================================================
//                              Implementation    
// ===========================================================================
    
    
    initial begin
        FSM_State <= s0_INITIALIZE;
        memTiming_en <= 0;
        BRAM_address <= 0;
        BRAM_data <= 0;
        BRAM_en <= 0;
        BRAM_wr_en <= 0;
    end
    
    always@* begin
       DigitT_Active <= (DigitT_SegA || DigitT_SegD || DigitT_SegB || DigitT_SegC || DigitT_SegE || DigitT_SegF); // T
       DigitI_Active <= (DigitI_SegA || DigitI_SegD || DigitI_SegB || DigitI_SegC || DigitI_SegE || DigitI_SegF); // I
       DigitM_Active <= (DigitM_SegA || DigitM_SegB || DigitM_SegC || DigitM_SegE || DigitM_SegF);                // M
       DigitM1_Active <= (DigitM1_SegA || DigitM1_SegB || DigitM1_SegC || DigitM1_SegE || DigitM1_SegF);          // E
       DigitE_Active <= (DigitE_SegA || DigitE_SegD || DigitE_SegE || DigitE_SegF || DigitE_SegG);                // R
       
       DigitSemiColon_Active <= (DigitSemiColon_SegA || DigitSemiColon_SegD);                                     // :
       
       Live1_Active <= Live1_SegA;
       Live2_Active <= Live2_SegA;
       Live3_Active <= Live3_SegA;
       
       GameBorder_Active <= (TopBorder || LeftBorder || RightBorder || BottomBorder);
       Game_Active <= (Ball || Paddle);
       
       WelcomeText <= (B_Seg0 || B_Seg1 || B_Seg2 || B_Seg3 || B_Seg4 || B_Seg5 ||
                       R_Seg0 || R_Seg1 || R_Seg2 || R_Seg3 || R_Seg4 || R_Seg5 ||
                       O_Seg0 || O_Seg1 || O_Seg2 || O_Seg3 ||
                       N_Seg0 || N_Seg1 || N_Seg2 || N_Seg3 ||
                       C_Seg0 || C_Seg1 || C_Seg2 || 
                       O1_Seg0 || O1_Seg1 || O1_Seg2 || O1_Seg3 ||
                       P_Seg0 || P_Seg1 || P_Seg2 || P_Seg3 ||
                       O2_Seg0 || O2_Seg1 || O2_Seg2 || O2_Seg3 ||
                       N1_Seg0 || N1_Seg1 || N1_Seg2 || N1_Seg3 ||
                       G_Seg0 || G_Seg1 || G_Seg2 || G_Seg3 || G_Seg4) && welcome_en;
    
    /*
       startPrompt <= (sp_P_seg0 || sp_P_seg1 || sp_P_seg2 || sp_P_seg3 ||
                       sp_R_Seg0 || sp_R_Seg1 || sp_R_Seg2 || sp_R_Seg3 || sp_R_Seg4 || sp_R_Seg5 ||
                       sp_E_Seg0 || sp_E_Seg1 || sp_E_Seg2 || sp_E_Seg3 || 
                       sp_S_Seg0 || sp_S_Seg1 || sp_S_Seg2 || sp_S_Seg3 || sp_S_Seg4 ||
                       sp_S1_Seg0 || sp_S1_Seg1 || sp_S1_Seg2 || sp_S1_Seg3 || sp_S1_Seg4 ||
                       sp_B_Seg0 || sp_B_Seg1 || sp_B_Seg2 || sp_B_Seg3 || sp_B_Seg4 || sp_B_Seg5 ||
                       sp_T_Seg0 || sp_T_Seg1 ||
                       sp_N_Seg0 || sp_N_Seg1 || sp_N_Seg2 || sp_N_Seg3 ||
                       sp_N_1) && startPrompt_en;
       
      */                  
    end
    
    
    // Synchronous Process for FSM_State transitions
    always@(posedge Clk) begin            
        if(Reset == 1'b1) begin         // *synchronous* active high reset
            FSM_State <= s0_INITIALIZE;
        end
        else begin
            FSM_State <= FSM_NextState;
        end
    end
    
    // Combinatorial Process for NextState transitions
    // See FSM diagram
    always@* begin
        case(FSM_State)   
            s0_INITIALIZE: begin
                FSM_NextState = s2_WRITE;   // The very first frame will be skipped by FrameGen, go straight to write
            end
          
            s1_IDLE: begin
                if((CounterY == 479) && (CounterX == 640))  
                    FSM_NextState = s2_WRITE;
                else
                    FSM_NextState = s1_IDLE;
            end
            
            s2_WRITE: begin
                if((memCounterY == 10'd479)&&(memCounterX == 10'd639))
                    FSM_NextState = s1_IDLE;
                else
                    FSM_NextState = s2_WRITE;
            end      
            default: begin
                FSM_NextState = s1_IDLE;
            end       
        endcase
    end

    // Synchronous Process to sample the value of TimerDigit0 on rising edge clock
    //segment 1
    always@(posedge Clk) begin
        case(TimerDigit0)
            4'd0: begin
                Digit0_Active <= (Digit0_SegA || Digit0_SegB || Digit0_SegC || Digit0_SegD || Digit0_SegE || Digit0_SegF)&& (timer_en == 1);
            end
            4'd1: begin
                Digit0_Active <= (Digit0_SegB || Digit0_SegC)&& (timer_en == 1);
            end
            4'd2: begin
                Digit0_Active <= (Digit0_SegA || Digit0_SegB || Digit0_SegG || Digit0_SegE || Digit0_SegD)&& (timer_en == 1);
            end
            4'd3: begin
                Digit0_Active <= (Digit0_SegA || Digit0_SegB || Digit0_SegC || Digit0_SegD || Digit0_SegG)&& (timer_en == 1);
            end
            4'd4: begin
                Digit0_Active <= (Digit0_SegF || Digit0_SegG || Digit0_SegB || Digit0_SegC)&& (timer_en == 1);
            end
            4'd5: begin
                Digit0_Active <= (Digit0_SegA || Digit0_SegF || Digit0_SegG || Digit0_SegC || Digit0_SegD)&& (timer_en == 1);
            end
            4'd6: begin
                Digit0_Active <= (Digit0_SegA || Digit0_SegF || Digit0_SegE || Digit0_SegD || Digit0_SegC || Digit0_SegG)&& (timer_en == 1);
            end
            4'd7: begin
                Digit0_Active <= (Digit0_SegA || Digit0_SegB || Digit0_SegC)&& (timer_en == 1);
            end
            4'd8: begin
                Digit0_Active <= (Digit0_SegA || Digit0_SegB || Digit0_SegC || Digit0_SegD || Digit0_SegE || Digit0_SegF || Digit0_SegG)&& (timer_en == 1);
            end
            4'd9: begin
                Digit0_Active <= (Digit0_SegA || Digit0_SegF || Digit0_SegG || Digit0_SegB || Digit0_SegC)&& (timer_en == 1);
            end
            
            default: begin
                Digit0_Active = Digit0_Active && (timer_en == 1);
            end
        endcase
    end
    
    
    //segment 2
    always@(posedge Clk) begin
        case(TimerDigit1)
            4'd0: begin
                Digit1_Active <= (Digit1_SegA || Digit1_SegB || Digit1_SegC || Digit1_SegD || Digit1_SegE || Digit1_SegF)&& (timer_en == 1);
            end
            4'd1: begin
                Digit1_Active <= (Digit1_SegB || Digit1_SegC)&& (timer_en == 1);
            end
            4'd2: begin
                Digit1_Active <= (Digit1_SegA || Digit1_SegB || Digit1_SegG || Digit1_SegE || Digit1_SegD)&& (timer_en == 1);
            end
            4'd3: begin
                Digit1_Active <= (Digit1_SegA || Digit1_SegB || Digit1_SegC || Digit1_SegD || Digit1_SegG)&& (timer_en == 1);
            end
            4'd4: begin
                Digit1_Active <= (Digit1_SegF || Digit1_SegG || Digit1_SegB || Digit1_SegC)&& (timer_en == 1);
            end
            4'd5: begin
                Digit1_Active <= (Digit1_SegA || Digit1_SegF || Digit1_SegG || Digit1_SegC || Digit1_SegD)&& (timer_en == 1);
            end
            4'd6: begin
                Digit1_Active <= (Digit1_SegA || Digit1_SegF || Digit1_SegE || Digit1_SegD || Digit1_SegC || Digit1_SegG)&& (timer_en == 1);
            end
            4'd7: begin
                Digit1_Active <= (Digit1_SegA || Digit1_SegB || Digit1_SegC)&& (timer_en == 1);
            end
            4'd8: begin
                Digit1_Active <= (Digit1_SegA || Digit1_SegB || Digit1_SegC || Digit1_SegD || Digit1_SegE || Digit1_SegF || Digit1_SegG)&& (timer_en == 1);
            end
            4'd9: begin
                Digit1_Active <= (Digit1_SegA || Digit1_SegF || Digit1_SegG || Digit1_SegB || Digit1_SegC)&& (timer_en == 1);
            end
            
            default: begin
                Digit1_Active = Digit1_Active && (timer_en == 1);
            end
        endcase
    end
    
    //segment 3
    
    always@(posedge Clk) begin
        case(TimerDigit2)
            4'd0: begin
                Digit2_Active <= (Digit2_SegA || Digit2_SegB || Digit2_SegC || Digit2_SegD || Digit2_SegE || Digit2_SegF)&& (timer_en == 1);
            end
            4'd1: begin
                Digit2_Active <= (Digit2_SegB || Digit2_SegC)&& (timer_en == 1);
            end
            4'd2: begin
                Digit2_Active <= (Digit2_SegA || Digit2_SegB || Digit2_SegG || Digit2_SegE || Digit2_SegD)&& (timer_en == 1);
            end
            4'd3: begin
                Digit2_Active <= (Digit2_SegA || Digit2_SegB || Digit2_SegC || Digit2_SegD || Digit2_SegG)&& (timer_en == 1);
            end
            4'd4: begin
                Digit2_Active <= (Digit2_SegF || Digit2_SegG || Digit2_SegB || Digit2_SegC)&& (timer_en == 1);
            end
            4'd5: begin
                Digit2_Active <= (Digit2_SegA || Digit2_SegF || Digit2_SegG || Digit2_SegC || Digit2_SegD)&& (timer_en == 1);
            end
            4'd6: begin
                Digit2_Active <= (Digit2_SegA || Digit2_SegF || Digit2_SegE || Digit2_SegD || Digit2_SegC || Digit2_SegG)&& (timer_en == 1);
            end
            4'd7: begin
                Digit2_Active <= (Digit2_SegA || Digit2_SegB || Digit2_SegC)&& (timer_en == 1);
            end
            4'd8: begin
                Digit2_Active <= (Digit2_SegA || Digit2_SegB || Digit2_SegC || Digit2_SegD || Digit2_SegE || Digit2_SegF || Digit2_SegG)&& (timer_en == 1);
            end
            4'd9: begin
                Digit2_Active <= (Digit2_SegA || Digit2_SegF || Digit2_SegG || Digit2_SegB || Digit2_SegC)&& (timer_en == 1);
            end
            
            default: begin
                Digit2_Active = Digit2_Active && (timer_en == 1);
            end
        endcase
    end
    
    // Live 1 
    
     always@(posedge Clk) begin
        case(LivesCount_input)
            2'd3: begin
                Lives_Active <= (Live1_Active || Live2_Active || Live3_Active);
            end
            2'd2: begin
                Lives_Active <= (Live1_Active || Live2_Active);
            end
            2'd1: begin
                Lives_Active <= (Live1_Active);
            end
            2'd0: begin
                Lives_Active <= 0;
            end
            default: begin
               Lives_Active <= Lives_Active;
            end
        endcase
    end
    
    always@(posedge Clk) begin
        startPrompt <= (sp_P_seg0 || sp_P_seg1 || sp_P_seg2 || sp_P_seg3 ||
                       sp_R_Seg0 || sp_R_Seg1 || sp_R_Seg2 || sp_R_Seg3 || sp_R_Seg4 || sp_R_Seg5 ||
                       sp_E_Seg0 || sp_E_Seg1 || sp_E_Seg2 || sp_E_Seg3 || 
                       sp_S_Seg0 || sp_S_Seg1 || sp_S_Seg2 || sp_S_Seg3 || sp_S_Seg4 ||
                       sp_S1_Seg0 || sp_S1_Seg1 || sp_S1_Seg2 || sp_S1_Seg3 || sp_S1_Seg4 ||
                       sp_B_Seg0 || sp_B_Seg1 || sp_B_Seg2 || sp_B_Seg3 || sp_B_Seg4 || sp_B_Seg5 ||
                       sp_T_Seg0 || sp_T_Seg1 ||
                       sp_N_Seg0 || sp_N_Seg1 || sp_N_Seg2 || sp_N_Seg3 ||
                       sp_N_1) && startPrompt_en;
    end
    
    // Synchronous Process to drive outputs
    always@(posedge Clk) begin
        if(Reset == 1'b1) begin
            memTiming_en <= 0;
            BRAM_address <= 0;
            BRAM_data <= 0;
            BRAM_wr_en <= 0;
            BRAM_en <= 0;
        end
        else begin
            case(FSM_State)
                s0_INITIALIZE: begin
                    BRAM_en <= 1;       // keep Port A enabled in all states 
                    memTiming_en <= 0;  
                    BRAM_wr_en <= 1;
                    BRAM_address <= 0;
                    BRAM_data <= 0;
                end
            
                s1_IDLE: begin
                    BRAM_en <= 1;
                    memTiming_en <= 0;
                    BRAM_address <= 0;
                    BRAM_data <= 0;
                    BRAM_wr_en <= 0;
                end
                
                s2_WRITE: begin
                    BRAM_en <= 1;
                    memTiming_en <= 1;
                    BRAM_address <= (memCounterX + memCounterY * 640);
                    BRAM_data <= (Digit0_Active || Digit1_Active || 
                                  Digit2_Active || DigitT_Active || 
                                  DigitI_Active || DigitM_Active || 
                                  DigitM1_Active || DigitE_Active || 
                                  DigitSemiColon_Active || Lives_Active ||
                                  GameBorder_Active || Game_Active ||
                                  WelcomeText || startPrompt) ? 1:0;
                    BRAM_wr_en <= (disp_en == 1) ? 1:0;
                end
                
            endcase
        end
    end
endmodule
