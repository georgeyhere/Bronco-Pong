`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2021 12:18:29 PM
// Design Name: 
// Module Name: JSTK_SPI_top
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
// Based off Digilent PmodJSTK_Demo 
//////////////////////////////////////////////////////////////////////////////////


module JSTK_SPI_top(

    input                Clk, 
    input                reset_n,       // Asynchronous active low reset
    input                SPI_start,     // Initiate read/write via SPI
    input [7:0]          Din,           // Command to write to slave
    input                MISO,          // Master In Slave Out 
    
    output wire [39:0]   DOUT,          // Data read from slave
    output wire          MOSI,          // Master Out Slave In
    output wire          SCLK,          // Serial Clock for SPI data transmission
    output wire          Slave_Select_n   // SPI slave select, active low
    );

// ================================================================================
//                       Declare local registers and wires    
// ================================================================================   
    
    wire       Busy;        // indicates SPI_TX_RX is currently executing a data transmission cycle
    wire [7:0] Rx_Data;     // data byte from slave
    wire [7:0] Tx_Data;     // data byte to be sent to slave
    wire       Tx_Rx_Start; // start a read/write


// ================================================================================
//                              Module Instantiation    
// ================================================================================  

        //-----------------------------------------------
	    //    SPI_TX_RX handles the actual read/write
		//-----------------------------------------------
        SPI_TX_RX JSTK1 (
    
        );
    
        //-----------------------------------------------
	    //  	 SPI_CTRL controls SPI Mode 0 Timing
		//-----------------------------------------------
        SPI_CTRL JSTK2(
    
        );
      
endmodule
