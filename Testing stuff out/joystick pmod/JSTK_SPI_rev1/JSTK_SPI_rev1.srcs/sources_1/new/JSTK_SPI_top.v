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

    input                Clk,           // 100 Mhz clock
    input                reset_n,       // Asynchronous active low reset
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
    wire [7:0] Data_Received; // bus from TX_RX to SPI_CTRL for bytes read from slave
    wire       sndRec;      // sample rate clock

// ================================================================================
//                              Module Instantiation    
// ================================================================================  

        //-----------------------------------------------
	    //    SPI_TX_RX handles the actual read/write
		//-----------------------------------------------
        SPI_TX_RX JSTK1 (
        .Clk(Clk),
        .reset_n(reset_n),
        .MISO(MISO),
        .Tx_Rx_Start(Tx_Rx_Start),
        .Din(Tx_Data),
        .Dout(Rx_Data),
        .busy(Busy),
        .MOSI(MOSI),
        .SCLK(SCLK)
        );
    
        //-----------------------------------------------
	    //  	 SPI_CTRL controls SPI Mode 0 Timing
		//-----------------------------------------------
        SPI_CTRL JSTK2(
        .Clk(Clk),
        .reset_n(reset_n),
        .Busy(Busy),
        .Din(Din),
        .Rx_Data(Rx_Data),
        .sndRec(sndRec),
        .Dout(DOUT),
        .Slave_Select_n(Slave_Select_n),
        .Tx_Data(Tx_Data),
        .Tx_Rx_Start(Tx_Rx_Start)
        );
        
        //-----------------------------------------------
	    // PMOD_SCLK_Div generates 66.67 kHz SCLK for TX/RX
	    // SCLK controls the *speed* of data transmission ! ! !
		//-----------------------------------------------
        PMOD_SCLK_Div JSTK3(
        .Clk(Clk),
        .reset_n(reset_n),
        .SCLK(SCLK)
        );
        
        //-----------------------------------------------
	    // PMOD_SAMPLEGen generates 120 Hz pulse for SPI_Ctrl sndRec
	    // SCLK controls the *frequency* of data transmission ! ! !
		//-----------------------------------------------
        PMOD_SampleGen JSTK4(
        .Clk(Clk),
        .reset_n(reset_n),
        .sndRec(sndRec)
        );
          
endmodule
