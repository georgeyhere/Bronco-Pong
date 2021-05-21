`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/11/2021 08:22:32 PM
// Design Name: 
// Module Name: BallPosition
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


module BallPosition(
    output reg [9:0] ball_x,
    output reg [9:0] ball_y,
    
    input       clk,
    input       Reset,
    input       game_enable,
    input       ballPosReset,
    input [9:0] ball_speed,
    input [2:0] col,
    
    input [9:0] paddlePosY
    );
    
    reg ball_dirX;  // 
	reg ball_dirY;
	
	initial begin
        ball_dirX <= 0;
        ball_dirY <= 0;
        ball_x <= 320;
        ball_y <= 400;
       
	end
    
    //sets the ball at start of game in center of screen
    always@(posedge clk) begin
        if (ballPosReset==1 || Reset==1) begin
			ball_x <= 320;
			ball_y <= 400;
			ball_dirX <= 0;
			ball_dirY <= 0;
		end
        
        else begin
            if(game_enable == 1) begin 
                if ( col == 1 ) begin  // paddle col, invert x and y
				    ball_dirX <= 0;
				    ball_dirY <= ball_dirY;		    
				end
				
				else if ( col == 4 ) begin //net col, reset ball postion
				    ball_dirX <= ball_dirX;
				    ball_dirY <= ball_dirY;
				end
				
				else if (col == 2) begin // floor col, same x and invert y
				    ball_dirX <= ball_dirX;
				    ball_dirY <= 0;		    
				end
				
				else if(col == 3) begin // ceiling col
				    ball_dirX <= ball_dirX;
				    ball_dirY <= 1;
				end
				
				else if (col == 5) begin // wall col, invert x and same y
				    ball_dirX <= 1;
				    ball_dirY <= ball_dirY;
				    
				end
				else begin
				    ball_dirX <= ball_dirX;
				    ball_dirY <= ball_dirY; 	    
				end
				ball_x <= (ball_dirX) ? (ball_x + ball_speed) : (ball_x - ball_speed);
				ball_y <= (ball_dirY) ? (ball_y + ball_speed) : (ball_y - ball_speed);
			end
            
            else begin
                ball_dirX <= ball_dirX;
                ball_dirY <= ball_dirY;
                ball_x <= ball_x;
                ball_y <= ball_y;
            end 
            
        end
    end
    
   
endmodule
