# SPI_Slave_with_Single_Port_RAM

## Description

This project implements an SPI (Serial Peripheral Interface) slave device with integrated single-port RAM, using Verilog. It enables efficient communication and data storage between a master device and the SPI slave. The repository includes testbenches for verifying functionality using QuestaSim and files for FPGA implementation in Vivado.

## SPI Wrapper
![SPI Wrapper](Documentation/SPI_Wrapper.png)


## Features

- **SPI Slave Interface**: Implements standard SPI protocol for serial communication.
- **Single-Port RAM**: Provides simple and efficient data storage.
- **Verilog Implementation**: Suitable for FPGA synthesis and simulation.
- **Testbenches**: Included for functional verification.

## Directory Structure

```
SPI_Slave_with_Single_Port_RAM/
├── RTL/                # Verilog source files
│   ├── SPI_spr_ram.v
│   ├── SPI_Slave.v
│   └── RAM.v
├── Verification/       # Testbench files and simulation scripts
│   ├── run_SPI_spr_ram.do
│   ├── SPI_spr_ram_tb.v
│   ├── src_files.list
│   └── mem.dat
├── Vivado_files/       # Files for FPGA implementation
│   ├── SPI_netlist.v
│   ├── SPI_spr_ram.xdc
│   ├── SPI_spr_ram.bit
│   └── project_1.edn
├── Documentation/      # Project documentation
│   └── Project_snippets.pdf
└── README.md           # This README file
```

## Getting Started

### Prerequisites

- ModelSim/QuestaSim for simulation
- Vivado/Quartus Prime for synthesis, place-and-route, and timing analysis

### Running Simulations

1. Clone the repository by typing the following command in your terminal
```bash
git clone https://github.com/amrelbatarny/SPI_Slave_with_Single_Port_RAM
```
2. Open ModelSim/QuestaSim

3. From the `File` menu, click on `Change directory` and navigate to the `Verification` directory

4. From the `Transcript` window run the following TCL command to run the script file
```tcl
do run_SPI_spr_ram.do
```


## Further Resources

The included documentation provides a detailed explanation of the design and implementation process (refer to `Documentation` / `Project_Snippets.pdf`).

## Contribution

We welcome contributions to this educational project. Feel free to submit pull requests for improvements or additional features.

## Contact

Click on the image below

<a href="https://beacons.ai/amrelbatarny" target="_blank">
  <img align="left" alt="Beacons" width="180px" src="https://www.colormango.com/development/boxshot/beacons-ai_154511.png" />
</a> 
<br>
