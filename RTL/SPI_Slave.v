module SPI_Slave(
	input MOSI, SS_n, clk, rst_n, tx_valid,
	input [7:0] tx_data,
	output reg MISO,
	output rx_valid,
	output [9:0] rx_data
	);

	parameter IDLE		= 3'b000;
	parameter CHK_CMD 	= 3'b001;
	parameter WRITE		= 3'b010;
	parameter READ_ADD	= 3'b011;
	parameter READ_DATA	= 3'b100;

	(* fsm_encoding = "sequential" *) reg [5:0] cs, ns;

	reg data_nadd;
	reg [3:0] count;
	reg [9:0] tmp;
	wire sp_en;
	reg ps_en;
	wire rx_valid_pre;
	wire rst_sp, rst_ps;
	wire tx_valid_edge;

	//State memory
	always @(posedge clk or negedge rst_n) begin
		if (~rst_n)
			cs <= IDLE;
		else
			cs <= ns;
	end

	//Next state logic
	always @(*) begin
		case(cs)
			IDLE:
			begin
				if(SS_n)
					ns = IDLE;
				else
					ns = CHK_CMD;
			end
			CHK_CMD:
			begin
				if(SS_n)
					ns = IDLE;
				else begin
					if (MOSI)
						if(data_nadd)
							ns = READ_DATA;
						else
							ns = READ_ADD;
					else
						ns = WRITE;
				end
			end
			WRITE:
			begin
				if(SS_n)
					ns = IDLE;
				else begin
					if (sp_en || rx_valid)
						ns = WRITE;
					else
						ns = IDLE;
				end
			end
			READ_ADD:
			begin
				if(SS_n)
					ns = IDLE;
				else begin
					if (sp_en || rx_valid)
						ns = READ_ADD;
					else
						ns = IDLE;
				end
			end
			READ_DATA:
			begin
				if(SS_n)
					ns = IDLE;
				else begin
					if (ps_en || sp_en || rx_valid)
						ns = READ_DATA;
					else
						ns = IDLE;
				end
			end
			default:
			begin
				if(SS_n)
					ns = IDLE;
				else
					ns = CHK_CMD;
			end
		endcase
	end

	//sp_en is asserted to enable serial to parallel conversion
	assign sp_en = ((cs == WRITE || cs == READ_ADD || (cs == READ_DATA && ~tx_valid)) && count <= 9)? 1'b1 : 1'b0;
	//rx_valid is high after 10 clock cycles of serial to parallel conversion
	assign rx_valid = (count == 10)? 1'b1 : 1'b0;
	//rx_data is assigned by the output of the shift register (serial to parallel conversion)
	assign rx_data = tmp;

	//Counter for serial <> parallel
	always @(posedge clk) begin
		if(~rst_n)
			count <= 0;
		else begin
			if(rx_valid || cs == IDLE)
				count <= 0;
			else if (~rx_valid && cs == READ_DATA)
				count <= count + 1;
			else if(cs == WRITE || cs == READ_ADD || cs == READ_DATA)
				count <= count + 1;
		end
	end

	//Serial <> Parallel operation
	always @(posedge clk) begin
		if(~rst_n) begin
			tmp <= 0;
			MISO <= 1'bz; //this line could either be removed or modified so that MISO's default value is logic "1" or "0"
		end
		else begin
			if(sp_en)
				tmp <= {tmp[8:0], MOSI};
			else if(ps_en && tx_valid)
				case (count)
					0: 	MISO <= tx_data[7];
					1: 	MISO <= tx_data[6];
					2: 	MISO <= tx_data[5];
					3: 	MISO <= tx_data[4];
					4: 	MISO <= tx_data[3];
					5: 	MISO <= tx_data[2];
					6: 	MISO <= tx_data[1];
					7: 	MISO <= tx_data[0];
					default: MISO <= tx_data[7];
				endcase
			else
				MISO <= 1'bz; //this line could either be removed or modified so that MISO's default value is logic "1" or "0"
		end	
	end

	//ps_en is asserted to enable parallel to serial conversion
	always @(posedge clk or negedge rst_n) begin
		if(~rst_n)
			ps_en <= 0;
		else if(rx_valid && cs == READ_DATA)
			ps_en <= 1;
		else if(count == 7)
			ps_en <= 0;
	end

	//When data_nadd is asserted, then next time SS_n = 0 and MOSI = 1: ns will be READ_DATA
	always @(posedge clk or negedge rst_n) begin
		if(~rst_n)
			data_nadd <= 0;
		else if(cs == READ_ADD)
			data_nadd <= 1;
		else if(cs == READ_DATA)
			data_nadd <= 0;
	end

endmodule