`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2021 03:11:34 PM
// Design Name: 
// Module Name: TMDS_Encoder
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
// Based on IJARCET Vol 4 Issue 4, April 2015
// https://bit.ly/38gZYOb
//////////////////////////////////////////////////////////////////////////////////


module TMDS_Encoder(
    input             Clk,
    input             Reset_n,
    input             activeArea,
    input       [7:0] Data,
    input       [1:0] Control,
    
    output  reg [9:0] Dout
    );
    
// ===========================================================================
// 			          Parameters, Registers, and Wires
// ===========================================================================
    wire [7:0] Din;           // assign Din to a bus
    
    reg [9:0] Dout_buffer;    // Dout buffer
    reg [8:0] X_Stage1;     // Stores result of Stage 1
    reg [8:0] X_Stage2;     // Stores result of Stage 2
    
    reg [3:0] N1_Din;         // Stores number of 1s in Din
    reg [3:0] N0_Dout;        // Stores number of 0s in Dout
    reg [3:0] N1_Dout;        // Stores number of 1s in Dout
    
    reg signed [7:0] Disp, Disp_next, Disp_temp;    // This has to be a signed register because Disp can be negative

    reg [3:0] onesX, zeroesX; // Stores number of 1s and 0s in Stage 1 result so we don't have to call functions and waste space

// ===========================================================================
//                              Functions  
// ===========================================================================

    function [3:0] N0;              // count the number of 0s in 8-bit input
        input [7:0] bits;           
        integer i;
        begin
            N0 = 0;
            for (i=0; i<8; i=i+1)
                N0 = N0 + ~bits[i];
        end
    endfunction
    
    function [3:0] N1;              // count the number of 1s in 8-bit input
        input [7:0] bits;           
        integer i;
        begin
            N1 = 0;
            for (i=0; i<8; i=i+1)
                N1 = N1 + ~bits[i];
        end
    endfunction

// ===========================================================================
//                              Implementation    
// ===========================================================================     
    assign Din[7:0] = Data[7:0];
    
    initial begin
        Dout <= 0;
        Dout_buffer <= 0;     
        X_Stage1 <= 0;   
        X_Stage2 <= 0;
        N1_Din <= 0;
        N0_Dout <= 0;
        N1_Dout <= 0;
    end
    
    always@(posedge Clk, negedge Reset_n) begin
        if(Reset_n == 1'b0) begin  // resets
            Dout <= 0;
            Dout_buffer <= 0;     
            X_Stage1 <= 0;   
            X_Stage2 <= 0; 
            N1_Din <= 0;
            N0_Dout <= 0;
            N1_Dout <= 0;
        
        end else begin
         
            // Use if-else to create sequentiality
            // Too many checks for case statement
            
            // Start of Stage 1  
            if ( (N1(Din)>4) | ((N1(Din)==4) & (Din[0]==0)) ) begin         // Check0 - True
                X_Stage1[0] = Din[0];                                  
                X_Stage1[1] = Din[1] ^~ X_Stage1[0]; // XNOR the stuff using blocking operators
                X_Stage1[2] = Din[2] ^~ X_Stage1[1];
                X_Stage1[3] = Din[3] ^~ X_Stage1[2];
                X_Stage1[4] = Din[4] ^~ X_Stage1[3];
                X_Stage1[5] = Din[5] ^~ X_Stage1[4];
                X_Stage1[6] = Din[6] ^~ X_Stage1[5];
                X_Stage1[7] = Din[7] ^~ X_Stage1[6];
                X_Stage1[8] = 0;                     // 8th bit is a 0 to indicate XNOR
            end 
            else begin                                                  // Check0 - False
                X_Stage1[0] = Din[0];
                X_Stage1[1] = Din[1] ^ X_Stage1[0];  // XOR the stuff        
                X_Stage1[2] = Din[2] ^ X_Stage1[1];
                X_Stage1[3] = Din[3] ^ X_Stage1[2];
                X_Stage1[4] = Din[4] ^ X_Stage1[3];
                X_Stage1[5] = Din[5] ^ X_Stage1[4];
                X_Stage1[6] = Din[6] ^ X_Stage1[5];
                X_Stage1[7] = Din[7] ^ X_Stage1[6];
                X_Stage1[8] = 1;                     // 8th bit is a 0 to indicate XOR
            end
            // End of Stage 1
            
            // Start of Stage 2                                                                                            
            X_Stage2[8] = X_Stage1[8];    // use blocking operator to preserve sequentiality                                    
            zeroesX = N0(X_Stage1[7:0]);  // get # of 0s in Stage 1 result
            onesX = 3'd7 - zeroesX;       // get # of 1s in Stage 1 result from # of 0s
            //onesX = N1(X_Stage1[7:0]);
            
            case(activeArea)                                                    // Check 1 
                0: begin                                                        // Check 1 - False
                    case(Control)                   // HDMI control signals                    
                        2'b00: begin
                            X_Stage2 <= 10'b1101010100;
                        end
                        2'b01: begin
                            X_Stage2 <= 10'b0010101011;
                        end
                        2'b10: begin
                            X_Stage2 <= 10'b0101010100;
                        end
                        2'b11: begin
                            X_Stage2 <= 10'b1010101011;
                        end
                    endcase
                end
                1: begin                                                        // Check 1 - True
                    if ((Disp == 0) | (onesX==3'd4)) begin                      // Check 2 - True
                        X_Stage2[9] <= ~X_Stage1[8];                                
                        if (X_Stage1[8]==0) begin                               // Check 3 - True
                            X_Stage2[7:0] <= ~X_Stage1[7:0];
                            Disp <= Disp + zeroesX - onesX;
                        end
                        else begin                                              // Check 3 - False
                            X_Stage2[7:0] <= X_Stage1[7:0];
                            Disp <= Disp + onesX + zeroesX;
                        end
                    end
            
                    else if((Disp>0) & (onesX>4) | (Disp<0) & (onesX<4)) begin  // Check 2 - False                                       
                        X_Stage2[9] <= 1;                                       // Check 4 - True
                        X_Stage2[7:0] <= ~X_Stage1[7:0];                    
                        Disp <= (X_Stage1[8]==0) ? (Disp + zeroesX - onesX) : (Disp + zeroesX - onesX + 7'd2);  // Check 5
                    end
                    else begin                                                  // Check 4 - False
                        X_Stage2[9] <= 0;
                        X_Stage2[7:0] <= X_Stage1[7:0];
                        Disp <= (X_Stage1[8]==0) ? (Disp + onesX - zeroesX - 7'd2) : (Disp + onesX - zeroesX);  // Check 6    
                    end      
                end
            endcase
            // End of Stage 2
            
            // Buffer and assign outputs using 2x flip flops
            Dout_buffer[9:0] <= X_Stage2;
            Dout[9:0] <= Dout_buffer;
        end
    
    end
    

endmodule
