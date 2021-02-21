`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2021 02:36:53 PM
// Design Name: 
// Module Name: SPI_TX_RX
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
// Based on Digilent PmodJSTK_Demo 
//////////////////////////////////////////////////////////////////////////////////


module SPI_TX_RX(

    input               Clk,
    input               reset_n,
    input               MISO,
    input       [7:0]   Din,
    input               Tx_Rx_Start,

    output reg  [7:0]   Dout,
    output wire         busy, // module busy, asserted during data transactions
    output wire         MOSI, // Master Out Slave In
    output wire         SCLK  // Serial clock output
    );
    
// ================================================================================
//                       Declare local registers and wires    
// ================================================================================       
    
    // FSM States
    reg [2:0] FSM_state;
    localparam s0_Idle = 0;
    localparam s1_Init = 1;
    localparam s2_TxRx = 2;
    localparam s3_Assign = 3;
    
    reg [4:0] bitcounter;           // counts number of bits read/written in current cycle
    reg [7:0] read_SR;              // Shift Register used as temp storage for read bytes
    reg [7:0] write_SR;             // Shift Register used as temp storage for write bytes

    reg CE;                         // Clock enable used to generate pulses on SCLK
// ================================================================================
//                                  Implementation    
// ================================================================================      
    
    assign SCLK = (CE) ? Clk:0;
    
    
endmodule
