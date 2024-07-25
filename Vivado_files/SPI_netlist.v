// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Mar  5 01:30:27 2024
// Host        : AmrElBatarny running 64-bit major release  (build 9200)
// Command     : write_verilog C:/Digital_Electronics/Kareem_Waseem_Digital_Design_Diploma/Project2_SPI_Slave/project_1.v
// Design      : SPI_spr_ram
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RAM
   (DOBDO,
    tx_valid,
    CLK,
    p_2_out,
    \tmp_reg[9] ,
    SR,
    D,
    rst_n_IBUF,
    tx_valid_reg_0,
    E);
  output [7:0]DOBDO;
  output tx_valid;
  input CLK;
  input p_2_out;
  input \tmp_reg[9] ;
  input [0:0]SR;
  input [7:0]D;
  input rst_n_IBUF;
  input tx_valid_reg_0;
  input [0:0]E;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [7:0]D;
  wire [7:0]DOBDO;
  wire [0:0]E;
  wire [0:0]SR;
  wire [7:0]address;
  wire p_2_out;
  wire rst_n_IBUF;
  wire \tmp_reg[9] ;
  wire tx_valid;
  wire tx_valid_reg_0;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(address[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(address[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(address[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(address[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(D[4]),
        .Q(address[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(D[5]),
        .Q(address[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(D[6]),
        .Q(address[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(D[7]),
        .Q(address[7]),
        .R(SR));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "spr_RAM/mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,address,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,address,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(CLK),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,D}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO(DOBDO),
        .ENARDEN(p_2_out),
        .ENBWREN(\tmp_reg[9] ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(SR),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({rst_n_IBUF,rst_n_IBUF}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  FDRE #(
    .INIT(1'b0)) 
    tx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(tx_valid_reg_0),
        .Q(tx_valid),
        .R(\<const0> ));
endmodule

module SPI_Slave
   (MISO_OBUF,
    \tmp_reg[9]_0 ,
    tx_valid_reg,
    Q,
    mem_reg,
    MISO_OBUFT_inst_i_1,
    p_2_out,
    E,
    CLK,
    tx_valid,
    rst_n_IBUF,
    MISO_OBUFT_inst_i_1_0,
    MOSI_IBUF,
    DOBDO,
    SS_n_IBUF);
  output MISO_OBUF;
  output \tmp_reg[9]_0 ;
  output tx_valid_reg;
  output [7:0]Q;
  output mem_reg;
  output MISO_OBUFT_inst_i_1;
  output p_2_out;
  output [0:0]E;
  input CLK;
  input tx_valid;
  input rst_n_IBUF;
  input MISO_OBUFT_inst_i_1_0;
  input MOSI_IBUF;
  input [7:0]DOBDO;
  input SS_n_IBUF;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [7:0]DOBDO;
  wire [0:0]E;
  wire \FSM_sequential_cs[0]_i_2_n_0 ;
  wire \FSM_sequential_cs[0]_i_3_n_0 ;
  wire \FSM_sequential_cs[0]_i_4_n_0 ;
  wire \FSM_sequential_cs[0]_i_5_n_0 ;
  wire \FSM_sequential_cs[1]_i_2_n_0 ;
  wire \FSM_sequential_cs[2]_i_3_n_0 ;
  wire \FSM_sequential_cs[2]_i_4_n_0 ;
  wire MISO_OBUF;
  wire MISO_OBUFT_inst_i_1;
  wire MISO_OBUFT_inst_i_1_0;
  wire MISO_OBUFT_inst_i_3_n_0;
  wire MISO_retimed_i_1_n_0;
  wire MISO_retimed_i_2_n_0;
  wire MISO_retimed_i_3_n_0;
  wire MISO_retimed_i_4_n_0;
  wire MISO_retimed_i_5_n_0;
  wire MISO_retimed_i_6_n_0;
  wire MISO_retimed_i_7_n_0;
  wire MOSI_IBUF;
  wire [7:0]Q;
  wire SS_n_IBUF;
  wire count;
  wire \count[0]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire [3:0]count_reg__0;
  (* RTL_KEEP = "yes" *) wire [2:0]cs;
  wire data_nadd_i_1_n_0;
  wire data_nadd_reg_n_0;
  wire mem_reg;
  wire [2:0]ns;
  wire [3:1]p_0_in;
  wire p_2_out;
  wire ps_en_i_1_n_0;
  wire ps_en_i_2_n_0;
  wire ps_en_reg_n_0;
  wire rst_n_IBUF;
  wire [9:8]rx_data;
  wire rx_valid;
  wire sp_en;
  wire \tmp_reg[9]_0 ;
  wire tx_valid;
  wire tx_valid_reg;

  LUT5 #(
    .INIT(32'hEEEEEFFF)) 
    \FSM_sequential_cs[0]_i_1 
       (.I0(\FSM_sequential_cs[0]_i_2_n_0 ),
        .I1(\FSM_sequential_cs[0]_i_3_n_0 ),
        .I2(count_reg__0[1]),
        .I3(count_reg__0[3]),
        .I4(\FSM_sequential_cs[0]_i_4_n_0 ),
        .O(ns[0]));
  LUT6 #(
    .INIT(64'hF4F4F40000000000)) 
    \FSM_sequential_cs[0]_i_2 
       (.I0(ps_en_reg_n_0),
        .I1(cs[1]),
        .I2(cs[2]),
        .I3(count_reg__0[2]),
        .I4(\FSM_sequential_cs[0]_i_5_n_0 ),
        .I5(count_reg__0[3]),
        .O(\FSM_sequential_cs[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000F004)) 
    \FSM_sequential_cs[0]_i_3 
       (.I0(data_nadd_reg_n_0),
        .I1(MOSI_IBUF),
        .I2(cs[0]),
        .I3(cs[1]),
        .I4(cs[2]),
        .I5(SS_n_IBUF),
        .O(\FSM_sequential_cs[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h50775577)) 
    \FSM_sequential_cs[0]_i_4 
       (.I0(cs[2]),
        .I1(cs[0]),
        .I2(ps_en_reg_n_0),
        .I3(cs[1]),
        .I4(tx_valid),
        .O(\FSM_sequential_cs[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_cs[0]_i_5 
       (.I0(count_reg__0[1]),
        .I1(count_reg__0[0]),
        .O(\FSM_sequential_cs[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022220030)) 
    \FSM_sequential_cs[1]_i_1 
       (.I0(\FSM_sequential_cs[1]_i_2_n_0 ),
        .I1(cs[2]),
        .I2(MOSI_IBUF),
        .I3(cs[0]),
        .I4(cs[1]),
        .I5(SS_n_IBUF),
        .O(ns[1]));
  LUT5 #(
    .INIT(32'hFFFFAAF2)) 
    \FSM_sequential_cs[1]_i_2 
       (.I0(\FSM_sequential_cs[2]_i_4_n_0 ),
        .I1(tx_valid),
        .I2(ps_en_reg_n_0),
        .I3(cs[0]),
        .I4(rx_valid),
        .O(\FSM_sequential_cs[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FF002200A00022)) 
    \FSM_sequential_cs[2]_i_1 
       (.I0(\FSM_sequential_cs[2]_i_3_n_0 ),
        .I1(MOSI_IBUF),
        .I2(\FSM_sequential_cs[2]_i_4_n_0 ),
        .I3(SS_n_IBUF),
        .I4(cs[2]),
        .I5(rx_valid),
        .O(ns[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_cs[2]_i_2 
       (.I0(rst_n_IBUF),
        .O(\tmp_reg[9]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_cs[2]_i_3 
       (.I0(cs[1]),
        .I1(cs[0]),
        .O(\FSM_sequential_cs[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \FSM_sequential_cs[2]_i_4 
       (.I0(count_reg__0[1]),
        .I1(count_reg__0[2]),
        .I2(count_reg__0[3]),
        .O(\FSM_sequential_cs[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \FSM_sequential_cs[2]_i_5 
       (.I0(count_reg__0[1]),
        .I1(count_reg__0[3]),
        .I2(count_reg__0[0]),
        .I3(count_reg__0[2]),
        .O(rx_valid));
  (* FSM_ENCODED_STATES = "WRITE:100,READ_ADD:011,READ_DATA:010,IDLE:001,CHK_CMD:000" *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_sequential_cs_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(ns[0]),
        .PRE(\tmp_reg[9]_0 ),
        .Q(cs[0]));
  (* FSM_ENCODED_STATES = "WRITE:100,READ_ADD:011,READ_DATA:010,IDLE:001,CHK_CMD:000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\tmp_reg[9]_0 ),
        .D(ns[1]),
        .Q(cs[1]));
  (* FSM_ENCODED_STATES = "WRITE:100,READ_ADD:011,READ_DATA:010,IDLE:001,CHK_CMD:000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\tmp_reg[9]_0 ),
        .D(ns[2]),
        .Q(cs[2]));
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    MISO_OBUFT_inst_i_2
       (.I0(MISO_OBUFT_inst_i_3_n_0),
        .O(MISO_OBUFT_inst_i_1));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    MISO_OBUFT_inst_i_3
       (.I0(ps_en_reg_n_0),
        .I1(rst_n_IBUF),
        .I2(tx_valid),
        .I3(MISO_retimed_i_6_n_0),
        .I4(MISO_OBUFT_inst_i_1_0),
        .O(MISO_OBUFT_inst_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFE0000)) 
    MISO_retimed_i_1
       (.I0(MISO_retimed_i_2_n_0),
        .I1(MISO_retimed_i_3_n_0),
        .I2(MISO_retimed_i_4_n_0),
        .I3(MISO_retimed_i_5_n_0),
        .I4(MISO_retimed_i_6_n_0),
        .I5(MISO_OBUF),
        .O(MISO_retimed_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000000000CA00)) 
    MISO_retimed_i_2
       (.I0(DOBDO[5]),
        .I1(DOBDO[4]),
        .I2(count_reg__0[0]),
        .I3(count_reg__0[1]),
        .I4(count_reg__0[3]),
        .I5(count_reg__0[2]),
        .O(MISO_retimed_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    MISO_retimed_i_3
       (.I0(DOBDO[3]),
        .I1(count_reg__0[1]),
        .I2(DOBDO[1]),
        .I3(count_reg__0[3]),
        .I4(count_reg__0[2]),
        .I5(count_reg__0[0]),
        .O(MISO_retimed_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAAAC002AAAA0002)) 
    MISO_retimed_i_4
       (.I0(DOBDO[7]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[1]),
        .I3(count_reg__0[2]),
        .I4(count_reg__0[3]),
        .I5(DOBDO[0]),
        .O(MISO_retimed_i_4_n_0));
  LUT6 #(
    .INIT(64'h000000000E020000)) 
    MISO_retimed_i_5
       (.I0(DOBDO[6]),
        .I1(count_reg__0[2]),
        .I2(count_reg__0[3]),
        .I3(DOBDO[2]),
        .I4(count_reg__0[0]),
        .I5(count_reg__0[1]),
        .O(MISO_retimed_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFBBB)) 
    MISO_retimed_i_6
       (.I0(MISO_retimed_i_7_n_0),
        .I1(rst_n_IBUF),
        .I2(count_reg__0[3]),
        .I3(count_reg__0[1]),
        .O(MISO_retimed_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFF4AFF4AFF4AF)) 
    MISO_retimed_i_7
       (.I0(cs[0]),
        .I1(tx_valid),
        .I2(cs[2]),
        .I3(cs[1]),
        .I4(count_reg__0[3]),
        .I5(count_reg__0[2]),
        .O(MISO_retimed_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    MISO_retimed_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(MISO_retimed_i_1_n_0),
        .Q(MISO_OBUF),
        .R(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \address[7]_i_1 
       (.I0(count_reg__0[2]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[3]),
        .I3(count_reg__0[1]),
        .I4(rx_data[8]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg__0[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg__0[1]),
        .I1(count_reg__0[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1 
       (.I0(count_reg__0[2]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[1]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'hBBBBBBFB)) 
    \count[3]_i_1 
       (.I0(rx_valid),
        .I1(rst_n_IBUF),
        .I2(cs[0]),
        .I3(cs[1]),
        .I4(cs[2]),
        .O(\count[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h1C)) 
    \count[3]_i_2 
       (.I0(cs[0]),
        .I1(cs[1]),
        .I2(cs[2]),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_3 
       (.I0(count_reg__0[2]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[1]),
        .I3(count_reg__0[3]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(count),
        .D(\count[0]_i_1_n_0 ),
        .Q(count_reg__0[0]),
        .R(\count[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(count),
        .D(p_0_in[1]),
        .Q(count_reg__0[1]),
        .R(\count[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(count),
        .D(p_0_in[2]),
        .Q(count_reg__0[2]),
        .R(\count[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(count),
        .D(p_0_in[3]),
        .Q(count_reg__0[3]),
        .R(\count[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    data_nadd_i_1
       (.I0(data_nadd_reg_n_0),
        .I1(cs[2]),
        .I2(cs[1]),
        .I3(cs[0]),
        .O(data_nadd_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    data_nadd_reg
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\tmp_reg[9]_0 ),
        .D(data_nadd_i_1_n_0),
        .Q(data_nadd_reg_n_0));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    mem_reg_i_1
       (.I0(count_reg__0[2]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[3]),
        .I3(count_reg__0[1]),
        .I4(rx_data[8]),
        .I5(rx_data[9]),
        .O(p_2_out));
  LUT4 #(
    .INIT(16'h80FF)) 
    mem_reg_i_2
       (.I0(rx_data[9]),
        .I1(rx_data[8]),
        .I2(rx_valid),
        .I3(rst_n_IBUF),
        .O(mem_reg));
  LUT6 #(
    .INIT(64'h5575555500300000)) 
    ps_en_i_1
       (.I0(ps_en_i_2_n_0),
        .I1(cs[0]),
        .I2(cs[1]),
        .I3(cs[2]),
        .I4(rx_valid),
        .I5(ps_en_reg_n_0),
        .O(ps_en_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    ps_en_i_2
       (.I0(count_reg__0[0]),
        .I1(count_reg__0[1]),
        .I2(count_reg__0[2]),
        .I3(count_reg__0[3]),
        .O(ps_en_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    ps_en_reg
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\tmp_reg[9]_0 ),
        .D(ps_en_i_1_n_0),
        .Q(ps_en_reg_n_0));
  LUT5 #(
    .INIT(32'h03D00000)) 
    \tmp[9]_i_1 
       (.I0(tx_valid),
        .I1(cs[0]),
        .I2(cs[1]),
        .I3(cs[2]),
        .I4(\FSM_sequential_cs[2]_i_4_n_0 ),
        .O(sp_en));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[0] 
       (.C(CLK),
        .CE(sp_en),
        .D(MOSI_IBUF),
        .Q(Q[0]),
        .R(\tmp_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[1] 
       (.C(CLK),
        .CE(sp_en),
        .D(Q[0]),
        .Q(Q[1]),
        .R(\tmp_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[2] 
       (.C(CLK),
        .CE(sp_en),
        .D(Q[1]),
        .Q(Q[2]),
        .R(\tmp_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[3] 
       (.C(CLK),
        .CE(sp_en),
        .D(Q[2]),
        .Q(Q[3]),
        .R(\tmp_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[4] 
       (.C(CLK),
        .CE(sp_en),
        .D(Q[3]),
        .Q(Q[4]),
        .R(\tmp_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[5] 
       (.C(CLK),
        .CE(sp_en),
        .D(Q[4]),
        .Q(Q[5]),
        .R(\tmp_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[6] 
       (.C(CLK),
        .CE(sp_en),
        .D(Q[5]),
        .Q(Q[6]),
        .R(\tmp_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[7] 
       (.C(CLK),
        .CE(sp_en),
        .D(Q[6]),
        .Q(Q[7]),
        .R(\tmp_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[8] 
       (.C(CLK),
        .CE(sp_en),
        .D(Q[7]),
        .Q(rx_data[8]),
        .R(\tmp_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_reg[9] 
       (.C(CLK),
        .CE(sp_en),
        .D(rx_data[8]),
        .Q(rx_data[9]),
        .R(\tmp_reg[9]_0 ));
  LUT5 #(
    .INIT(32'hE2220000)) 
    tx_valid_i_1
       (.I0(tx_valid),
        .I1(rx_valid),
        .I2(rx_data[8]),
        .I3(rx_data[9]),
        .I4(rst_n_IBUF),
        .O(tx_valid_reg));
endmodule

(* ADDR_SIZE = "8" *) (* MEMDEPTH = "256" *) (* MEMWIDTH = "8" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module SPI_spr_ram
   (clk,
    rst_n,
    SS_n,
    MOSI,
    MISO);
  input clk;
  input rst_n;
  input SS_n;
  input MOSI;
  output MISO;

  wire \<const0> ;
  wire \<const1> ;
  wire MISO;
  wire MISO_OBUF;
  wire MISO_OBUFT_inst_i_4_n_0;
  wire MISO_TRI;
  wire MOSI;
  wire MOSI_IBUF;
  wire SPI_n_1;
  wire SPI_n_11;
  wire SPI_n_12;
  wire SPI_n_14;
  wire SPI_n_2;
  wire SS_n;
  wire SS_n_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire data1;
  wire data2;
  wire data3;
  wire data4;
  wire data5;
  wire data6;
  wire p_2_out;
  wire rst_n;
  wire rst_n_IBUF;
  wire [7:0]rx_data;
  wire spr_RAM_n_7;
  wire [7:7]tx_data;
  wire tx_valid;

  GND GND
       (.G(\<const0> ));
  OBUFT MISO_OBUFT_inst
       (.I(MISO_OBUF),
        .O(MISO),
        .T(MISO_TRI));
  FDRE #(
    .INIT(1'b0)) 
    MISO_OBUFT_inst_i_1
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(SPI_n_12),
        .Q(MISO_TRI),
        .R(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    MISO_OBUFT_inst_i_4
       (.I0(MISO_TRI),
        .O(MISO_OBUFT_inst_i_4_n_0));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  SPI_Slave SPI
       (.CLK(clk_IBUF_BUFG),
        .DOBDO({tx_data,data1,data2,data3,data4,data5,data6,spr_RAM_n_7}),
        .E(SPI_n_14),
        .MISO_OBUF(MISO_OBUF),
        .MISO_OBUFT_inst_i_1(SPI_n_12),
        .MISO_OBUFT_inst_i_1_0(MISO_OBUFT_inst_i_4_n_0),
        .MOSI_IBUF(MOSI_IBUF),
        .Q(rx_data),
        .SS_n_IBUF(SS_n_IBUF),
        .mem_reg(SPI_n_11),
        .p_2_out(p_2_out),
        .rst_n_IBUF(rst_n_IBUF),
        .\tmp_reg[9]_0 (SPI_n_1),
        .tx_valid(tx_valid),
        .tx_valid_reg(SPI_n_2));
  IBUF SS_n_IBUF_inst
       (.I(SS_n),
        .O(SS_n_IBUF));
  VCC VCC
       (.P(\<const1> ));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  RAM spr_RAM
       (.CLK(clk_IBUF_BUFG),
        .D(rx_data),
        .DOBDO({tx_data,data1,data2,data3,data4,data5,data6,spr_RAM_n_7}),
        .E(SPI_n_14),
        .SR(SPI_n_1),
        .p_2_out(p_2_out),
        .rst_n_IBUF(rst_n_IBUF),
        .\tmp_reg[9] (SPI_n_11),
        .tx_valid(tx_valid),
        .tx_valid_reg_0(SPI_n_2));
endmodule
