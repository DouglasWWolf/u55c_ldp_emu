//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Sun Jun 14 03:23:06 2026
//Host        : wolf-super-server running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target top_level.bd
//Design      : top_level
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module laguna_dp_emulator_imp_7Q2MOS
   (M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_AXI_CONFIG_araddr,
    S_AXI_CONFIG_arprot,
    S_AXI_CONFIG_arready,
    S_AXI_CONFIG_arvalid,
    S_AXI_CONFIG_awaddr,
    S_AXI_CONFIG_awprot,
    S_AXI_CONFIG_awready,
    S_AXI_CONFIG_awvalid,
    S_AXI_CONFIG_bready,
    S_AXI_CONFIG_bresp,
    S_AXI_CONFIG_bvalid,
    S_AXI_CONFIG_rdata,
    S_AXI_CONFIG_rready,
    S_AXI_CONFIG_rresp,
    S_AXI_CONFIG_rvalid,
    S_AXI_CONFIG_wdata,
    S_AXI_CONFIG_wready,
    S_AXI_CONFIG_wstrb,
    S_AXI_CONFIG_wvalid,
    S_AXI_SF_CTL_araddr,
    S_AXI_SF_CTL_arready,
    S_AXI_SF_CTL_arvalid,
    S_AXI_SF_CTL_awaddr,
    S_AXI_SF_CTL_awready,
    S_AXI_SF_CTL_awvalid,
    S_AXI_SF_CTL_bready,
    S_AXI_SF_CTL_bresp,
    S_AXI_SF_CTL_bvalid,
    S_AXI_SF_CTL_rdata,
    S_AXI_SF_CTL_rready,
    S_AXI_SF_CTL_rresp,
    S_AXI_SF_CTL_rvalid,
    S_AXI_SF_CTL_wdata,
    S_AXI_SF_CTL_wready,
    S_AXI_SF_CTL_wstrb,
    S_AXI_SF_CTL_wvalid,
    clk,
    resetn);
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [3:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [3:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input [3:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_AXI_CONFIG_araddr;
  input [2:0]S_AXI_CONFIG_arprot;
  output [0:0]S_AXI_CONFIG_arready;
  input [0:0]S_AXI_CONFIG_arvalid;
  input S_AXI_CONFIG_awaddr;
  input [2:0]S_AXI_CONFIG_awprot;
  output [0:0]S_AXI_CONFIG_awready;
  input [0:0]S_AXI_CONFIG_awvalid;
  input [0:0]S_AXI_CONFIG_bready;
  output [1:0]S_AXI_CONFIG_bresp;
  output [0:0]S_AXI_CONFIG_bvalid;
  output S_AXI_CONFIG_rdata;
  input [0:0]S_AXI_CONFIG_rready;
  output [1:0]S_AXI_CONFIG_rresp;
  output [0:0]S_AXI_CONFIG_rvalid;
  input S_AXI_CONFIG_wdata;
  output [0:0]S_AXI_CONFIG_wready;
  input S_AXI_CONFIG_wstrb;
  input [0:0]S_AXI_CONFIG_wvalid;
  input S_AXI_SF_CTL_araddr;
  output [0:0]S_AXI_SF_CTL_arready;
  input [0:0]S_AXI_SF_CTL_arvalid;
  input S_AXI_SF_CTL_awaddr;
  output [0:0]S_AXI_SF_CTL_awready;
  input [0:0]S_AXI_SF_CTL_awvalid;
  input [0:0]S_AXI_SF_CTL_bready;
  output [1:0]S_AXI_SF_CTL_bresp;
  output [0:0]S_AXI_SF_CTL_bvalid;
  output S_AXI_SF_CTL_rdata;
  input [0:0]S_AXI_SF_CTL_rready;
  output [1:0]S_AXI_SF_CTL_rresp;
  output [0:0]S_AXI_SF_CTL_rvalid;
  input S_AXI_SF_CTL_wdata;
  output [0:0]S_AXI_SF_CTL_wready;
  input S_AXI_SF_CTL_wstrb;
  input [0:0]S_AXI_SF_CTL_wvalid;
  input clk;
  input resetn;

  wire [63:0]M_AXI_araddr;
  wire [1:0]M_AXI_arburst;
  wire [3:0]M_AXI_arcache;
  wire [3:0]M_AXI_arid;
  wire [7:0]M_AXI_arlen;
  wire M_AXI_arlock;
  wire [2:0]M_AXI_arprot;
  wire [3:0]M_AXI_arqos;
  wire M_AXI_arready;
  wire [2:0]M_AXI_arsize;
  wire M_AXI_arvalid;
  wire [63:0]M_AXI_awaddr;
  wire [1:0]M_AXI_awburst;
  wire [3:0]M_AXI_awcache;
  wire [3:0]M_AXI_awid;
  wire [7:0]M_AXI_awlen;
  wire M_AXI_awlock;
  wire [2:0]M_AXI_awprot;
  wire [3:0]M_AXI_awqos;
  wire M_AXI_awready;
  wire [2:0]M_AXI_awsize;
  wire M_AXI_awvalid;
  wire [3:0]M_AXI_bid;
  wire M_AXI_bready;
  wire [1:0]M_AXI_bresp;
  wire M_AXI_bvalid;
  wire [511:0]M_AXI_rdata;
  wire [3:0]M_AXI_rid;
  wire M_AXI_rlast;
  wire M_AXI_rready;
  wire [1:0]M_AXI_rresp;
  wire M_AXI_rvalid;
  wire [511:0]M_AXI_wdata;
  wire M_AXI_wlast;
  wire M_AXI_wready;
  wire [63:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire S_AXI_CONFIG_araddr;
  wire [2:0]S_AXI_CONFIG_arprot;
  wire \^S_AXI_CONFIG_arready ;
  wire [0:0]S_AXI_CONFIG_arvalid;
  wire S_AXI_CONFIG_awaddr;
  wire [2:0]S_AXI_CONFIG_awprot;
  wire \^S_AXI_CONFIG_awready ;
  wire [0:0]S_AXI_CONFIG_awvalid;
  wire [0:0]S_AXI_CONFIG_bready;
  wire [1:0]S_AXI_CONFIG_bresp;
  wire \^S_AXI_CONFIG_bvalid ;
  wire [31:0]\^S_AXI_CONFIG_rdata ;
  wire [0:0]S_AXI_CONFIG_rready;
  wire [1:0]S_AXI_CONFIG_rresp;
  wire \^S_AXI_CONFIG_rvalid ;
  wire S_AXI_CONFIG_wdata;
  wire \^S_AXI_CONFIG_wready ;
  wire S_AXI_CONFIG_wstrb;
  wire [0:0]S_AXI_CONFIG_wvalid;
  wire S_AXI_SF_CTL_araddr;
  wire \^S_AXI_SF_CTL_arready ;
  wire [0:0]S_AXI_SF_CTL_arvalid;
  wire S_AXI_SF_CTL_awaddr;
  wire \^S_AXI_SF_CTL_awready ;
  wire [0:0]S_AXI_SF_CTL_awvalid;
  wire [0:0]S_AXI_SF_CTL_bready;
  wire [1:0]S_AXI_SF_CTL_bresp;
  wire \^S_AXI_SF_CTL_bvalid ;
  wire [31:0]\^S_AXI_SF_CTL_rdata ;
  wire [0:0]S_AXI_SF_CTL_rready;
  wire [1:0]S_AXI_SF_CTL_rresp;
  wire \^S_AXI_SF_CTL_rvalid ;
  wire S_AXI_SF_CTL_wdata;
  wire \^S_AXI_SF_CTL_wready ;
  wire S_AXI_SF_CTL_wstrb;
  wire [0:0]S_AXI_SF_CTL_wvalid;
  wire clk;
  wire [31:0]ldp_emu_config_BYTES_PER_USEC;
  wire [63:0]ldp_emu_config_FC0_ADDR;
  wire [63:0]ldp_emu_config_FC1_ADDR;
  wire [63:0]ldp_emu_config_FD0_RING_ADDR;
  wire [63:0]ldp_emu_config_FD1_RING_ADDR;
  wire [63:0]ldp_emu_config_FD_RING_SIZE;
  wire [31:0]ldp_emu_config_FRAME_SIZE;
  wire [63:0]ldp_emu_config_MD0_RING_ADDR;
  wire [63:0]ldp_emu_config_MD1_RING_ADDR;
  wire [63:0]ldp_emu_config_MD_RING_SIZE;
  wire [511:0]ldp_emu_config_METADATA;
  wire [31:0]ldp_emu_config_sensor_hdr;
  wire ldp_emu_config_sensor_hdr_enable;
  wire [511:0]metadata_gen_AXIS_MD_TDATA;
  wire metadata_gen_AXIS_MD_TREADY;
  wire metadata_gen_AXIS_MD_TVALID;
  wire mindy_core_reset_external_resetn;
  wire [511:0]rate_limiter_AXIS_OUT_TDATA;
  wire [63:0]rate_limiter_AXIS_OUT_TKEEP;
  wire rate_limiter_AXIS_OUT_TLAST;
  wire rate_limiter_AXIS_OUT_TREADY;
  wire rate_limiter_AXIS_OUT_TVALID;
  wire resetn;
  wire [31:0]simframe_ctl_AXIS_OUT_TDATA;
  wire simframe_ctl_AXIS_OUT_TREADY;
  wire simframe_ctl_AXIS_OUT_TVALID;
  wire [511:0]simframe_gen_AXIS_OUT_TDATA;
  wire simframe_gen_AXIS_OUT_TREADY;
  wire simframe_gen_AXIS_OUT_TVALID;
  wire simframe_gen_start_of_frame;
  wire [511:0]stamp_sensor_hdr_AXIS_OUT_TDATA;
  wire stamp_sensor_hdr_AXIS_OUT_TREADY;
  wire stamp_sensor_hdr_AXIS_OUT_TVALID;

  assign S_AXI_CONFIG_arready[0] = \^S_AXI_CONFIG_arready ;
  assign S_AXI_CONFIG_awready[0] = \^S_AXI_CONFIG_awready ;
  assign S_AXI_CONFIG_bvalid[0] = \^S_AXI_CONFIG_bvalid ;
  assign S_AXI_CONFIG_rdata = \^S_AXI_CONFIG_rdata [0];
  assign S_AXI_CONFIG_rvalid[0] = \^S_AXI_CONFIG_rvalid ;
  assign S_AXI_CONFIG_wready[0] = \^S_AXI_CONFIG_wready ;
  assign S_AXI_SF_CTL_arready[0] = \^S_AXI_SF_CTL_arready ;
  assign S_AXI_SF_CTL_awready[0] = \^S_AXI_SF_CTL_awready ;
  assign S_AXI_SF_CTL_bvalid[0] = \^S_AXI_SF_CTL_bvalid ;
  assign S_AXI_SF_CTL_rdata = \^S_AXI_SF_CTL_rdata [0];
  assign S_AXI_SF_CTL_rvalid[0] = \^S_AXI_SF_CTL_rvalid ;
  assign S_AXI_SF_CTL_wready[0] = \^S_AXI_SF_CTL_wready ;
  top_level_ldp_emu_config_0_0 ldp_emu_config
       (.BYTES_PER_USEC(ldp_emu_config_BYTES_PER_USEC),
        .FC0_ADDR(ldp_emu_config_FC0_ADDR),
        .FC1_ADDR(ldp_emu_config_FC1_ADDR),
        .FD0_RING_ADDR(ldp_emu_config_FD0_RING_ADDR),
        .FD1_RING_ADDR(ldp_emu_config_FD1_RING_ADDR),
        .FD_RING_SIZE(ldp_emu_config_FD_RING_SIZE),
        .FRAME_SIZE(ldp_emu_config_FRAME_SIZE),
        .MD0_RING_ADDR(ldp_emu_config_MD0_RING_ADDR),
        .MD1_RING_ADDR(ldp_emu_config_MD1_RING_ADDR),
        .MD_RING_SIZE(ldp_emu_config_MD_RING_SIZE),
        .METADATA(ldp_emu_config_METADATA),
        .S_AXI_ARADDR({S_AXI_CONFIG_araddr,S_AXI_CONFIG_araddr,S_AXI_CONFIG_araddr,S_AXI_CONFIG_araddr,S_AXI_CONFIG_araddr,S_AXI_CONFIG_araddr,S_AXI_CONFIG_araddr,S_AXI_CONFIG_araddr,S_AXI_CONFIG_araddr,S_AXI_CONFIG_araddr,S_AXI_CONFIG_araddr,S_AXI_CONFIG_araddr,S_AXI_CONFIG_araddr,S_AXI_CONFIG_araddr,S_AXI_CONFIG_araddr,S_AXI_CONFIG_araddr,S_AXI_CONFIG_araddr,S_AXI_CONFIG_araddr,S_AXI_CONFIG_araddr,S_AXI_CONFIG_araddr,S_AXI_CONFIG_araddr,S_AXI_CONFIG_araddr,S_AXI_CONFIG_araddr,S_AXI_CONFIG_araddr,S_AXI_CONFIG_araddr,S_AXI_CONFIG_araddr,S_AXI_CONFIG_araddr,S_AXI_CONFIG_araddr,S_AXI_CONFIG_araddr,S_AXI_CONFIG_araddr,S_AXI_CONFIG_araddr,S_AXI_CONFIG_araddr}),
        .S_AXI_ARPROT(S_AXI_CONFIG_arprot),
        .S_AXI_ARREADY(\^S_AXI_CONFIG_arready ),
        .S_AXI_ARVALID(S_AXI_CONFIG_arvalid),
        .S_AXI_AWADDR({S_AXI_CONFIG_awaddr,S_AXI_CONFIG_awaddr,S_AXI_CONFIG_awaddr,S_AXI_CONFIG_awaddr,S_AXI_CONFIG_awaddr,S_AXI_CONFIG_awaddr,S_AXI_CONFIG_awaddr,S_AXI_CONFIG_awaddr,S_AXI_CONFIG_awaddr,S_AXI_CONFIG_awaddr,S_AXI_CONFIG_awaddr,S_AXI_CONFIG_awaddr,S_AXI_CONFIG_awaddr,S_AXI_CONFIG_awaddr,S_AXI_CONFIG_awaddr,S_AXI_CONFIG_awaddr,S_AXI_CONFIG_awaddr,S_AXI_CONFIG_awaddr,S_AXI_CONFIG_awaddr,S_AXI_CONFIG_awaddr,S_AXI_CONFIG_awaddr,S_AXI_CONFIG_awaddr,S_AXI_CONFIG_awaddr,S_AXI_CONFIG_awaddr,S_AXI_CONFIG_awaddr,S_AXI_CONFIG_awaddr,S_AXI_CONFIG_awaddr,S_AXI_CONFIG_awaddr,S_AXI_CONFIG_awaddr,S_AXI_CONFIG_awaddr,S_AXI_CONFIG_awaddr,S_AXI_CONFIG_awaddr}),
        .S_AXI_AWPROT(S_AXI_CONFIG_awprot),
        .S_AXI_AWREADY(\^S_AXI_CONFIG_awready ),
        .S_AXI_AWVALID(S_AXI_CONFIG_awvalid),
        .S_AXI_BREADY(S_AXI_CONFIG_bready),
        .S_AXI_BRESP(S_AXI_CONFIG_bresp),
        .S_AXI_BVALID(\^S_AXI_CONFIG_bvalid ),
        .S_AXI_RDATA(\^S_AXI_CONFIG_rdata ),
        .S_AXI_RREADY(S_AXI_CONFIG_rready),
        .S_AXI_RRESP(S_AXI_CONFIG_rresp),
        .S_AXI_RVALID(\^S_AXI_CONFIG_rvalid ),
        .S_AXI_WDATA({S_AXI_CONFIG_wdata,S_AXI_CONFIG_wdata,S_AXI_CONFIG_wdata,S_AXI_CONFIG_wdata,S_AXI_CONFIG_wdata,S_AXI_CONFIG_wdata,S_AXI_CONFIG_wdata,S_AXI_CONFIG_wdata,S_AXI_CONFIG_wdata,S_AXI_CONFIG_wdata,S_AXI_CONFIG_wdata,S_AXI_CONFIG_wdata,S_AXI_CONFIG_wdata,S_AXI_CONFIG_wdata,S_AXI_CONFIG_wdata,S_AXI_CONFIG_wdata,S_AXI_CONFIG_wdata,S_AXI_CONFIG_wdata,S_AXI_CONFIG_wdata,S_AXI_CONFIG_wdata,S_AXI_CONFIG_wdata,S_AXI_CONFIG_wdata,S_AXI_CONFIG_wdata,S_AXI_CONFIG_wdata,S_AXI_CONFIG_wdata,S_AXI_CONFIG_wdata,S_AXI_CONFIG_wdata,S_AXI_CONFIG_wdata,S_AXI_CONFIG_wdata,S_AXI_CONFIG_wdata,S_AXI_CONFIG_wdata,S_AXI_CONFIG_wdata}),
        .S_AXI_WREADY(\^S_AXI_CONFIG_wready ),
        .S_AXI_WSTRB({S_AXI_CONFIG_wstrb,S_AXI_CONFIG_wstrb,S_AXI_CONFIG_wstrb,S_AXI_CONFIG_wstrb}),
        .S_AXI_WVALID(S_AXI_CONFIG_wvalid),
        .clk(clk),
        .resetn(resetn),
        .sensor_hdr(ldp_emu_config_sensor_hdr),
        .sensor_hdr_enable(ldp_emu_config_sensor_hdr_enable));
  ldp_manager_imp_1AJ5Z6W ldp_manager
       (.FC0_ADDR(ldp_emu_config_FC0_ADDR),
        .FC1_ADDR(ldp_emu_config_FC1_ADDR),
        .FD0_RING_ADDR(ldp_emu_config_FD0_RING_ADDR),
        .FD1_RING_ADDR(ldp_emu_config_FD1_RING_ADDR),
        .FD_RING_SIZE(ldp_emu_config_FD_RING_SIZE),
        .FRAME_SIZE(ldp_emu_config_FRAME_SIZE),
        .MD0_RING_ADDR(ldp_emu_config_MD0_RING_ADDR),
        .MD1_RING_ADDR(ldp_emu_config_MD1_RING_ADDR),
        .MD_RING_SIZE(ldp_emu_config_MD_RING_SIZE),
        .SLOT_0_AXI_araddr(M_AXI_araddr),
        .SLOT_0_AXI_arburst(M_AXI_arburst),
        .SLOT_0_AXI_arcache(M_AXI_arcache),
        .SLOT_0_AXI_arid(M_AXI_arid),
        .SLOT_0_AXI_arlen(M_AXI_arlen),
        .SLOT_0_AXI_arlock(M_AXI_arlock),
        .SLOT_0_AXI_arprot(M_AXI_arprot),
        .SLOT_0_AXI_arqos(M_AXI_arqos),
        .SLOT_0_AXI_arready(M_AXI_arready),
        .SLOT_0_AXI_arsize(M_AXI_arsize),
        .SLOT_0_AXI_arvalid(M_AXI_arvalid),
        .SLOT_0_AXI_awaddr(M_AXI_awaddr),
        .SLOT_0_AXI_awburst(M_AXI_awburst),
        .SLOT_0_AXI_awcache(M_AXI_awcache),
        .SLOT_0_AXI_awid(M_AXI_awid),
        .SLOT_0_AXI_awlen(M_AXI_awlen),
        .SLOT_0_AXI_awlock(M_AXI_awlock),
        .SLOT_0_AXI_awprot(M_AXI_awprot),
        .SLOT_0_AXI_awqos(M_AXI_awqos),
        .SLOT_0_AXI_awready(M_AXI_awready),
        .SLOT_0_AXI_awsize(M_AXI_awsize),
        .SLOT_0_AXI_awvalid(M_AXI_awvalid),
        .SLOT_0_AXI_bid(M_AXI_bid),
        .SLOT_0_AXI_bready(M_AXI_bready),
        .SLOT_0_AXI_bresp(M_AXI_bresp),
        .SLOT_0_AXI_bvalid(M_AXI_bvalid),
        .SLOT_0_AXI_rdata(M_AXI_rdata),
        .SLOT_0_AXI_rid(M_AXI_rid),
        .SLOT_0_AXI_rlast(M_AXI_rlast),
        .SLOT_0_AXI_rready(M_AXI_rready),
        .SLOT_0_AXI_rresp(M_AXI_rresp),
        .SLOT_0_AXI_rvalid(M_AXI_rvalid),
        .SLOT_0_AXI_wdata(M_AXI_wdata),
        .SLOT_0_AXI_wlast(M_AXI_wlast),
        .SLOT_0_AXI_wready(M_AXI_wready),
        .SLOT_0_AXI_wstrb(M_AXI_wstrb),
        .SLOT_0_AXI_wvalid(M_AXI_wvalid),
        .axis_fd_tdata(rate_limiter_AXIS_OUT_TDATA),
        .axis_fd_tkeep(rate_limiter_AXIS_OUT_TKEEP),
        .axis_fd_tlast(rate_limiter_AXIS_OUT_TLAST),
        .axis_fd_tready(rate_limiter_AXIS_OUT_TREADY),
        .axis_fd_tvalid(rate_limiter_AXIS_OUT_TVALID),
        .axis_md_tdata(metadata_gen_AXIS_MD_TDATA),
        .axis_md_tready(metadata_gen_AXIS_MD_TREADY),
        .axis_md_tvalid(metadata_gen_AXIS_MD_TVALID),
        .clk(clk),
        .resetn(mindy_core_reset_external_resetn));
  top_level_metadata_gen_0_0 metadata_gen
       (.AXIS_MD_TDATA(metadata_gen_AXIS_MD_TDATA),
        .AXIS_MD_TREADY(metadata_gen_AXIS_MD_TREADY),
        .AXIS_MD_TVALID(metadata_gen_AXIS_MD_TVALID),
        .MD_FIXED(ldp_emu_config_METADATA),
        .clk(clk),
        .generate_md(simframe_gen_start_of_frame),
        .resetn(mindy_core_reset_external_resetn));
  rate_limiter_imp_1TN1TZ5 rate_limiter
       (.AXIS_IN_tdata(stamp_sensor_hdr_AXIS_OUT_TDATA),
        .AXIS_IN_tready(stamp_sensor_hdr_AXIS_OUT_TREADY),
        .AXIS_IN_tvalid(stamp_sensor_hdr_AXIS_OUT_TVALID),
        .AXIS_OUT_tdata(rate_limiter_AXIS_OUT_TDATA),
        .AXIS_OUT_tkeep(rate_limiter_AXIS_OUT_TKEEP),
        .AXIS_OUT_tlast(rate_limiter_AXIS_OUT_TLAST),
        .AXIS_OUT_tready(rate_limiter_AXIS_OUT_TREADY),
        .AXIS_OUT_tvalid(rate_limiter_AXIS_OUT_TVALID),
        .BYTES_PER_USEC(ldp_emu_config_BYTES_PER_USEC),
        .clk(clk),
        .resetn(mindy_core_reset_external_resetn));
  top_level_simframe_ctl_0_0 simframe_ctl
       (.AXIS_OUT_TDATA(simframe_ctl_AXIS_OUT_TDATA),
        .AXIS_OUT_TREADY(simframe_ctl_AXIS_OUT_TREADY),
        .AXIS_OUT_TVALID(simframe_ctl_AXIS_OUT_TVALID),
        .S_AXI_ARADDR({S_AXI_SF_CTL_araddr,S_AXI_SF_CTL_araddr,S_AXI_SF_CTL_araddr,S_AXI_SF_CTL_araddr,S_AXI_SF_CTL_araddr,S_AXI_SF_CTL_araddr,S_AXI_SF_CTL_araddr,S_AXI_SF_CTL_araddr,S_AXI_SF_CTL_araddr,S_AXI_SF_CTL_araddr,S_AXI_SF_CTL_araddr,S_AXI_SF_CTL_araddr,S_AXI_SF_CTL_araddr,S_AXI_SF_CTL_araddr,S_AXI_SF_CTL_araddr,S_AXI_SF_CTL_araddr,S_AXI_SF_CTL_araddr,S_AXI_SF_CTL_araddr,S_AXI_SF_CTL_araddr,S_AXI_SF_CTL_araddr,S_AXI_SF_CTL_araddr,S_AXI_SF_CTL_araddr,S_AXI_SF_CTL_araddr,S_AXI_SF_CTL_araddr,S_AXI_SF_CTL_araddr,S_AXI_SF_CTL_araddr,S_AXI_SF_CTL_araddr,S_AXI_SF_CTL_araddr,S_AXI_SF_CTL_araddr,S_AXI_SF_CTL_araddr,S_AXI_SF_CTL_araddr,S_AXI_SF_CTL_araddr}),
        .S_AXI_ARREADY(\^S_AXI_SF_CTL_arready ),
        .S_AXI_ARVALID(S_AXI_SF_CTL_arvalid),
        .S_AXI_AWADDR({S_AXI_SF_CTL_awaddr,S_AXI_SF_CTL_awaddr,S_AXI_SF_CTL_awaddr,S_AXI_SF_CTL_awaddr,S_AXI_SF_CTL_awaddr,S_AXI_SF_CTL_awaddr,S_AXI_SF_CTL_awaddr,S_AXI_SF_CTL_awaddr,S_AXI_SF_CTL_awaddr,S_AXI_SF_CTL_awaddr,S_AXI_SF_CTL_awaddr,S_AXI_SF_CTL_awaddr,S_AXI_SF_CTL_awaddr,S_AXI_SF_CTL_awaddr,S_AXI_SF_CTL_awaddr,S_AXI_SF_CTL_awaddr,S_AXI_SF_CTL_awaddr,S_AXI_SF_CTL_awaddr,S_AXI_SF_CTL_awaddr,S_AXI_SF_CTL_awaddr,S_AXI_SF_CTL_awaddr,S_AXI_SF_CTL_awaddr,S_AXI_SF_CTL_awaddr,S_AXI_SF_CTL_awaddr,S_AXI_SF_CTL_awaddr,S_AXI_SF_CTL_awaddr,S_AXI_SF_CTL_awaddr,S_AXI_SF_CTL_awaddr,S_AXI_SF_CTL_awaddr,S_AXI_SF_CTL_awaddr,S_AXI_SF_CTL_awaddr,S_AXI_SF_CTL_awaddr}),
        .S_AXI_AWREADY(\^S_AXI_SF_CTL_awready ),
        .S_AXI_AWVALID(S_AXI_SF_CTL_awvalid),
        .S_AXI_BREADY(S_AXI_SF_CTL_bready),
        .S_AXI_BRESP(S_AXI_SF_CTL_bresp),
        .S_AXI_BVALID(\^S_AXI_SF_CTL_bvalid ),
        .S_AXI_RDATA(\^S_AXI_SF_CTL_rdata ),
        .S_AXI_RREADY(S_AXI_SF_CTL_rready),
        .S_AXI_RRESP(S_AXI_SF_CTL_rresp),
        .S_AXI_RVALID(\^S_AXI_SF_CTL_rvalid ),
        .S_AXI_WDATA({S_AXI_SF_CTL_wdata,S_AXI_SF_CTL_wdata,S_AXI_SF_CTL_wdata,S_AXI_SF_CTL_wdata,S_AXI_SF_CTL_wdata,S_AXI_SF_CTL_wdata,S_AXI_SF_CTL_wdata,S_AXI_SF_CTL_wdata,S_AXI_SF_CTL_wdata,S_AXI_SF_CTL_wdata,S_AXI_SF_CTL_wdata,S_AXI_SF_CTL_wdata,S_AXI_SF_CTL_wdata,S_AXI_SF_CTL_wdata,S_AXI_SF_CTL_wdata,S_AXI_SF_CTL_wdata,S_AXI_SF_CTL_wdata,S_AXI_SF_CTL_wdata,S_AXI_SF_CTL_wdata,S_AXI_SF_CTL_wdata,S_AXI_SF_CTL_wdata,S_AXI_SF_CTL_wdata,S_AXI_SF_CTL_wdata,S_AXI_SF_CTL_wdata,S_AXI_SF_CTL_wdata,S_AXI_SF_CTL_wdata,S_AXI_SF_CTL_wdata,S_AXI_SF_CTL_wdata,S_AXI_SF_CTL_wdata,S_AXI_SF_CTL_wdata,S_AXI_SF_CTL_wdata,S_AXI_SF_CTL_wdata}),
        .S_AXI_WREADY(\^S_AXI_SF_CTL_wready ),
        .S_AXI_WSTRB({S_AXI_SF_CTL_wstrb,S_AXI_SF_CTL_wstrb,S_AXI_SF_CTL_wstrb,S_AXI_SF_CTL_wstrb}),
        .S_AXI_WVALID(S_AXI_SF_CTL_wvalid),
        .clk(clk),
        .resetn(resetn),
        .resetn_out(mindy_core_reset_external_resetn));
  top_level_simframe_gen_0_0 simframe_gen
       (.AXIS_IN_TDATA(simframe_ctl_AXIS_OUT_TDATA),
        .AXIS_IN_TREADY(simframe_ctl_AXIS_OUT_TREADY),
        .AXIS_IN_TVALID(simframe_ctl_AXIS_OUT_TVALID),
        .AXIS_OUT_TDATA(simframe_gen_AXIS_OUT_TDATA),
        .AXIS_OUT_TREADY(simframe_gen_AXIS_OUT_TREADY),
        .AXIS_OUT_TVALID(simframe_gen_AXIS_OUT_TVALID),
        .FRAME_SIZE(ldp_emu_config_FRAME_SIZE),
        .clk(clk),
        .resetn(mindy_core_reset_external_resetn),
        .start_of_frame(simframe_gen_start_of_frame));
  top_level_stamp_sensor_hdr_0_0 stamp_sensor_hdr
       (.AXIS_IN_TDATA(simframe_gen_AXIS_OUT_TDATA),
        .AXIS_IN_TREADY(simframe_gen_AXIS_OUT_TREADY),
        .AXIS_IN_TVALID(simframe_gen_AXIS_OUT_TVALID),
        .AXIS_OUT_TDATA(stamp_sensor_hdr_AXIS_OUT_TDATA),
        .AXIS_OUT_TREADY(stamp_sensor_hdr_AXIS_OUT_TREADY),
        .AXIS_OUT_TVALID(stamp_sensor_hdr_AXIS_OUT_TVALID),
        .clk(clk),
        .enable(ldp_emu_config_sensor_hdr_enable),
        .frame_header(ldp_emu_config_sensor_hdr),
        .frame_size(ldp_emu_config_FRAME_SIZE),
        .resetn(mindy_core_reset_external_resetn),
        .start_of_frame(simframe_gen_start_of_frame));
endmodule

module ldp_manager_imp_1AJ5Z6W
   (FC0_ADDR,
    FC1_ADDR,
    FD0_RING_ADDR,
    FD1_RING_ADDR,
    FD_RING_SIZE,
    FRAME_SIZE,
    MD0_RING_ADDR,
    MD1_RING_ADDR,
    MD_RING_SIZE,
    SLOT_0_AXI_araddr,
    SLOT_0_AXI_arburst,
    SLOT_0_AXI_arcache,
    SLOT_0_AXI_arid,
    SLOT_0_AXI_arlen,
    SLOT_0_AXI_arlock,
    SLOT_0_AXI_arprot,
    SLOT_0_AXI_arqos,
    SLOT_0_AXI_arready,
    SLOT_0_AXI_arsize,
    SLOT_0_AXI_arvalid,
    SLOT_0_AXI_awaddr,
    SLOT_0_AXI_awburst,
    SLOT_0_AXI_awcache,
    SLOT_0_AXI_awid,
    SLOT_0_AXI_awlen,
    SLOT_0_AXI_awlock,
    SLOT_0_AXI_awprot,
    SLOT_0_AXI_awqos,
    SLOT_0_AXI_awready,
    SLOT_0_AXI_awsize,
    SLOT_0_AXI_awvalid,
    SLOT_0_AXI_bid,
    SLOT_0_AXI_bready,
    SLOT_0_AXI_bresp,
    SLOT_0_AXI_bvalid,
    SLOT_0_AXI_rdata,
    SLOT_0_AXI_rid,
    SLOT_0_AXI_rlast,
    SLOT_0_AXI_rready,
    SLOT_0_AXI_rresp,
    SLOT_0_AXI_rvalid,
    SLOT_0_AXI_wdata,
    SLOT_0_AXI_wlast,
    SLOT_0_AXI_wready,
    SLOT_0_AXI_wstrb,
    SLOT_0_AXI_wvalid,
    axis_fd_tdata,
    axis_fd_tkeep,
    axis_fd_tlast,
    axis_fd_tready,
    axis_fd_tvalid,
    axis_md_tdata,
    axis_md_tready,
    axis_md_tvalid,
    clk,
    resetn);
  input [63:0]FC0_ADDR;
  input [63:0]FC1_ADDR;
  input [63:0]FD0_RING_ADDR;
  input [63:0]FD1_RING_ADDR;
  input [63:0]FD_RING_SIZE;
  input [31:0]FRAME_SIZE;
  input [63:0]MD0_RING_ADDR;
  input [63:0]MD1_RING_ADDR;
  input [63:0]MD_RING_SIZE;
  output [63:0]SLOT_0_AXI_araddr;
  output [1:0]SLOT_0_AXI_arburst;
  output [3:0]SLOT_0_AXI_arcache;
  output [3:0]SLOT_0_AXI_arid;
  output [7:0]SLOT_0_AXI_arlen;
  output SLOT_0_AXI_arlock;
  output [2:0]SLOT_0_AXI_arprot;
  output [3:0]SLOT_0_AXI_arqos;
  input SLOT_0_AXI_arready;
  output [2:0]SLOT_0_AXI_arsize;
  output SLOT_0_AXI_arvalid;
  output [63:0]SLOT_0_AXI_awaddr;
  output [1:0]SLOT_0_AXI_awburst;
  output [3:0]SLOT_0_AXI_awcache;
  output [3:0]SLOT_0_AXI_awid;
  output [7:0]SLOT_0_AXI_awlen;
  output SLOT_0_AXI_awlock;
  output [2:0]SLOT_0_AXI_awprot;
  output [3:0]SLOT_0_AXI_awqos;
  input SLOT_0_AXI_awready;
  output [2:0]SLOT_0_AXI_awsize;
  output SLOT_0_AXI_awvalid;
  input [3:0]SLOT_0_AXI_bid;
  output SLOT_0_AXI_bready;
  input [1:0]SLOT_0_AXI_bresp;
  input SLOT_0_AXI_bvalid;
  input [511:0]SLOT_0_AXI_rdata;
  input [3:0]SLOT_0_AXI_rid;
  input SLOT_0_AXI_rlast;
  output SLOT_0_AXI_rready;
  input [1:0]SLOT_0_AXI_rresp;
  input SLOT_0_AXI_rvalid;
  output [511:0]SLOT_0_AXI_wdata;
  output SLOT_0_AXI_wlast;
  input SLOT_0_AXI_wready;
  output [63:0]SLOT_0_AXI_wstrb;
  output SLOT_0_AXI_wvalid;
  input [511:0]axis_fd_tdata;
  input [63:0]axis_fd_tkeep;
  input axis_fd_tlast;
  output axis_fd_tready;
  input axis_fd_tvalid;
  input [511:0]axis_md_tdata;
  output axis_md_tready;
  input axis_md_tvalid;
  input clk;
  input resetn;

  wire [63:0]FC0_ADDR;
  wire [63:0]FC1_ADDR;
  wire [63:0]FD0_RING_ADDR;
  wire [63:0]FD1_RING_ADDR;
  wire [63:0]FD_RING_SIZE;
  wire [31:0]FRAME_SIZE;
  wire [63:0]MD0_RING_ADDR;
  wire [63:0]MD1_RING_ADDR;
  wire [63:0]MD_RING_SIZE;
  wire [511:0]axis_fd_tdata;
  wire axis_fd_tready;
  wire axis_fd_tvalid;
  wire [511:0]axis_md_tdata;
  wire axis_md_tready;
  wire axis_md_tvalid;
  wire clk_1;
  wire [511:0]ldp_buffer_axis_md_out_TDATA;
  wire ldp_buffer_axis_md_out_TREADY;
  wire ldp_buffer_axis_md_out_TVALID;
  wire [511:0]ldp_buffer_axis_out_TDATA;
  wire ldp_buffer_axis_out_TREADY;
  wire ldp_buffer_axis_out_TVALID;
  wire [31:0]ldp_buffer_dropped_frame_number;
  wire ldp_buffer_dropped_frame_stb;
  wire ldp_buffer_fatal_overflow_stb;
  (* CONN_BUS_INFO = "ldp_buffer_frame_status xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [7:0]ldp_buffer_frame_status_TDATA;
  (* CONN_BUS_INFO = "ldp_buffer_frame_status xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire ldp_buffer_frame_status_TREADY;
  (* CONN_BUS_INFO = "ldp_buffer_frame_status xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire ldp_buffer_frame_status_TVALID;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DONT_TOUCH *) wire [63:0]ldp_manager_M_AXI_ARADDR;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARBURST" *) (* DONT_TOUCH *) wire [1:0]ldp_manager_M_AXI_ARBURST;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DONT_TOUCH *) wire [3:0]ldp_manager_M_AXI_ARCACHE;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARID" *) (* DONT_TOUCH *) wire [3:0]ldp_manager_M_AXI_ARID;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DONT_TOUCH *) wire [7:0]ldp_manager_M_AXI_ARLEN;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLOCK" *) (* DONT_TOUCH *) wire ldp_manager_M_AXI_ARLOCK;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DONT_TOUCH *) wire [2:0]ldp_manager_M_AXI_ARPROT;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARQOS" *) (* DONT_TOUCH *) wire [3:0]ldp_manager_M_AXI_ARQOS;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DONT_TOUCH *) wire ldp_manager_M_AXI_ARREADY;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DONT_TOUCH *) wire [2:0]ldp_manager_M_AXI_ARSIZE;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DONT_TOUCH *) wire ldp_manager_M_AXI_ARVALID;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DONT_TOUCH *) wire [63:0]ldp_manager_M_AXI_AWADDR;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* DONT_TOUCH *) wire [1:0]ldp_manager_M_AXI_AWBURST;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DONT_TOUCH *) wire [3:0]ldp_manager_M_AXI_AWCACHE;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWID" *) (* DONT_TOUCH *) wire [3:0]ldp_manager_M_AXI_AWID;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DONT_TOUCH *) wire [7:0]ldp_manager_M_AXI_AWLEN;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLOCK" *) (* DONT_TOUCH *) wire ldp_manager_M_AXI_AWLOCK;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DONT_TOUCH *) wire [2:0]ldp_manager_M_AXI_AWPROT;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWQOS" *) (* DONT_TOUCH *) wire [3:0]ldp_manager_M_AXI_AWQOS;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DONT_TOUCH *) wire ldp_manager_M_AXI_AWREADY;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DONT_TOUCH *) wire [2:0]ldp_manager_M_AXI_AWSIZE;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DONT_TOUCH *) wire ldp_manager_M_AXI_AWVALID;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 BID" *) (* DONT_TOUCH *) wire [3:0]ldp_manager_M_AXI_BID;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DONT_TOUCH *) wire ldp_manager_M_AXI_BREADY;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DONT_TOUCH *) wire [1:0]ldp_manager_M_AXI_BRESP;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DONT_TOUCH *) wire ldp_manager_M_AXI_BVALID;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DONT_TOUCH *) wire [511:0]ldp_manager_M_AXI_RDATA;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 RID" *) (* DONT_TOUCH *) wire [3:0]ldp_manager_M_AXI_RID;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DONT_TOUCH *) wire ldp_manager_M_AXI_RLAST;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DONT_TOUCH *) wire ldp_manager_M_AXI_RREADY;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DONT_TOUCH *) wire [1:0]ldp_manager_M_AXI_RRESP;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DONT_TOUCH *) wire ldp_manager_M_AXI_RVALID;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DONT_TOUCH *) wire [511:0]ldp_manager_M_AXI_WDATA;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DONT_TOUCH *) wire ldp_manager_M_AXI_WLAST;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DONT_TOUCH *) wire ldp_manager_M_AXI_WREADY;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DONT_TOUCH *) wire [63:0]ldp_manager_M_AXI_WSTRB;
  (* CONN_BUS_INFO = "ldp_manager_M_AXI xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DONT_TOUCH *) wire ldp_manager_M_AXI_WVALID;
  wire [31:0]ldp_manager_max_frame_cycles;
  wire [31:0]ldp_manager_min_frame_cycles;
  wire ldp_manager_start_of_frame;
  wire resetn;

  assign SLOT_0_AXI_araddr[63:0] = ldp_manager_M_AXI_ARADDR;
  assign SLOT_0_AXI_arburst[1:0] = ldp_manager_M_AXI_ARBURST;
  assign SLOT_0_AXI_arcache[3:0] = ldp_manager_M_AXI_ARCACHE;
  assign SLOT_0_AXI_arid[3:0] = ldp_manager_M_AXI_ARID;
  assign SLOT_0_AXI_arlen[7:0] = ldp_manager_M_AXI_ARLEN;
  assign SLOT_0_AXI_arlock = ldp_manager_M_AXI_ARLOCK;
  assign SLOT_0_AXI_arprot[2:0] = ldp_manager_M_AXI_ARPROT;
  assign SLOT_0_AXI_arqos[3:0] = ldp_manager_M_AXI_ARQOS;
  assign SLOT_0_AXI_arsize[2:0] = ldp_manager_M_AXI_ARSIZE;
  assign SLOT_0_AXI_arvalid = ldp_manager_M_AXI_ARVALID;
  assign SLOT_0_AXI_awaddr[63:0] = ldp_manager_M_AXI_AWADDR;
  assign SLOT_0_AXI_awburst[1:0] = ldp_manager_M_AXI_AWBURST;
  assign SLOT_0_AXI_awcache[3:0] = ldp_manager_M_AXI_AWCACHE;
  assign SLOT_0_AXI_awid[3:0] = ldp_manager_M_AXI_AWID;
  assign SLOT_0_AXI_awlen[7:0] = ldp_manager_M_AXI_AWLEN;
  assign SLOT_0_AXI_awlock = ldp_manager_M_AXI_AWLOCK;
  assign SLOT_0_AXI_awprot[2:0] = ldp_manager_M_AXI_AWPROT;
  assign SLOT_0_AXI_awqos[3:0] = ldp_manager_M_AXI_AWQOS;
  assign SLOT_0_AXI_awsize[2:0] = ldp_manager_M_AXI_AWSIZE;
  assign SLOT_0_AXI_awvalid = ldp_manager_M_AXI_AWVALID;
  assign SLOT_0_AXI_bready = ldp_manager_M_AXI_BREADY;
  assign SLOT_0_AXI_rready = ldp_manager_M_AXI_RREADY;
  assign SLOT_0_AXI_wdata[511:0] = ldp_manager_M_AXI_WDATA;
  assign SLOT_0_AXI_wlast = ldp_manager_M_AXI_WLAST;
  assign SLOT_0_AXI_wstrb[63:0] = ldp_manager_M_AXI_WSTRB;
  assign SLOT_0_AXI_wvalid = ldp_manager_M_AXI_WVALID;
  assign clk_1 = clk;
  assign ldp_manager_M_AXI_ARREADY = SLOT_0_AXI_arready;
  assign ldp_manager_M_AXI_AWREADY = SLOT_0_AXI_awready;
  assign ldp_manager_M_AXI_BID = SLOT_0_AXI_bid[3:0];
  assign ldp_manager_M_AXI_BRESP = SLOT_0_AXI_bresp[1:0];
  assign ldp_manager_M_AXI_BVALID = SLOT_0_AXI_bvalid;
  assign ldp_manager_M_AXI_RDATA = SLOT_0_AXI_rdata[511:0];
  assign ldp_manager_M_AXI_RID = SLOT_0_AXI_rid[3:0];
  assign ldp_manager_M_AXI_RLAST = SLOT_0_AXI_rlast;
  assign ldp_manager_M_AXI_RRESP = SLOT_0_AXI_rresp[1:0];
  assign ldp_manager_M_AXI_RVALID = SLOT_0_AXI_rvalid;
  assign ldp_manager_M_AXI_WREADY = SLOT_0_AXI_wready;
  top_level_ldp_buffer_0_0 ldp_buffer
       (.axis_fd_in_tdata(axis_fd_tdata),
        .axis_fd_in_tready(axis_fd_tready),
        .axis_fd_in_tvalid(axis_fd_tvalid),
        .axis_fd_out_tdata(ldp_buffer_axis_out_TDATA),
        .axis_fd_out_tready(ldp_buffer_axis_out_TREADY),
        .axis_fd_out_tvalid(ldp_buffer_axis_out_TVALID),
        .axis_ferr_tdata(ldp_buffer_frame_status_TDATA),
        .axis_ferr_tready(ldp_buffer_frame_status_TREADY),
        .axis_ferr_tvalid(ldp_buffer_frame_status_TVALID),
        .axis_md_in_tdata(axis_md_tdata),
        .axis_md_in_tready(axis_md_tready),
        .axis_md_in_tvalid(axis_md_tvalid),
        .axis_md_out_tdata(ldp_buffer_axis_md_out_TDATA),
        .axis_md_out_tready(ldp_buffer_axis_md_out_TREADY),
        .axis_md_out_tvalid(ldp_buffer_axis_md_out_TVALID),
        .clk(clk_1),
        .dropped_frame_number(ldp_buffer_dropped_frame_number),
        .dropped_frame_stb(ldp_buffer_dropped_frame_stb),
        .fatal_overflow_stb(ldp_buffer_fatal_overflow_stb),
        .frame_size(FRAME_SIZE),
        .resetn(resetn));
  top_level_ldp_manager_0_0 ldp_manager
       (.FC0_ADDR(FC0_ADDR),
        .FC1_ADDR(FC1_ADDR),
        .FD0_RING_ADDR(FD0_RING_ADDR),
        .FD1_RING_ADDR(FD1_RING_ADDR),
        .FD_RING_SIZE(FD_RING_SIZE),
        .FRAME_SIZE(FRAME_SIZE),
        .MD0_RING_ADDR(MD0_RING_ADDR),
        .MD1_RING_ADDR(MD1_RING_ADDR),
        .MD_RING_SIZE(MD_RING_SIZE),
        .M_AXI_ARADDR(ldp_manager_M_AXI_ARADDR),
        .M_AXI_ARBURST(ldp_manager_M_AXI_ARBURST),
        .M_AXI_ARCACHE(ldp_manager_M_AXI_ARCACHE),
        .M_AXI_ARID(ldp_manager_M_AXI_ARID),
        .M_AXI_ARLEN(ldp_manager_M_AXI_ARLEN),
        .M_AXI_ARLOCK(ldp_manager_M_AXI_ARLOCK),
        .M_AXI_ARPROT(ldp_manager_M_AXI_ARPROT),
        .M_AXI_ARQOS(ldp_manager_M_AXI_ARQOS),
        .M_AXI_ARREADY(ldp_manager_M_AXI_ARREADY),
        .M_AXI_ARSIZE(ldp_manager_M_AXI_ARSIZE),
        .M_AXI_ARVALID(ldp_manager_M_AXI_ARVALID),
        .M_AXI_AWADDR(ldp_manager_M_AXI_AWADDR),
        .M_AXI_AWBURST(ldp_manager_M_AXI_AWBURST),
        .M_AXI_AWCACHE(ldp_manager_M_AXI_AWCACHE),
        .M_AXI_AWID(ldp_manager_M_AXI_AWID),
        .M_AXI_AWLEN(ldp_manager_M_AXI_AWLEN),
        .M_AXI_AWLOCK(ldp_manager_M_AXI_AWLOCK),
        .M_AXI_AWPROT(ldp_manager_M_AXI_AWPROT),
        .M_AXI_AWQOS(ldp_manager_M_AXI_AWQOS),
        .M_AXI_AWREADY(ldp_manager_M_AXI_AWREADY),
        .M_AXI_AWSIZE(ldp_manager_M_AXI_AWSIZE),
        .M_AXI_AWVALID(ldp_manager_M_AXI_AWVALID),
        .M_AXI_BREADY(ldp_manager_M_AXI_BREADY),
        .M_AXI_BRESP(ldp_manager_M_AXI_BRESP),
        .M_AXI_BVALID(ldp_manager_M_AXI_BVALID),
        .M_AXI_RDATA(ldp_manager_M_AXI_RDATA),
        .M_AXI_RLAST(ldp_manager_M_AXI_RLAST),
        .M_AXI_RREADY(ldp_manager_M_AXI_RREADY),
        .M_AXI_RRESP(ldp_manager_M_AXI_RRESP),
        .M_AXI_RVALID(ldp_manager_M_AXI_RVALID),
        .M_AXI_WDATA(ldp_manager_M_AXI_WDATA),
        .M_AXI_WLAST(ldp_manager_M_AXI_WLAST),
        .M_AXI_WREADY(ldp_manager_M_AXI_WREADY),
        .M_AXI_WSTRB(ldp_manager_M_AXI_WSTRB),
        .M_AXI_WVALID(ldp_manager_M_AXI_WVALID),
        .axis_fd_tdata(ldp_buffer_axis_out_TDATA),
        .axis_fd_tready(ldp_buffer_axis_out_TREADY),
        .axis_fd_tvalid(ldp_buffer_axis_out_TVALID),
        .axis_ferr_tdata(ldp_buffer_frame_status_TDATA),
        .axis_ferr_tready(ldp_buffer_frame_status_TREADY),
        .axis_ferr_tvalid(ldp_buffer_frame_status_TVALID),
        .axis_md_tdata(ldp_buffer_axis_md_out_TDATA),
        .axis_md_tready(ldp_buffer_axis_md_out_TREADY),
        .axis_md_tvalid(ldp_buffer_axis_md_out_TVALID),
        .clk(clk_1),
        .max_frame_cycles(ldp_manager_max_frame_cycles),
        .min_frame_cycles(ldp_manager_min_frame_cycles),
        .resetn(resetn),
        .start_of_frame(ldp_manager_start_of_frame));
  top_level_system_ila_0_1 system_ila
       (.SLOT_0_AXI_araddr(ldp_manager_M_AXI_ARADDR[0]),
        .SLOT_0_AXI_arburst(ldp_manager_M_AXI_ARBURST),
        .SLOT_0_AXI_arcache(ldp_manager_M_AXI_ARCACHE),
        .SLOT_0_AXI_arid(ldp_manager_M_AXI_ARID[0]),
        .SLOT_0_AXI_arlen(ldp_manager_M_AXI_ARLEN[0]),
        .SLOT_0_AXI_arlock(ldp_manager_M_AXI_ARLOCK),
        .SLOT_0_AXI_arprot(ldp_manager_M_AXI_ARPROT),
        .SLOT_0_AXI_arqos(ldp_manager_M_AXI_ARQOS),
        .SLOT_0_AXI_arready(ldp_manager_M_AXI_ARREADY),
        .SLOT_0_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .SLOT_0_AXI_arsize(ldp_manager_M_AXI_ARSIZE),
        .SLOT_0_AXI_aruser(1'b0),
        .SLOT_0_AXI_arvalid(ldp_manager_M_AXI_ARVALID),
        .SLOT_0_AXI_awaddr(ldp_manager_M_AXI_AWADDR[0]),
        .SLOT_0_AXI_awburst(ldp_manager_M_AXI_AWBURST),
        .SLOT_0_AXI_awcache(ldp_manager_M_AXI_AWCACHE),
        .SLOT_0_AXI_awid(ldp_manager_M_AXI_AWID[0]),
        .SLOT_0_AXI_awlen(ldp_manager_M_AXI_AWLEN[0]),
        .SLOT_0_AXI_awlock(ldp_manager_M_AXI_AWLOCK),
        .SLOT_0_AXI_awprot(ldp_manager_M_AXI_AWPROT),
        .SLOT_0_AXI_awqos(ldp_manager_M_AXI_AWQOS),
        .SLOT_0_AXI_awready(ldp_manager_M_AXI_AWREADY),
        .SLOT_0_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .SLOT_0_AXI_awsize(ldp_manager_M_AXI_AWSIZE),
        .SLOT_0_AXI_awuser(1'b0),
        .SLOT_0_AXI_awvalid(ldp_manager_M_AXI_AWVALID),
        .SLOT_0_AXI_bid(ldp_manager_M_AXI_BID[0]),
        .SLOT_0_AXI_bready(ldp_manager_M_AXI_BREADY),
        .SLOT_0_AXI_bresp(ldp_manager_M_AXI_BRESP),
        .SLOT_0_AXI_buser(1'b0),
        .SLOT_0_AXI_bvalid(ldp_manager_M_AXI_BVALID),
        .SLOT_0_AXI_rdata(ldp_manager_M_AXI_RDATA[0]),
        .SLOT_0_AXI_rid(ldp_manager_M_AXI_RID[0]),
        .SLOT_0_AXI_rlast(ldp_manager_M_AXI_RLAST),
        .SLOT_0_AXI_rready(ldp_manager_M_AXI_RREADY),
        .SLOT_0_AXI_rresp(ldp_manager_M_AXI_RRESP),
        .SLOT_0_AXI_ruser(1'b0),
        .SLOT_0_AXI_rvalid(ldp_manager_M_AXI_RVALID),
        .SLOT_0_AXI_wdata(ldp_manager_M_AXI_WDATA[0]),
        .SLOT_0_AXI_wid(1'b0),
        .SLOT_0_AXI_wlast(ldp_manager_M_AXI_WLAST),
        .SLOT_0_AXI_wready(ldp_manager_M_AXI_WREADY),
        .SLOT_0_AXI_wstrb(ldp_manager_M_AXI_WSTRB[0]),
        .SLOT_0_AXI_wuser(1'b0),
        .SLOT_0_AXI_wvalid(ldp_manager_M_AXI_WVALID),
        .SLOT_1_AXIS_tdata(ldp_buffer_frame_status_TDATA[0]),
        .SLOT_1_AXIS_tdest(1'b0),
        .SLOT_1_AXIS_tid(1'b0),
        .SLOT_1_AXIS_tkeep(1'b1),
        .SLOT_1_AXIS_tlast(1'b0),
        .SLOT_1_AXIS_tready(ldp_buffer_frame_status_TREADY),
        .SLOT_1_AXIS_tstrb(1'b1),
        .SLOT_1_AXIS_tuser(1'b0),
        .SLOT_1_AXIS_tvalid(ldp_buffer_frame_status_TVALID),
        .clk(clk_1),
        .probe0(ldp_manager_max_frame_cycles[0]),
        .probe1(ldp_manager_min_frame_cycles[0]),
        .probe2(ldp_manager_start_of_frame),
        .probe3(ldp_buffer_dropped_frame_stb),
        .probe4(ldp_buffer_dropped_frame_number[0]),
        .probe5(ldp_buffer_fatal_overflow_stb),
        .resetn(1'b0));
endmodule

module pcie_imp_P7FEFP
   (M_AXI_B_araddr,
    M_AXI_B_arburst,
    M_AXI_B_arcache,
    M_AXI_B_arid,
    M_AXI_B_arlen,
    M_AXI_B_arlock,
    M_AXI_B_arprot,
    M_AXI_B_arready,
    M_AXI_B_arsize,
    M_AXI_B_arvalid,
    M_AXI_B_awaddr,
    M_AXI_B_awburst,
    M_AXI_B_awcache,
    M_AXI_B_awid,
    M_AXI_B_awlen,
    M_AXI_B_awlock,
    M_AXI_B_awprot,
    M_AXI_B_awready,
    M_AXI_B_awsize,
    M_AXI_B_awvalid,
    M_AXI_B_bid,
    M_AXI_B_bready,
    M_AXI_B_bresp,
    M_AXI_B_bvalid,
    M_AXI_B_rdata,
    M_AXI_B_rid,
    M_AXI_B_rlast,
    M_AXI_B_rready,
    M_AXI_B_rresp,
    M_AXI_B_rvalid,
    M_AXI_B_wdata,
    M_AXI_B_wlast,
    M_AXI_B_wready,
    M_AXI_B_wstrb,
    M_AXI_B_wvalid,
    S_AXI_B_araddr,
    S_AXI_B_arburst,
    S_AXI_B_arid,
    S_AXI_B_arlen,
    S_AXI_B_arready,
    S_AXI_B_arsize,
    S_AXI_B_arvalid,
    S_AXI_B_awaddr,
    S_AXI_B_awburst,
    S_AXI_B_awid,
    S_AXI_B_awlen,
    S_AXI_B_awready,
    S_AXI_B_awsize,
    S_AXI_B_awvalid,
    S_AXI_B_bid,
    S_AXI_B_bready,
    S_AXI_B_bresp,
    S_AXI_B_bvalid,
    S_AXI_B_rdata,
    S_AXI_B_rid,
    S_AXI_B_rlast,
    S_AXI_B_rready,
    S_AXI_B_rresp,
    S_AXI_B_rvalid,
    S_AXI_B_wdata,
    S_AXI_B_wlast,
    S_AXI_B_wready,
    S_AXI_B_wstrb,
    S_AXI_B_wvalid,
    axi_aclk,
    axi_aresetn,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    pcie_refclk_clk_n,
    pcie_refclk_clk_p);
  output M_AXI_B_araddr;
  output [1:0]M_AXI_B_arburst;
  output [3:0]M_AXI_B_arcache;
  output M_AXI_B_arid;
  output M_AXI_B_arlen;
  output M_AXI_B_arlock;
  output [2:0]M_AXI_B_arprot;
  input [0:0]M_AXI_B_arready;
  output [2:0]M_AXI_B_arsize;
  output [0:0]M_AXI_B_arvalid;
  output M_AXI_B_awaddr;
  output [1:0]M_AXI_B_awburst;
  output [3:0]M_AXI_B_awcache;
  output M_AXI_B_awid;
  output M_AXI_B_awlen;
  output M_AXI_B_awlock;
  output [2:0]M_AXI_B_awprot;
  input [0:0]M_AXI_B_awready;
  output [2:0]M_AXI_B_awsize;
  output [0:0]M_AXI_B_awvalid;
  input M_AXI_B_bid;
  output [0:0]M_AXI_B_bready;
  input [1:0]M_AXI_B_bresp;
  input [0:0]M_AXI_B_bvalid;
  input M_AXI_B_rdata;
  input M_AXI_B_rid;
  input [0:0]M_AXI_B_rlast;
  output [0:0]M_AXI_B_rready;
  input [1:0]M_AXI_B_rresp;
  input [0:0]M_AXI_B_rvalid;
  output M_AXI_B_wdata;
  output [0:0]M_AXI_B_wlast;
  input [0:0]M_AXI_B_wready;
  output M_AXI_B_wstrb;
  output [0:0]M_AXI_B_wvalid;
  input [63:0]S_AXI_B_araddr;
  input [1:0]S_AXI_B_arburst;
  input [3:0]S_AXI_B_arid;
  input [7:0]S_AXI_B_arlen;
  output S_AXI_B_arready;
  input [2:0]S_AXI_B_arsize;
  input S_AXI_B_arvalid;
  input [63:0]S_AXI_B_awaddr;
  input [1:0]S_AXI_B_awburst;
  input [3:0]S_AXI_B_awid;
  input [7:0]S_AXI_B_awlen;
  output S_AXI_B_awready;
  input [2:0]S_AXI_B_awsize;
  input S_AXI_B_awvalid;
  output [3:0]S_AXI_B_bid;
  input S_AXI_B_bready;
  output [1:0]S_AXI_B_bresp;
  output S_AXI_B_bvalid;
  output [511:0]S_AXI_B_rdata;
  output [3:0]S_AXI_B_rid;
  output S_AXI_B_rlast;
  input S_AXI_B_rready;
  output [1:0]S_AXI_B_rresp;
  output S_AXI_B_rvalid;
  input [511:0]S_AXI_B_wdata;
  input S_AXI_B_wlast;
  output S_AXI_B_wready;
  input [63:0]S_AXI_B_wstrb;
  input S_AXI_B_wvalid;
  output axi_aclk;
  output axi_aresetn;
  input [7:0]pcie_mgt_rxn;
  input [7:0]pcie_mgt_rxp;
  output [7:0]pcie_mgt_txn;
  output [7:0]pcie_mgt_txp;
  input [0:0]pcie_refclk_clk_n;
  input [0:0]pcie_refclk_clk_p;

  wire [63:0]\^M_AXI_B_araddr ;
  wire [1:0]M_AXI_B_arburst;
  wire [3:0]M_AXI_B_arcache;
  wire [3:0]\^M_AXI_B_arid ;
  wire [7:0]\^M_AXI_B_arlen ;
  wire M_AXI_B_arlock;
  wire [2:0]M_AXI_B_arprot;
  wire [0:0]M_AXI_B_arready;
  wire [2:0]M_AXI_B_arsize;
  wire \^M_AXI_B_arvalid ;
  wire [63:0]\^M_AXI_B_awaddr ;
  wire [1:0]M_AXI_B_awburst;
  wire [3:0]M_AXI_B_awcache;
  wire [3:0]\^M_AXI_B_awid ;
  wire [7:0]\^M_AXI_B_awlen ;
  wire M_AXI_B_awlock;
  wire [2:0]M_AXI_B_awprot;
  wire [0:0]M_AXI_B_awready;
  wire [2:0]M_AXI_B_awsize;
  wire \^M_AXI_B_awvalid ;
  wire M_AXI_B_bid;
  wire \^M_AXI_B_bready ;
  wire [1:0]M_AXI_B_bresp;
  wire [0:0]M_AXI_B_bvalid;
  wire M_AXI_B_rdata;
  wire M_AXI_B_rid;
  wire [0:0]M_AXI_B_rlast;
  wire \^M_AXI_B_rready ;
  wire [1:0]M_AXI_B_rresp;
  wire [0:0]M_AXI_B_rvalid;
  wire [511:0]\^M_AXI_B_wdata ;
  wire \^M_AXI_B_wlast ;
  wire [0:0]M_AXI_B_wready;
  wire [63:0]\^M_AXI_B_wstrb ;
  wire \^M_AXI_B_wvalid ;
  wire [63:0]S_AXI_B_araddr;
  wire [1:0]S_AXI_B_arburst;
  wire [3:0]S_AXI_B_arid;
  wire [7:0]S_AXI_B_arlen;
  wire S_AXI_B_arready;
  wire [2:0]S_AXI_B_arsize;
  wire S_AXI_B_arvalid;
  wire [63:0]S_AXI_B_awaddr;
  wire [1:0]S_AXI_B_awburst;
  wire [3:0]S_AXI_B_awid;
  wire [7:0]S_AXI_B_awlen;
  wire S_AXI_B_awready;
  wire [2:0]S_AXI_B_awsize;
  wire S_AXI_B_awvalid;
  wire [3:0]S_AXI_B_bid;
  wire S_AXI_B_bready;
  wire [1:0]S_AXI_B_bresp;
  wire S_AXI_B_bvalid;
  wire [511:0]S_AXI_B_rdata;
  wire [3:0]S_AXI_B_rid;
  wire S_AXI_B_rlast;
  wire S_AXI_B_rready;
  wire [1:0]S_AXI_B_rresp;
  wire S_AXI_B_rvalid;
  wire [511:0]S_AXI_B_wdata;
  wire S_AXI_B_wlast;
  wire S_AXI_B_wready;
  wire [63:0]S_AXI_B_wstrb;
  wire S_AXI_B_wvalid;
  wire axi_aclk;
  wire axi_aresetn;
  wire [0:0]bridge_input_clock_IBUF_DS_ODIV2;
  wire [0:0]bridge_input_clock_IBUF_OUT;
  wire [0:0]one_dout;
  wire [7:0]pcie_mgt_rxn;
  wire [7:0]pcie_mgt_rxp;
  wire [7:0]pcie_mgt_txn;
  wire [7:0]pcie_mgt_txp;
  wire [0:0]pcie_refclk_clk_n;
  wire [0:0]pcie_refclk_clk_p;

  assign M_AXI_B_araddr = \^M_AXI_B_araddr [0];
  assign M_AXI_B_arid = \^M_AXI_B_arid [0];
  assign M_AXI_B_arlen = \^M_AXI_B_arlen [0];
  assign M_AXI_B_arvalid[0] = \^M_AXI_B_arvalid ;
  assign M_AXI_B_awaddr = \^M_AXI_B_awaddr [0];
  assign M_AXI_B_awid = \^M_AXI_B_awid [0];
  assign M_AXI_B_awlen = \^M_AXI_B_awlen [0];
  assign M_AXI_B_awvalid[0] = \^M_AXI_B_awvalid ;
  assign M_AXI_B_bready[0] = \^M_AXI_B_bready ;
  assign M_AXI_B_rready[0] = \^M_AXI_B_rready ;
  assign M_AXI_B_wdata = \^M_AXI_B_wdata [0];
  assign M_AXI_B_wlast[0] = \^M_AXI_B_wlast ;
  assign M_AXI_B_wstrb = \^M_AXI_B_wstrb [0];
  assign M_AXI_B_wvalid[0] = \^M_AXI_B_wvalid ;
  top_level_util_ds_buf_0_0 bridge_input_clock
       (.IBUF_DS_N(pcie_refclk_clk_n),
        .IBUF_DS_ODIV2(bridge_input_clock_IBUF_DS_ODIV2),
        .IBUF_DS_P(pcie_refclk_clk_p),
        .IBUF_OUT(bridge_input_clock_IBUF_OUT));
  top_level_xlconstant_0_0 one
       (.dout(one_dout));
  top_level_xdma_0_1 pcie_bridge
       (.axi_aclk(axi_aclk),
        .axi_aresetn(axi_aresetn),
        .m_axib_araddr(\^M_AXI_B_araddr ),
        .m_axib_arburst(M_AXI_B_arburst),
        .m_axib_arcache(M_AXI_B_arcache),
        .m_axib_arid(\^M_AXI_B_arid ),
        .m_axib_arlen(\^M_AXI_B_arlen ),
        .m_axib_arlock(M_AXI_B_arlock),
        .m_axib_arprot(M_AXI_B_arprot),
        .m_axib_arready(M_AXI_B_arready),
        .m_axib_arsize(M_AXI_B_arsize),
        .m_axib_arvalid(\^M_AXI_B_arvalid ),
        .m_axib_awaddr(\^M_AXI_B_awaddr ),
        .m_axib_awburst(M_AXI_B_awburst),
        .m_axib_awcache(M_AXI_B_awcache),
        .m_axib_awid(\^M_AXI_B_awid ),
        .m_axib_awlen(\^M_AXI_B_awlen ),
        .m_axib_awlock(M_AXI_B_awlock),
        .m_axib_awprot(M_AXI_B_awprot),
        .m_axib_awready(M_AXI_B_awready),
        .m_axib_awsize(M_AXI_B_awsize),
        .m_axib_awvalid(\^M_AXI_B_awvalid ),
        .m_axib_bid({M_AXI_B_bid,M_AXI_B_bid,M_AXI_B_bid,M_AXI_B_bid}),
        .m_axib_bready(\^M_AXI_B_bready ),
        .m_axib_bresp(M_AXI_B_bresp),
        .m_axib_bvalid(M_AXI_B_bvalid),
        .m_axib_rdata({M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata,M_AXI_B_rdata}),
        .m_axib_rid({M_AXI_B_rid,M_AXI_B_rid,M_AXI_B_rid,M_AXI_B_rid}),
        .m_axib_rlast(M_AXI_B_rlast),
        .m_axib_rready(\^M_AXI_B_rready ),
        .m_axib_rresp(M_AXI_B_rresp),
        .m_axib_rvalid(M_AXI_B_rvalid),
        .m_axib_wdata(\^M_AXI_B_wdata ),
        .m_axib_wlast(\^M_AXI_B_wlast ),
        .m_axib_wready(M_AXI_B_wready),
        .m_axib_wstrb(\^M_AXI_B_wstrb ),
        .m_axib_wvalid(\^M_AXI_B_wvalid ),
        .pci_exp_rxn(pcie_mgt_rxn),
        .pci_exp_rxp(pcie_mgt_rxp),
        .pci_exp_txn(pcie_mgt_txn),
        .pci_exp_txp(pcie_mgt_txp),
        .s_axib_araddr(S_AXI_B_araddr),
        .s_axib_arburst(S_AXI_B_arburst),
        .s_axib_arid(S_AXI_B_arid),
        .s_axib_arlen(S_AXI_B_arlen),
        .s_axib_arready(S_AXI_B_arready),
        .s_axib_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axib_arsize(S_AXI_B_arsize),
        .s_axib_arvalid(S_AXI_B_arvalid),
        .s_axib_awaddr(S_AXI_B_awaddr),
        .s_axib_awburst(S_AXI_B_awburst),
        .s_axib_awid(S_AXI_B_awid),
        .s_axib_awlen(S_AXI_B_awlen),
        .s_axib_awready(S_AXI_B_awready),
        .s_axib_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axib_awsize(S_AXI_B_awsize),
        .s_axib_awvalid(S_AXI_B_awvalid),
        .s_axib_bid(S_AXI_B_bid),
        .s_axib_bready(S_AXI_B_bready),
        .s_axib_bresp(S_AXI_B_bresp),
        .s_axib_bvalid(S_AXI_B_bvalid),
        .s_axib_rdata(S_AXI_B_rdata),
        .s_axib_rid(S_AXI_B_rid),
        .s_axib_rlast(S_AXI_B_rlast),
        .s_axib_rready(S_AXI_B_rready),
        .s_axib_rresp(S_AXI_B_rresp),
        .s_axib_rvalid(S_AXI_B_rvalid),
        .s_axib_wdata(S_AXI_B_wdata),
        .s_axib_wlast(S_AXI_B_wlast),
        .s_axib_wready(S_AXI_B_wready),
        .s_axib_wstrb(S_AXI_B_wstrb),
        .s_axib_wvalid(S_AXI_B_wvalid),
        .s_axil_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axil_arprot({1'b0,1'b0,1'b0}),
        .s_axil_arvalid(1'b0),
        .s_axil_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axil_awprot({1'b0,1'b0,1'b0}),
        .s_axil_awvalid(1'b0),
        .s_axil_bready(1'b0),
        .s_axil_rready(1'b0),
        .s_axil_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axil_wstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axil_wvalid(1'b0),
        .sys_clk(bridge_input_clock_IBUF_DS_ODIV2),
        .sys_clk_gt(bridge_input_clock_IBUF_OUT),
        .sys_rst_n(one_dout),
        .usr_irq_req(1'b0));
endmodule

module rate_limiter_imp_1TN1TZ5
   (AXIS_IN_tdata,
    AXIS_IN_tready,
    AXIS_IN_tvalid,
    AXIS_OUT_tdata,
    AXIS_OUT_tkeep,
    AXIS_OUT_tlast,
    AXIS_OUT_tready,
    AXIS_OUT_tvalid,
    BYTES_PER_USEC,
    clk,
    resetn);
  input [511:0]AXIS_IN_tdata;
  output AXIS_IN_tready;
  input AXIS_IN_tvalid;
  output [511:0]AXIS_OUT_tdata;
  output [63:0]AXIS_OUT_tkeep;
  output AXIS_OUT_tlast;
  input AXIS_OUT_tready;
  output AXIS_OUT_tvalid;
  input [31:0]BYTES_PER_USEC;
  input clk;
  input resetn;

  wire [511:0]AXIS_IN_tdata;
  wire AXIS_IN_tready;
  wire AXIS_IN_tvalid;
  wire [31:0]BYTES_PER_USEC;
  wire clk_1;
  (* CONN_BUS_INFO = "rate_limiter_AXIS_OUT xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [511:0]rate_limiter_AXIS_OUT_TDATA;
  (* CONN_BUS_INFO = "rate_limiter_AXIS_OUT xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [63:0]rate_limiter_AXIS_OUT_TKEEP;
  (* CONN_BUS_INFO = "rate_limiter_AXIS_OUT xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire rate_limiter_AXIS_OUT_TLAST;
  (* CONN_BUS_INFO = "rate_limiter_AXIS_OUT xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire rate_limiter_AXIS_OUT_TREADY;
  (* CONN_BUS_INFO = "rate_limiter_AXIS_OUT xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire rate_limiter_AXIS_OUT_TVALID;
  wire rate_limiter_overflow;
  wire resetn;

  assign AXIS_OUT_tdata[511:0] = rate_limiter_AXIS_OUT_TDATA;
  assign AXIS_OUT_tkeep[63:0] = rate_limiter_AXIS_OUT_TKEEP;
  assign AXIS_OUT_tlast = rate_limiter_AXIS_OUT_TLAST;
  assign AXIS_OUT_tvalid = rate_limiter_AXIS_OUT_TVALID;
  assign clk_1 = clk;
  assign rate_limiter_AXIS_OUT_TREADY = AXIS_OUT_tready;
  top_level_system_ila_0_2 overrun_ila
       (.SLOT_0_AXIS_tdata(rate_limiter_AXIS_OUT_TDATA[0]),
        .SLOT_0_AXIS_tdest(1'b0),
        .SLOT_0_AXIS_tid(1'b0),
        .SLOT_0_AXIS_tkeep(rate_limiter_AXIS_OUT_TKEEP[0]),
        .SLOT_0_AXIS_tlast(rate_limiter_AXIS_OUT_TLAST),
        .SLOT_0_AXIS_tready(rate_limiter_AXIS_OUT_TREADY),
        .SLOT_0_AXIS_tstrb(1'b1),
        .SLOT_0_AXIS_tuser(1'b0),
        .SLOT_0_AXIS_tvalid(rate_limiter_AXIS_OUT_TVALID),
        .clk(clk_1),
        .probe0(rate_limiter_overflow),
        .resetn(1'b0));
  top_level_rate_limiter_0_0 rate_limiter
       (.AXIS_IN_TDATA(AXIS_IN_tdata),
        .AXIS_IN_TKEEP({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .AXIS_IN_TLAST(1'b0),
        .AXIS_IN_TREADY(AXIS_IN_tready),
        .AXIS_IN_TVALID(AXIS_IN_tvalid),
        .AXIS_OUT_TDATA(rate_limiter_AXIS_OUT_TDATA),
        .AXIS_OUT_TKEEP(rate_limiter_AXIS_OUT_TKEEP),
        .AXIS_OUT_TLAST(rate_limiter_AXIS_OUT_TLAST),
        .AXIS_OUT_TREADY(rate_limiter_AXIS_OUT_TREADY),
        .AXIS_OUT_TVALID(rate_limiter_AXIS_OUT_TVALID),
        .BYTES_PER_USEC(BYTES_PER_USEC),
        .clk(clk_1),
        .overflow(rate_limiter_overflow),
        .resetn(resetn));
endmodule

(* CORE_GENERATION_INFO = "top_level,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top_level,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=19,numReposBlks=15,numNonXlnxBlks=0,numHierBlks=4,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=9,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=7,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "top_level.hwdef" *) 
module top_level
   (pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    pcie_refclk_clk_n,
    pcie_refclk_clk_p);
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxn" *) (* X_INTERFACE_MODE = "Master" *) input [7:0]pcie_mgt_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxp" *) input [7:0]pcie_mgt_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txn" *) output [7:0]pcie_mgt_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txp" *) output [7:0]pcie_mgt_txp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie_refclk CLK_N" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie_refclk, CAN_DEBUG false, FREQ_HZ 100000000" *) input [0:0]pcie_refclk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie_refclk CLK_P" *) input [0:0]pcie_refclk_clk_p;

  wire [63:0]laguna_dp_emulator_M_AXI_ARADDR;
  wire [1:0]laguna_dp_emulator_M_AXI_ARBURST;
  wire [3:0]laguna_dp_emulator_M_AXI_ARID;
  wire [7:0]laguna_dp_emulator_M_AXI_ARLEN;
  wire laguna_dp_emulator_M_AXI_ARREADY;
  wire [2:0]laguna_dp_emulator_M_AXI_ARSIZE;
  wire laguna_dp_emulator_M_AXI_ARVALID;
  wire [63:0]laguna_dp_emulator_M_AXI_AWADDR;
  wire [1:0]laguna_dp_emulator_M_AXI_AWBURST;
  wire [3:0]laguna_dp_emulator_M_AXI_AWID;
  wire [7:0]laguna_dp_emulator_M_AXI_AWLEN;
  wire laguna_dp_emulator_M_AXI_AWREADY;
  wire [2:0]laguna_dp_emulator_M_AXI_AWSIZE;
  wire laguna_dp_emulator_M_AXI_AWVALID;
  wire [3:0]laguna_dp_emulator_M_AXI_BID;
  wire laguna_dp_emulator_M_AXI_BREADY;
  wire [1:0]laguna_dp_emulator_M_AXI_BRESP;
  wire laguna_dp_emulator_M_AXI_BVALID;
  wire [511:0]laguna_dp_emulator_M_AXI_RDATA;
  wire [3:0]laguna_dp_emulator_M_AXI_RID;
  wire laguna_dp_emulator_M_AXI_RLAST;
  wire laguna_dp_emulator_M_AXI_RREADY;
  wire [1:0]laguna_dp_emulator_M_AXI_RRESP;
  wire laguna_dp_emulator_M_AXI_RVALID;
  wire [511:0]laguna_dp_emulator_M_AXI_WDATA;
  wire laguna_dp_emulator_M_AXI_WLAST;
  wire laguna_dp_emulator_M_AXI_WREADY;
  wire [63:0]laguna_dp_emulator_M_AXI_WSTRB;
  wire laguna_dp_emulator_M_AXI_WVALID;
  wire pcie_axi_aclk;
  wire [7:0]pcie_mgt_rxn;
  wire [7:0]pcie_mgt_rxp;
  wire [7:0]pcie_mgt_txn;
  wire [7:0]pcie_mgt_txp;
  wire [0:0]pcie_refclk_clk_n;
  wire [0:0]pcie_refclk_clk_p;
  wire smartconnect_M00_AXI_ARADDR;
  wire [2:0]smartconnect_M00_AXI_ARPROT;
  wire [0:0]smartconnect_M00_AXI_ARREADY;
  wire [0:0]smartconnect_M00_AXI_ARVALID;
  wire smartconnect_M00_AXI_AWADDR;
  wire [2:0]smartconnect_M00_AXI_AWPROT;
  wire [0:0]smartconnect_M00_AXI_AWREADY;
  wire [0:0]smartconnect_M00_AXI_AWVALID;
  wire [0:0]smartconnect_M00_AXI_BREADY;
  wire [1:0]smartconnect_M00_AXI_BRESP;
  wire [0:0]smartconnect_M00_AXI_BVALID;
  wire smartconnect_M00_AXI_RDATA;
  wire [0:0]smartconnect_M00_AXI_RREADY;
  wire [1:0]smartconnect_M00_AXI_RRESP;
  wire [0:0]smartconnect_M00_AXI_RVALID;
  wire smartconnect_M00_AXI_WDATA;
  wire [0:0]smartconnect_M00_AXI_WREADY;
  wire smartconnect_M00_AXI_WSTRB;
  wire [0:0]smartconnect_M00_AXI_WVALID;
  wire smartconnect_M01_AXI_ARADDR;
  wire [0:0]smartconnect_M01_AXI_ARREADY;
  wire [0:0]smartconnect_M01_AXI_ARVALID;
  wire smartconnect_M01_AXI_AWADDR;
  wire [0:0]smartconnect_M01_AXI_AWREADY;
  wire [0:0]smartconnect_M01_AXI_AWVALID;
  wire [0:0]smartconnect_M01_AXI_BREADY;
  wire [1:0]smartconnect_M01_AXI_BRESP;
  wire [0:0]smartconnect_M01_AXI_BVALID;
  wire smartconnect_M01_AXI_RDATA;
  wire [0:0]smartconnect_M01_AXI_RREADY;
  wire [1:0]smartconnect_M01_AXI_RRESP;
  wire [0:0]smartconnect_M01_AXI_RVALID;
  wire smartconnect_M01_AXI_WDATA;
  wire [0:0]smartconnect_M01_AXI_WREADY;
  wire smartconnect_M01_AXI_WSTRB;
  wire [0:0]smartconnect_M01_AXI_WVALID;
  wire smartconnect_M02_AXI_ARADDR;
  wire [2:0]smartconnect_M02_AXI_ARPROT;
  wire smartconnect_M02_AXI_ARREADY;
  wire [0:0]smartconnect_M02_AXI_ARVALID;
  wire smartconnect_M02_AXI_AWADDR;
  wire [2:0]smartconnect_M02_AXI_AWPROT;
  wire smartconnect_M02_AXI_AWREADY;
  wire [0:0]smartconnect_M02_AXI_AWVALID;
  wire [0:0]smartconnect_M02_AXI_BREADY;
  wire [1:0]smartconnect_M02_AXI_BRESP;
  wire smartconnect_M02_AXI_BVALID;
  wire [31:0]smartconnect_M02_AXI_RDATA;
  wire [0:0]smartconnect_M02_AXI_RREADY;
  wire [1:0]smartconnect_M02_AXI_RRESP;
  wire smartconnect_M02_AXI_RVALID;
  wire smartconnect_M02_AXI_WDATA;
  wire smartconnect_M02_AXI_WREADY;
  wire smartconnect_M02_AXI_WSTRB;
  wire [0:0]smartconnect_M02_AXI_WVALID;
  wire source_200Mhz_resetn;
  wire xdma_0_M_AXI_B_ARADDR;
  wire [1:0]xdma_0_M_AXI_B_ARBURST;
  wire [3:0]xdma_0_M_AXI_B_ARCACHE;
  wire xdma_0_M_AXI_B_ARID;
  wire xdma_0_M_AXI_B_ARLEN;
  wire xdma_0_M_AXI_B_ARLOCK;
  wire [2:0]xdma_0_M_AXI_B_ARPROT;
  wire [0:0]xdma_0_M_AXI_B_ARREADY;
  wire [2:0]xdma_0_M_AXI_B_ARSIZE;
  wire [0:0]xdma_0_M_AXI_B_ARVALID;
  wire xdma_0_M_AXI_B_AWADDR;
  wire [1:0]xdma_0_M_AXI_B_AWBURST;
  wire [3:0]xdma_0_M_AXI_B_AWCACHE;
  wire xdma_0_M_AXI_B_AWID;
  wire xdma_0_M_AXI_B_AWLEN;
  wire xdma_0_M_AXI_B_AWLOCK;
  wire [2:0]xdma_0_M_AXI_B_AWPROT;
  wire [0:0]xdma_0_M_AXI_B_AWREADY;
  wire [2:0]xdma_0_M_AXI_B_AWSIZE;
  wire [0:0]xdma_0_M_AXI_B_AWVALID;
  wire xdma_0_M_AXI_B_BID;
  wire [0:0]xdma_0_M_AXI_B_BREADY;
  wire [1:0]xdma_0_M_AXI_B_BRESP;
  wire [0:0]xdma_0_M_AXI_B_BVALID;
  wire xdma_0_M_AXI_B_RDATA;
  wire xdma_0_M_AXI_B_RID;
  wire [0:0]xdma_0_M_AXI_B_RLAST;
  wire [0:0]xdma_0_M_AXI_B_RREADY;
  wire [1:0]xdma_0_M_AXI_B_RRESP;
  wire [0:0]xdma_0_M_AXI_B_RVALID;
  wire xdma_0_M_AXI_B_WDATA;
  wire [0:0]xdma_0_M_AXI_B_WLAST;
  wire [0:0]xdma_0_M_AXI_B_WREADY;
  wire xdma_0_M_AXI_B_WSTRB;
  wire [0:0]xdma_0_M_AXI_B_WVALID;

  top_level_axi_revision_0_0 axi_revision
       (.AXI_ACLK(pcie_axi_aclk),
        .AXI_ARESETN(source_200Mhz_resetn),
        .S_AXI_ARADDR({smartconnect_M02_AXI_ARADDR,smartconnect_M02_AXI_ARADDR,smartconnect_M02_AXI_ARADDR,smartconnect_M02_AXI_ARADDR,smartconnect_M02_AXI_ARADDR}),
        .S_AXI_ARPROT(smartconnect_M02_AXI_ARPROT),
        .S_AXI_ARREADY(smartconnect_M02_AXI_ARREADY),
        .S_AXI_ARVALID(smartconnect_M02_AXI_ARVALID),
        .S_AXI_AWADDR({smartconnect_M02_AXI_AWADDR,smartconnect_M02_AXI_AWADDR,smartconnect_M02_AXI_AWADDR,smartconnect_M02_AXI_AWADDR,smartconnect_M02_AXI_AWADDR}),
        .S_AXI_AWPROT(smartconnect_M02_AXI_AWPROT),
        .S_AXI_AWREADY(smartconnect_M02_AXI_AWREADY),
        .S_AXI_AWVALID(smartconnect_M02_AXI_AWVALID),
        .S_AXI_BREADY(smartconnect_M02_AXI_BREADY),
        .S_AXI_BRESP(smartconnect_M02_AXI_BRESP),
        .S_AXI_BVALID(smartconnect_M02_AXI_BVALID),
        .S_AXI_RDATA(smartconnect_M02_AXI_RDATA),
        .S_AXI_RREADY(smartconnect_M02_AXI_RREADY),
        .S_AXI_RRESP(smartconnect_M02_AXI_RRESP),
        .S_AXI_RVALID(smartconnect_M02_AXI_RVALID),
        .S_AXI_WDATA({smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA,smartconnect_M02_AXI_WDATA}),
        .S_AXI_WREADY(smartconnect_M02_AXI_WREADY),
        .S_AXI_WSTRB({smartconnect_M02_AXI_WSTRB,smartconnect_M02_AXI_WSTRB,smartconnect_M02_AXI_WSTRB,smartconnect_M02_AXI_WSTRB}),
        .S_AXI_WVALID(smartconnect_M02_AXI_WVALID));
  laguna_dp_emulator_imp_7Q2MOS laguna_dp_emulator
       (.M_AXI_araddr(laguna_dp_emulator_M_AXI_ARADDR),
        .M_AXI_arburst(laguna_dp_emulator_M_AXI_ARBURST),
        .M_AXI_arid(laguna_dp_emulator_M_AXI_ARID),
        .M_AXI_arlen(laguna_dp_emulator_M_AXI_ARLEN),
        .M_AXI_arready(laguna_dp_emulator_M_AXI_ARREADY),
        .M_AXI_arsize(laguna_dp_emulator_M_AXI_ARSIZE),
        .M_AXI_arvalid(laguna_dp_emulator_M_AXI_ARVALID),
        .M_AXI_awaddr(laguna_dp_emulator_M_AXI_AWADDR),
        .M_AXI_awburst(laguna_dp_emulator_M_AXI_AWBURST),
        .M_AXI_awid(laguna_dp_emulator_M_AXI_AWID),
        .M_AXI_awlen(laguna_dp_emulator_M_AXI_AWLEN),
        .M_AXI_awready(laguna_dp_emulator_M_AXI_AWREADY),
        .M_AXI_awsize(laguna_dp_emulator_M_AXI_AWSIZE),
        .M_AXI_awvalid(laguna_dp_emulator_M_AXI_AWVALID),
        .M_AXI_bid(laguna_dp_emulator_M_AXI_BID),
        .M_AXI_bready(laguna_dp_emulator_M_AXI_BREADY),
        .M_AXI_bresp(laguna_dp_emulator_M_AXI_BRESP),
        .M_AXI_bvalid(laguna_dp_emulator_M_AXI_BVALID),
        .M_AXI_rdata(laguna_dp_emulator_M_AXI_RDATA),
        .M_AXI_rid(laguna_dp_emulator_M_AXI_RID),
        .M_AXI_rlast(laguna_dp_emulator_M_AXI_RLAST),
        .M_AXI_rready(laguna_dp_emulator_M_AXI_RREADY),
        .M_AXI_rresp(laguna_dp_emulator_M_AXI_RRESP),
        .M_AXI_rvalid(laguna_dp_emulator_M_AXI_RVALID),
        .M_AXI_wdata(laguna_dp_emulator_M_AXI_WDATA),
        .M_AXI_wlast(laguna_dp_emulator_M_AXI_WLAST),
        .M_AXI_wready(laguna_dp_emulator_M_AXI_WREADY),
        .M_AXI_wstrb(laguna_dp_emulator_M_AXI_WSTRB),
        .M_AXI_wvalid(laguna_dp_emulator_M_AXI_WVALID),
        .S_AXI_CONFIG_araddr(smartconnect_M00_AXI_ARADDR),
        .S_AXI_CONFIG_arprot(smartconnect_M00_AXI_ARPROT),
        .S_AXI_CONFIG_arready(smartconnect_M00_AXI_ARREADY),
        .S_AXI_CONFIG_arvalid(smartconnect_M00_AXI_ARVALID),
        .S_AXI_CONFIG_awaddr(smartconnect_M00_AXI_AWADDR),
        .S_AXI_CONFIG_awprot(smartconnect_M00_AXI_AWPROT),
        .S_AXI_CONFIG_awready(smartconnect_M00_AXI_AWREADY),
        .S_AXI_CONFIG_awvalid(smartconnect_M00_AXI_AWVALID),
        .S_AXI_CONFIG_bready(smartconnect_M00_AXI_BREADY),
        .S_AXI_CONFIG_bresp(smartconnect_M00_AXI_BRESP),
        .S_AXI_CONFIG_bvalid(smartconnect_M00_AXI_BVALID),
        .S_AXI_CONFIG_rdata(smartconnect_M00_AXI_RDATA),
        .S_AXI_CONFIG_rready(smartconnect_M00_AXI_RREADY),
        .S_AXI_CONFIG_rresp(smartconnect_M00_AXI_RRESP),
        .S_AXI_CONFIG_rvalid(smartconnect_M00_AXI_RVALID),
        .S_AXI_CONFIG_wdata(smartconnect_M00_AXI_WDATA),
        .S_AXI_CONFIG_wready(smartconnect_M00_AXI_WREADY),
        .S_AXI_CONFIG_wstrb(smartconnect_M00_AXI_WSTRB),
        .S_AXI_CONFIG_wvalid(smartconnect_M00_AXI_WVALID),
        .S_AXI_SF_CTL_araddr(smartconnect_M01_AXI_ARADDR),
        .S_AXI_SF_CTL_arready(smartconnect_M01_AXI_ARREADY),
        .S_AXI_SF_CTL_arvalid(smartconnect_M01_AXI_ARVALID),
        .S_AXI_SF_CTL_awaddr(smartconnect_M01_AXI_AWADDR),
        .S_AXI_SF_CTL_awready(smartconnect_M01_AXI_AWREADY),
        .S_AXI_SF_CTL_awvalid(smartconnect_M01_AXI_AWVALID),
        .S_AXI_SF_CTL_bready(smartconnect_M01_AXI_BREADY),
        .S_AXI_SF_CTL_bresp(smartconnect_M01_AXI_BRESP),
        .S_AXI_SF_CTL_bvalid(smartconnect_M01_AXI_BVALID),
        .S_AXI_SF_CTL_rdata(smartconnect_M01_AXI_RDATA),
        .S_AXI_SF_CTL_rready(smartconnect_M01_AXI_RREADY),
        .S_AXI_SF_CTL_rresp(smartconnect_M01_AXI_RRESP),
        .S_AXI_SF_CTL_rvalid(smartconnect_M01_AXI_RVALID),
        .S_AXI_SF_CTL_wdata(smartconnect_M01_AXI_WDATA),
        .S_AXI_SF_CTL_wready(smartconnect_M01_AXI_WREADY),
        .S_AXI_SF_CTL_wstrb(smartconnect_M01_AXI_WSTRB),
        .S_AXI_SF_CTL_wvalid(smartconnect_M01_AXI_WVALID),
        .clk(pcie_axi_aclk),
        .resetn(source_200Mhz_resetn));
  pcie_imp_P7FEFP pcie
       (.M_AXI_B_araddr(xdma_0_M_AXI_B_ARADDR),
        .M_AXI_B_arburst(xdma_0_M_AXI_B_ARBURST),
        .M_AXI_B_arcache(xdma_0_M_AXI_B_ARCACHE),
        .M_AXI_B_arid(xdma_0_M_AXI_B_ARID),
        .M_AXI_B_arlen(xdma_0_M_AXI_B_ARLEN),
        .M_AXI_B_arlock(xdma_0_M_AXI_B_ARLOCK),
        .M_AXI_B_arprot(xdma_0_M_AXI_B_ARPROT),
        .M_AXI_B_arready(xdma_0_M_AXI_B_ARREADY),
        .M_AXI_B_arsize(xdma_0_M_AXI_B_ARSIZE),
        .M_AXI_B_arvalid(xdma_0_M_AXI_B_ARVALID),
        .M_AXI_B_awaddr(xdma_0_M_AXI_B_AWADDR),
        .M_AXI_B_awburst(xdma_0_M_AXI_B_AWBURST),
        .M_AXI_B_awcache(xdma_0_M_AXI_B_AWCACHE),
        .M_AXI_B_awid(xdma_0_M_AXI_B_AWID),
        .M_AXI_B_awlen(xdma_0_M_AXI_B_AWLEN),
        .M_AXI_B_awlock(xdma_0_M_AXI_B_AWLOCK),
        .M_AXI_B_awprot(xdma_0_M_AXI_B_AWPROT),
        .M_AXI_B_awready(xdma_0_M_AXI_B_AWREADY),
        .M_AXI_B_awsize(xdma_0_M_AXI_B_AWSIZE),
        .M_AXI_B_awvalid(xdma_0_M_AXI_B_AWVALID),
        .M_AXI_B_bid(xdma_0_M_AXI_B_BID),
        .M_AXI_B_bready(xdma_0_M_AXI_B_BREADY),
        .M_AXI_B_bresp(xdma_0_M_AXI_B_BRESP),
        .M_AXI_B_bvalid(xdma_0_M_AXI_B_BVALID),
        .M_AXI_B_rdata(xdma_0_M_AXI_B_RDATA),
        .M_AXI_B_rid(xdma_0_M_AXI_B_RID),
        .M_AXI_B_rlast(xdma_0_M_AXI_B_RLAST),
        .M_AXI_B_rready(xdma_0_M_AXI_B_RREADY),
        .M_AXI_B_rresp(xdma_0_M_AXI_B_RRESP),
        .M_AXI_B_rvalid(xdma_0_M_AXI_B_RVALID),
        .M_AXI_B_wdata(xdma_0_M_AXI_B_WDATA),
        .M_AXI_B_wlast(xdma_0_M_AXI_B_WLAST),
        .M_AXI_B_wready(xdma_0_M_AXI_B_WREADY),
        .M_AXI_B_wstrb(xdma_0_M_AXI_B_WSTRB),
        .M_AXI_B_wvalid(xdma_0_M_AXI_B_WVALID),
        .S_AXI_B_araddr(laguna_dp_emulator_M_AXI_ARADDR),
        .S_AXI_B_arburst(laguna_dp_emulator_M_AXI_ARBURST),
        .S_AXI_B_arid(laguna_dp_emulator_M_AXI_ARID),
        .S_AXI_B_arlen(laguna_dp_emulator_M_AXI_ARLEN),
        .S_AXI_B_arready(laguna_dp_emulator_M_AXI_ARREADY),
        .S_AXI_B_arsize(laguna_dp_emulator_M_AXI_ARSIZE),
        .S_AXI_B_arvalid(laguna_dp_emulator_M_AXI_ARVALID),
        .S_AXI_B_awaddr(laguna_dp_emulator_M_AXI_AWADDR),
        .S_AXI_B_awburst(laguna_dp_emulator_M_AXI_AWBURST),
        .S_AXI_B_awid(laguna_dp_emulator_M_AXI_AWID),
        .S_AXI_B_awlen(laguna_dp_emulator_M_AXI_AWLEN),
        .S_AXI_B_awready(laguna_dp_emulator_M_AXI_AWREADY),
        .S_AXI_B_awsize(laguna_dp_emulator_M_AXI_AWSIZE),
        .S_AXI_B_awvalid(laguna_dp_emulator_M_AXI_AWVALID),
        .S_AXI_B_bid(laguna_dp_emulator_M_AXI_BID),
        .S_AXI_B_bready(laguna_dp_emulator_M_AXI_BREADY),
        .S_AXI_B_bresp(laguna_dp_emulator_M_AXI_BRESP),
        .S_AXI_B_bvalid(laguna_dp_emulator_M_AXI_BVALID),
        .S_AXI_B_rdata(laguna_dp_emulator_M_AXI_RDATA),
        .S_AXI_B_rid(laguna_dp_emulator_M_AXI_RID),
        .S_AXI_B_rlast(laguna_dp_emulator_M_AXI_RLAST),
        .S_AXI_B_rready(laguna_dp_emulator_M_AXI_RREADY),
        .S_AXI_B_rresp(laguna_dp_emulator_M_AXI_RRESP),
        .S_AXI_B_rvalid(laguna_dp_emulator_M_AXI_RVALID),
        .S_AXI_B_wdata(laguna_dp_emulator_M_AXI_WDATA),
        .S_AXI_B_wlast(laguna_dp_emulator_M_AXI_WLAST),
        .S_AXI_B_wready(laguna_dp_emulator_M_AXI_WREADY),
        .S_AXI_B_wstrb(laguna_dp_emulator_M_AXI_WSTRB),
        .S_AXI_B_wvalid(laguna_dp_emulator_M_AXI_WVALID),
        .axi_aclk(pcie_axi_aclk),
        .axi_aresetn(source_200Mhz_resetn),
        .pcie_mgt_rxn(pcie_mgt_rxn),
        .pcie_mgt_rxp(pcie_mgt_rxp),
        .pcie_mgt_txn(pcie_mgt_txn),
        .pcie_mgt_txp(pcie_mgt_txp),
        .pcie_refclk_clk_n(pcie_refclk_clk_n),
        .pcie_refclk_clk_p(pcie_refclk_clk_p));
  top_level_smartconnect_0_0 smartconnect
       (.M00_AXI_araddr(smartconnect_M00_AXI_ARADDR),
        .M00_AXI_arprot(smartconnect_M00_AXI_ARPROT),
        .M00_AXI_arready(smartconnect_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_M00_AXI_AWADDR),
        .M00_AXI_awprot(smartconnect_M00_AXI_AWPROT),
        .M00_AXI_awready(smartconnect_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_M00_AXI_AWVALID),
        .M00_AXI_bid(1'b0),
        .M00_AXI_bready(smartconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_M00_AXI_BRESP),
        .M00_AXI_buser(1'b0),
        .M00_AXI_bvalid(smartconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_M00_AXI_RDATA),
        .M00_AXI_rid(1'b0),
        .M00_AXI_rlast(1'b0),
        .M00_AXI_rready(smartconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_M00_AXI_RRESP),
        .M00_AXI_ruser(1'b0),
        .M00_AXI_rvalid(smartconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_M01_AXI_ARADDR),
        .M01_AXI_arready(smartconnect_M01_AXI_ARREADY),
        .M01_AXI_arvalid(smartconnect_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_M01_AXI_AWADDR),
        .M01_AXI_awready(smartconnect_M01_AXI_AWREADY),
        .M01_AXI_awvalid(smartconnect_M01_AXI_AWVALID),
        .M01_AXI_bid(1'b0),
        .M01_AXI_bready(smartconnect_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_M01_AXI_BRESP),
        .M01_AXI_buser(1'b0),
        .M01_AXI_bvalid(smartconnect_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_M01_AXI_RDATA),
        .M01_AXI_rid(1'b0),
        .M01_AXI_rlast(1'b0),
        .M01_AXI_rready(smartconnect_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_M01_AXI_RRESP),
        .M01_AXI_ruser(1'b0),
        .M01_AXI_rvalid(smartconnect_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_M01_AXI_WDATA),
        .M01_AXI_wready(smartconnect_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_M01_AXI_WVALID),
        .M02_AXI_araddr(smartconnect_M02_AXI_ARADDR),
        .M02_AXI_arprot(smartconnect_M02_AXI_ARPROT),
        .M02_AXI_arready(smartconnect_M02_AXI_ARREADY),
        .M02_AXI_arvalid(smartconnect_M02_AXI_ARVALID),
        .M02_AXI_awaddr(smartconnect_M02_AXI_AWADDR),
        .M02_AXI_awprot(smartconnect_M02_AXI_AWPROT),
        .M02_AXI_awready(smartconnect_M02_AXI_AWREADY),
        .M02_AXI_awvalid(smartconnect_M02_AXI_AWVALID),
        .M02_AXI_bid(1'b0),
        .M02_AXI_bready(smartconnect_M02_AXI_BREADY),
        .M02_AXI_bresp(smartconnect_M02_AXI_BRESP),
        .M02_AXI_buser(1'b0),
        .M02_AXI_bvalid(smartconnect_M02_AXI_BVALID),
        .M02_AXI_rdata(smartconnect_M02_AXI_RDATA[0]),
        .M02_AXI_rid(1'b0),
        .M02_AXI_rlast(1'b0),
        .M02_AXI_rready(smartconnect_M02_AXI_RREADY),
        .M02_AXI_rresp(smartconnect_M02_AXI_RRESP),
        .M02_AXI_ruser(1'b0),
        .M02_AXI_rvalid(smartconnect_M02_AXI_RVALID),
        .M02_AXI_wdata(smartconnect_M02_AXI_WDATA),
        .M02_AXI_wready(smartconnect_M02_AXI_WREADY),
        .M02_AXI_wstrb(smartconnect_M02_AXI_WSTRB),
        .M02_AXI_wvalid(smartconnect_M02_AXI_WVALID),
        .S00_AXI_araddr(xdma_0_M_AXI_B_ARADDR),
        .S00_AXI_arburst(xdma_0_M_AXI_B_ARBURST),
        .S00_AXI_arcache(xdma_0_M_AXI_B_ARCACHE),
        .S00_AXI_arid(xdma_0_M_AXI_B_ARID),
        .S00_AXI_arlen(xdma_0_M_AXI_B_ARLEN),
        .S00_AXI_arlock(xdma_0_M_AXI_B_ARLOCK),
        .S00_AXI_arprot(xdma_0_M_AXI_B_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(xdma_0_M_AXI_B_ARREADY),
        .S00_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arsize(xdma_0_M_AXI_B_ARSIZE),
        .S00_AXI_aruser(1'b0),
        .S00_AXI_arvalid(xdma_0_M_AXI_B_ARVALID),
        .S00_AXI_awaddr(xdma_0_M_AXI_B_AWADDR),
        .S00_AXI_awburst(xdma_0_M_AXI_B_AWBURST),
        .S00_AXI_awcache(xdma_0_M_AXI_B_AWCACHE),
        .S00_AXI_awid(xdma_0_M_AXI_B_AWID),
        .S00_AXI_awlen(xdma_0_M_AXI_B_AWLEN),
        .S00_AXI_awlock(xdma_0_M_AXI_B_AWLOCK),
        .S00_AXI_awprot(xdma_0_M_AXI_B_AWPROT),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(xdma_0_M_AXI_B_AWREADY),
        .S00_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awsize(xdma_0_M_AXI_B_AWSIZE),
        .S00_AXI_awuser(1'b0),
        .S00_AXI_awvalid(xdma_0_M_AXI_B_AWVALID),
        .S00_AXI_bid(xdma_0_M_AXI_B_BID),
        .S00_AXI_bready(xdma_0_M_AXI_B_BREADY),
        .S00_AXI_bresp(xdma_0_M_AXI_B_BRESP),
        .S00_AXI_bvalid(xdma_0_M_AXI_B_BVALID),
        .S00_AXI_rdata(xdma_0_M_AXI_B_RDATA),
        .S00_AXI_rid(xdma_0_M_AXI_B_RID),
        .S00_AXI_rlast(xdma_0_M_AXI_B_RLAST),
        .S00_AXI_rready(xdma_0_M_AXI_B_RREADY),
        .S00_AXI_rresp(xdma_0_M_AXI_B_RRESP),
        .S00_AXI_rvalid(xdma_0_M_AXI_B_RVALID),
        .S00_AXI_wdata(xdma_0_M_AXI_B_WDATA),
        .S00_AXI_wid(1'b0),
        .S00_AXI_wlast(xdma_0_M_AXI_B_WLAST),
        .S00_AXI_wready(xdma_0_M_AXI_B_WREADY),
        .S00_AXI_wstrb(xdma_0_M_AXI_B_WSTRB),
        .S00_AXI_wuser(1'b0),
        .S00_AXI_wvalid(xdma_0_M_AXI_B_WVALID),
        .aclk(pcie_axi_aclk),
        .aresetn(source_200Mhz_resetn));
endmodule
