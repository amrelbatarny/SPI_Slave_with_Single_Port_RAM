vlib work
vlog -f src_files.list -mfcu
vsim -voptargs=+acc work.SPI_spr_ram_tb
#add wave *
#add wave -r /*
add wave	-color red 	sim:/SPI_spr_ram_tb/DUT/clk
add wave	-color red  sim:/SPI_spr_ram_tb/DUT/rst_n
add wave   				sim:/SPI_spr_ram_tb/DUT/SS_n
add wave   				sim:/SPI_spr_ram_tb/DUT/MISO
add wave   				sim:/SPI_spr_ram_tb/DUT/MOSI
add wave	-color gold sim:/SPI_spr_ram_tb/DUT/rx_data
add wave	-color gold sim:/SPI_spr_ram_tb/DUT/rx_valid
add wave	-color gold sim:/SPI_spr_ram_tb/DUT/spr_RAM/din
add wave	-color gold sim:/SPI_spr_ram_tb/DUT/spr_RAM/address
add wave  				sim:/SPI_spr_ram_tb/DUT/SPI/count
add wave	-color cyan	sim:/SPI_spr_ram_tb/DUT/SPI/cs
add wave	-color cyan	sim:/SPI_spr_ram_tb/DUT/SPI/ns
add wave  				sim:/SPI_spr_ram_tb/DUT/SPI/sp_en
add wave  				sim:/SPI_spr_ram_tb/DUT/SPI/ps_en
add wave  				sim:/SPI_spr_ram_tb/DUT/spr_RAM/dout
add wave  				sim:/SPI_spr_ram_tb/DUT/SPI/tx_data
add wave  				sim:/SPI_spr_ram_tb/DUT/SPI/tx_valid
add wave  				sim:/SPI_spr_ram_tb/DUT/spr_RAM/mem
.vcop Action toggleleafnames
run -all
#quit -sim