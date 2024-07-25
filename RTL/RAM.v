module RAM #(
	parameter MEMDEPTH = 256,
	parameter MEMWIDTH = 8,
	parameter ADDR_SIZE = 8
	)(
	input clk, rst_n, rx_valid,
	input [9:0] din,
	output reg tx_valid,
	output reg [MEMWIDTH-1:0] dout
	);

	reg [MEMWIDTH-1:0] mem [MEMDEPTH-1:0];
	reg [ADDR_SIZE-1:0] address;

	wire [MEMWIDTH-1:0] data_in;
	wire [ADDR_SIZE-1:0] addr_in;
	wire rd_en, wr_en, addr_en;

	assign data_in = din[MEMWIDTH-1:0];
	assign addr_in = din[ADDR_SIZE-1:0];
	assign rd_en = (din[9] && din[8])? 1'b1 : 1'b0;
	assign wr_en = (~din[9] && din[8])? 1'b1 : 1'b0;
	assign addr_en = (~din[8])? 1'b1 : 1'b0;

	always @(posedge clk) begin
		if(~rst_n)
			address <= 0;
		else begin
			if(rx_valid) begin
				if(addr_en)
					address <= addr_in;
			end
		end
	end

	always @(posedge clk) begin
		if(~rst_n)
			dout <= 0;
		else begin
			if(rx_valid) begin
				if(wr_en)
					mem[address] <= data_in;
				if(rd_en)
					dout <= mem[address];
			end
		end
	end

	always @(posedge clk) begin
		if(~rst_n)
			tx_valid <= 0;
		else begin
			if (rx_valid) begin
				case(din[9:8])
					2'b00: tx_valid <= 0;
					2'b01: tx_valid <= 0;
					2'b10: tx_valid <= 0;
					2'b11: tx_valid <= 1;
				endcase
			end
		end
	end
endmodule