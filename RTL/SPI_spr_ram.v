module SPI_spr_ram #(
	parameter MEMDEPTH = 256,
	parameter MEMWIDTH = 8,
	parameter ADDR_SIZE = 8
	)(
	input clk, rst_n, SS_n, MOSI,
	output MISO
	);

	wire [9:0] rx_data;
	wire rx_valid;
	wire [7:0] tx_data;
	wire tx_valid;
	/*reg [MEMWIDTH-1:0] ram [MEMDEPTH-1:0];
	wire cs, ns;
	wire [3:0] count;
	assign cs = SPI.cs;
	assign ns = SPI.ns;
	assign count = SPI.count;
	always @(*) ram = spr_RAM.mem;*/

	SPI_Slave SPI(MOSI, SS_n, clk, rst_n, tx_valid, tx_data, MISO, rx_valid, rx_data);
	RAM #(MEMDEPTH, MEMWIDTH, ADDR_SIZE) spr_RAM(clk, rst_n, rx_valid, rx_data, tx_valid, tx_data);
endmodule