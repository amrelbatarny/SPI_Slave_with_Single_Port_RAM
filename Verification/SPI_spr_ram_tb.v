module SPI_spr_ram_tb#(
	parameter MEMDEPTH = 256,
	parameter MEMWIDTH = 8,
	parameter ADDR_SIZE = 8
	)();

	reg clk, rst_n, SS_n, MOSI;
	wire MISO;

	SPI_spr_ram #(MEMDEPTH, MEMWIDTH, ADDR_SIZE) DUT(clk, rst_n, SS_n, MOSI, MISO);

	initial begin
		clk = 0;
		forever
			#10 clk = ~clk;
	end

	initial begin
		$readmemh("mem.dat", DUT.spr_RAM.mem);
		rst_n = 0;
		SS_n = 1;
		repeat(2) @(negedge clk);
		rst_n = 1;

		//WRITE State(cs = 2)
		SS_n = 0;
		@(negedge clk);
		MOSI = 0;
		@(negedge clk);
		MOSI = 0;
		@(negedge clk);
		MOSI = 0;
		@(negedge clk);
		repeat(7) begin
			MOSI = $random;
			@(negedge clk);
		end
		MOSI = $random;
		@(negedge clk);
		SS_n = 1;
		@(negedge clk);

		//WRITE State(cs = 2)
		SS_n = 0;
		@(negedge clk);
		MOSI = 0;
		@(negedge clk);
		MOSI = 0;
		@(negedge clk);
		MOSI = 1;
		@(negedge clk);
		repeat(7) begin
			MOSI = $random;
			@(negedge clk);
		end
		MOSI = $random;
		@(negedge clk);
		SS_n = 1;
		@(negedge clk);

		//READ_ADD (cs = 3)
		SS_n = 0;
		@(negedge clk);
		MOSI = 1;
		@(negedge clk);
		repeat(9) begin
			MOSI = $random;
			@(negedge clk);
		end
		MOSI = $random;
		@(negedge clk);
		SS_n = 1;
		@(negedge clk);

		//READ_DATA (cs = 4)
		SS_n = 0;
		@(negedge clk);
		MOSI = 1;
		@(negedge clk);
		repeat(19) @(negedge clk);
		SS_n = 1;
		repeat (2) @(negedge clk);

		//WRITE State(cs = 2)
		SS_n = 0;
		@(negedge clk);
		MOSI = 0;
		@(negedge clk);
		MOSI = 0;
		@(negedge clk);
		MOSI = 0;
		@(negedge clk);
		repeat(7) begin
			MOSI = $random;
			@(negedge clk);
		end
		MOSI = $random;
		@(posedge clk);
		SS_n = 1;
		repeat(2) @(negedge clk);

		//WRITE State(cs = 2)
		SS_n = 0;
		@(negedge clk);
		MOSI = 0;
		@(negedge clk);
		MOSI = 0;
		@(negedge clk);
		MOSI = 1;
		@(negedge clk);
		repeat(7) begin
			MOSI = $random;
			@(negedge clk);
		end
		MOSI = $random;
		@(posedge clk);
		SS_n = 1;
		repeat(2) @(negedge clk);

		//READ_ADD (cs = 3)
		SS_n = 0;
		@(negedge clk);
		MOSI = 1;
		@(negedge clk);
		repeat(9) begin
			MOSI = $random;
			@(negedge clk);
		end
		MOSI = $random;
		@(posedge clk);
		SS_n = 1;
		repeat(2) @(negedge clk);

		//READ_DATA (cs = 4)
		SS_n = 0;
		@(negedge clk);
		MOSI = 1;
		@(negedge clk);
		repeat(10) @(negedge clk);
		@(posedge clk);
		@(posedge clk);
		repeat(7) @(posedge clk);
		SS_n = 1;
		repeat (2) @(negedge clk);

		$stop;
	end

endmodule