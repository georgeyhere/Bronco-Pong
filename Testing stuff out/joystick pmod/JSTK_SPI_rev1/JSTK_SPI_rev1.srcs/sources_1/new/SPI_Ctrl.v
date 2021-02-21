`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2021 12:34:49 PM
// Design Name: 
// Module Name: SPI_Ctrl
// Project Name: JSTK_SPI_rev1
// Target Devices: 
// Tool Versions: 
// Description: This module controls the timing for sending and receiving data to and from a slave device 
//              under SPI mode 0.                
//              The master device (FPGA) reads data on the Master In Slave Out (MISO) line on rising edges,
//              while the slave (JSTK PMOD) reads commands on the Master Out Slave In line on the falling
//              edge.
//              If SPI_start is asserted, one cycle will send one byte of data to the slave and receive one
//              byte, which will be shifted into register out_reg.
//              Only when five bytes are present in shift register out_reg is Dout is assigned to out_reg. 
//              
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// Based on Digilent PmodJSTK_Demo
//////////////////////////////////////////////////////////////////////////////////


module SPI_CTRL(

    input               Clk,
    input               reset_n,
    input               Busy,
    input       [7:0]   Din,
    input       [7:0]   Rx_Data,
    input               Data_Received,

    output reg  [39:0]  Dout,
    output reg          Slave_Select_n, // Slave Select, active low
    output reg  [7:0]   Tx_Data,
    output reg          Tx_Rx_Start
    );
    
// ================================================================================
//                       Declare local registers and wires    
// ================================================================================   

    parameter transmission_length = 3'd5; // One Joystick transmission is five bytes

    // FSM states
    reg [2:0] FSM_state;
    localparam s0_Idle = 0;
    localparam s1_Init = 1;
    localparam s2_Wait = 2;
    localparam s3_Check = 3;
    localparam s4_Assign = 4;

    reg [2:0] byte_counter;      // counts # of bytes sent/read, should go to 5 max
    reg [39:0] out_reg;         // shift register that stores up to 5 bytes read from slave
    
// ================================================================================
//                                  Implementation    
// ================================================================================  
    
    initial begin
        if(reset_n == 1'b0) begin // resets
            Dout <= 40'h0; 
            out_reg <= 40'h0;
            Slave_Select_n <= 1;
            Tx_Data <= 8'h0;
            Tx_Rx_Start <= 0;
            FSM_state <= 0;
            byte_counter <= 3'd0;
        end
        
        else begin
            case (FSM_state)
                
        //---------------------------------------------------
	    //                 s0_Idle: Idle State:
		//---------------------------------------------------
                s0_Idle: begin
                    Dout <= Dout;                               // keep value of Dout
                    out_reg <= 40'h0;                           // resets
                    Slave_Select_n <= 1;        
                    Tx_Data <= 8'h0;
                    Tx_Rx_Start <= 0;
                    byte_counter <= 3'd0;
                    
                    
                    FSM_state <= (Tx_Rx_Start) ? s1_Init:s0_Idle; // Go to next state on start
                end
                
        //---------------------------------------------------
	    //           s1_Init: Initialize Read/Write:
	    //       select slave, load write command for PMOD
		//---------------------------------------------------      
                s1_Init: begin
                    Dout <= Dout;
                    out_reg <= out_reg;
                    
                    Slave_Select_n <= 0;                        // select PMOD as slave 
                    Tx_Data <= Din;                             // load TX data with command to send
                    Tx_Rx_Start <= 1;                           // Start TX/RX
                    
                    if(Busy == 1'b1) begin                      // if TX_RX module asserts Busy to 1 it means it's sending/receiving a byte
                        FSM_state <= s2_Wait;                   // FSM: go to wait state 
                        byte_counter <= byte_counter + 1;       // increment byte_counter
                    end
                    else begin                                  // if TX_RX module not Busy:
                        FSM_state <= s1_Init;                   // FSM: stay here
                        byte_counter <= byte_counter;
                    end                  
                end
                
          //---------------------------------------------------
	      //     s2_Wait: Wait for TX_RX module to be ready:
	      //---------------------------------------------------       
		        s2_Wait: begin  
                    Dout <= Dout;
                    out_reg <= out_reg;        
                    Tx_Data <= Tx_Data; 
                    byte_counter <= byte_counter;       
                    Slave_Select_n <= 0;                        // select PMOD as slave 
                    
                    Tx_Rx_Start <= 0;                           // bring start low while TX/RX in progress                                
                    FSM_state <= (Busy) ? s3_Check:s2_Wait;     // FSM: go to s3_check when TX/RX is done
                end
           
          //---------------------------------------------------
	      //     s3_Check: Check if current packet is done:
	      //---------------------------------------------------       
	           s3_Check: begin
	               Dout <= Dout;
                   Tx_Data <= Tx_Data; 
                   byte_counter <= byte_counter;       
                   Slave_Select_n <= 0;   
                   Tx_Rx_Start <= 0;
                   
                   out_reg <= {out_reg[31:0], Rx_Data};                     // shift in just read byte
                   FSM_state <= (byte_counter == transmission_length) ? s4_Assign:s1_Init; // If packet is done go to next state to assign outputs 
	           end
	           
	      //---------------------------------------------------
	      //     s4_Assign: Assign Data to Output:
	      //---------------------------------------------------     
	           s4_Assign: begin
	               Tx_Data <= Tx_Data; 
                   byte_counter <= byte_counter; 
                   out_reg <= out_reg;
                   Tx_Rx_Start <= 0;
	           
	               Slave_Select_n <= 1;                              // deselect slave
	               Dout [39:0] <= out_reg [39:0];                    // assign output to the shift register that we loaded with five bytes
	               FSM_state <= (Data_Received == 1'b1) ? s0_Idle:s4_Assign; // go back to idle when external Data_Received signal goes high
	           end
	           
	      //---------------------------------------------------
	      //                   Default:
	      //---------------------------------------------------     
	           default: begin
	               FSM_state <= s0_Idle;
	           end     
	                        
            endcase  
        end
    end
endmodule
