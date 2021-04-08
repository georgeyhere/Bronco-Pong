// (c) fpga4fun.com & KNJN LLC 2013

////////////////////////////////////////////////////////////////////////
module HDMI_test(
	input pixclk,  // 25MHz
	input reset,
	output [2:0] TMDSp, TMDSn,
	output TMDSp_clock, TMDSn_clock
);

////////////////////////////////////////////////////////////////////////
reg [9:0] CounterX, CounterY;
reg hSync, vSync, DrawArea;
always @(posedge pixclk) DrawArea <= (CounterX<640) && (CounterY<480);

always @(posedge pixclk) CounterX <= (CounterX==799) ? 0 : CounterX+1;
always @(posedge pixclk) if(CounterX==799) CounterY <= (CounterY==524) ? 0 : CounterY+1;

always @(posedge pixclk) hSync <= (CounterX>=656) && (CounterX<752);
always @(posedge pixclk) vSync <= (CounterY>=490) && (CounterY<492);

////////////////
wire [7:0] W = {8{CounterX[7:0]==CounterY[7:0]}};
wire [7:0] A = {8{CounterX[7:5]==3'h2 && CounterY[7:5]==3'h2}};
reg [7:0] red, green, blue;
always @(posedge pixclk) red <= ({CounterX[5:0] & {6{CounterY[4:3]==~CounterX[4:3]}}, 2'b00} | W) & ~A;
always @(posedge pixclk) green <= (CounterX[7:0] & {8{CounterY[6]}} | W) & ~A;
always @(posedge pixclk) blue <= CounterY[7:0] | W | A;

////////////////////////////////////////////////////////////////////////
wire [9:0] TMDS_red, TMDS_green, TMDS_blue;


////////////////////////////////////////////////////////////////////////
wire clk_TMDS, DCM_TMDS_CLKFX;  // 25MHz x 10 = 250MHz

DCM_SP #(
.CLKFX_MULTIPLY(10)) DCM_TMDS_inst(.CLKIN(pixclk), 
.CLKFX(DCM_TMDS_CLKFX), 
.RST(1'b0)
);

BUFG BUFG_TMDSp(
.I(DCM_TMDS_CLKFX), 
.O(clk_TMDS)
);

////////////////////////////////////////////////////////////////////////
reg [3:0] TMDS_mod10=0;  // modulus 10 counter
reg [9:0] TMDS_shift_red=0, TMDS_shift_green=0, TMDS_shift_blue=0;
reg TMDS_shift_load=0;
always @(posedge clk_TMDS) TMDS_shift_load <= (TMDS_mod10==4'd9);

always @(posedge clk_TMDS)
begin
	TMDS_shift_red   <= TMDS_shift_load ? TMDS_red   : TMDS_shift_red  [9:1];
	TMDS_shift_green <= TMDS_shift_load ? TMDS_green : TMDS_shift_green[9:1];
	TMDS_shift_blue  <= TMDS_shift_load ? TMDS_blue  : TMDS_shift_blue [9:1];	
	TMDS_mod10 <= (TMDS_mod10==4'd9) ? 4'd0 : TMDS_mod10+4'd1;
end

OBUFDS OBUFDS_red  (
.I
(TMDS_shift_red  [0]), 
.O(TMDSp[2]), 
.OB(TMDSn[2])
);

OBUFDS OBUFDS_green(
.I(TMDS_shift_green[0]), 
.O(TMDSp[1]), 
.OB(TMDSn[1])
);

OBUFDS OBUFDS_blue (
.I(TMDS_shift_blue [0]), 
.O(TMDSp[0]), 
.OB(TMDSn[0])
);

OBUFDS OBUFDS_clock(
.I(pixclk), 
.O(TMDSp_clock), 
.OB(TMDSn_clock)
);

endmodule



