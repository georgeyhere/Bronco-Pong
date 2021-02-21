
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: George Yu
// 
// Create Date: 02/19/2021 02:36:53 PM
// Design Name: 
// Module Name: SPI_TX_RX
// Project Name: 
// Target Devices: Zybo Z7-20
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// It may be helpful to start reading from the bottom always block, as that's the one that
// actually controls the timing and behavior of this module. 
//
// Based on Digilent PmodJSTK_Demo 
//////////////////////////////////////////////////////////////////////////////////


module SPI_TX_RX(

    input               Clk,
    input               reset_n,
    input               MISO,
    input       [7:0]   Din,
    input               Tx_Rx_Start,

    output reg  [7:0]   Dout,
    output reg          busy, // module busy, asserted during data transactions, acts as active low valid for SPI_CTRL
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
    localparam s3_Done = 3;
    
    reg [4:0] bit_counter;           // counts number of bits read/written in current cycle
    reg [7:0] read_SR;              // Shift Register used as temp storage for read bytes
    reg [7:0] write_SR;             // Shift Register used as temp storage for write bytes

    reg CE;                         // Clock enable used to generate pulses on SCLK
    
// ================================================================================
//                                  Implementation:
// --------------------------------------------------------------------------------    
//                        1) Write Shift Register (write_SR)
//                         2) Read Shift Register (read_SR)
//                        3) SPI Mode 0 Timing and Behavior 
// ================================================================================      
    assign SCLK = (CE==1'b1) ? Clk:0; // Assign clock enable to SCLK
    assign MOSI = write_SR[7];        // Assign the Master Out Slave In to the last bit of the write shift register
    assign DOUT = read_SR;            // Assign DOUT to read shift register which contains all read bytes
    
    
    //-------------------------------------
	//			 Write Shift Register
	// 	- PMOD reads on rising edges,
	// change output data on falling edges
	// - has different behavior depending on 
	// FSM state of main always block
	//-------------------------------------
    always@ (negedge Clk) begin                     // negedge CLK because the PMOD outputs data on falling edges
        if(reset_n == 1'b0) begin
            write_SR <= 0;
        end
        else begin
            case(FSM_state)  
            
                s0_Idle: begin                      // idle state, no read/write operation initialized or in progress
                    write_SR <= Din; 
                end
                
                s1_Init: begin
                    write_SR <= write_SR;           // init state, still no read/write operation started, but stop updating the data in the SR
                end
                
                s2_TxRx: begin                      // communication state, shift the next bit up on each clock
                    if(CE == 1'b1) write_SR <= {write_SR[6:0], 1'b0}; 
                    else write_SR <= write_SR;    
                end
                
                s3_Done: begin                    // assign state, read/write operation is done so latch the data
                    write_SR <= write_SR;
                end
                
            endcase       
        end
    end 
    
    //-------------------------------------
	//			 Read Shift Register
	// 	- master reads on rising edges,
	// PMOD changes data on falling edges
	// - stores data read from PMOD
	//-------------------------------------
	always@(posedge Clk) begin
	   if(reset_n == 1'b0) begin
	       read_SR <= 8'h0; 
	   end
	   else begin
	       case(FSM_state) 
	           
	           s0_Idle: begin              
	               read_SR <= read_SR;                             // idle state, just hold values 
	           end
	           
	           s1_Init: begin
	               read_SR <= read_SR;                             // init state, nothing's happening yet, hold
	           end
	           
	           s2_TxRx: begin                                      // communication state, time to earn your keep
	               if(CE==1'b1) read_SR <= {read_SR[6:0], MISO};   // shift next bit in from MISO, shift out original MSB ([7])
	               else read_SR <= read_SR;
	           end
	           
	           s3_Done: begin                                    // assigning outputs state, commuinication done, hold
	               read_SR <= read_SR;
	           end
	       endcase
	   end
	end
	
	//------------------------------------------------------------
	//		               SPI Mode 0 FSM
	// - this module controls the state transitions of reg
	//   FSM_state, doesn't touch any of the data tho
	// - both read and write shift registers change states based
	//   on FSM_state
	// - one transmission cycle is 8 bits or one byte exchanged  
	//   between master and PMOD on MISO and MOSI lines
	//------------------------------------------------------------
    always@(negedge Clk) begin
        
        if(reset_n == 1'b0) begin
            CE <= 0;
            busy <= 0;
            bit_counter <= 0;
            FSM_state <= s0_Idle;
        end
        else begin
            case(FSM_state)
                
                s0_Idle: begin      // idle state
                    CE <= 0;
                    busy <= 0;
                    bit_counter <= 0;
                    FSM_state <= (Tx_Rx_Start) ? s1_Init:s0_Idle;
                end
                
                s1_Init: begin      // initialize communication state
                    CE <= 0;
                    bit_counter <= 0;
                    
                    busy <= 1'b1;
                    FSM_state <= s2_TxRx;
                end
                
                s2_TxRx: begin      // communication / data transmission state                                        
                    busy <= 1'b1;
                    
                    bit_counter <= bit_counter + 1'b1;                      // increment bit_counter each time this state runs
                    FSM_state <= (bit_counter == 4'd8) ? s3_Done:s2_TxRx;   // go to s3_Assign once 8 bits read/wrote
                    
                    if(bit_counter >= 4'd8) begin                           // disable SCLK when 8 bits have been cycled, use >= operator for safety?
                        CE <= 1'b0;
                    end
                    else begin
                        CE <= 1'b1;                                         // if less than 8 bits, enable SCLK
                    end
                end
                
                s3_Done: begin      // communication done state, data is being assigned and outputted in SPI_CTRL
                    CE <= 0;
                    busy <= 0;
                    bit_counter <= 0;
                    FSM_state <= s0_Idle;
                end
                
                default: FSM_state <= s0_Idle;
                
            endcase
        end
    end
    
    
    
endmodule
