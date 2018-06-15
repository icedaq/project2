// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Wed Jun  6 10:47:19 2018
// Host        : helios running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axis_array_ip_0_0_sim_netlist.v
// Design      : design_1_axis_array_ip_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis
   (m00_axis_tdata,
    m00_axis_tvalid,
    m00_axis_tlast,
    s00_axis_tready,
    m00_axis_aclk,
    s00_axis_aclk,
    s00_axis_tlast,
    s00_axis_aresetn,
    s00_axis_tvalid,
    m00_axis_aresetn,
    m00_axis_tready);
  output [3:0]m00_axis_tdata;
  output m00_axis_tvalid;
  output m00_axis_tlast;
  output s00_axis_tready;
  input m00_axis_aclk;
  input s00_axis_aclk;
  input s00_axis_tlast;
  input s00_axis_aresetn;
  input s00_axis_tvalid;
  input m00_axis_aresetn;
  input m00_axis_tready;

  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [3:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_master myMaster
       (.m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave mySlave
       (.s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_axis_array_ip_0_0,axis,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s00_axis_aclk,
    s00_axis_aresetn,
    s00_axis_tready,
    s00_axis_tdata,
    s00_axis_tstrb,
    s00_axis_tlast,
    s00_axis_tvalid,
    m00_axis_aclk,
    m00_axis_aresetn,
    m00_axis_tvalid,
    m00_axis_tdata,
    m00_axis_tstrb,
    m00_axis_tlast,
    m00_axis_tready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s00_axis_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axis_aclk, ASSOCIATED_BUSIF s00_axis, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input s00_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s00_axis_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axis_aresetn, POLARITY ACTIVE_LOW" *) input s00_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TREADY" *) output s00_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TDATA" *) input [31:0]s00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TSTRB" *) input [3:0]s00_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TLAST" *) input s00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef" *) input s00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m00_axis_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_axis_aclk, ASSOCIATED_BUSIF m00_axis, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input m00_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m00_axis_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_axis_aresetn, POLARITY ACTIVE_LOW" *) input m00_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TVALID" *) output m00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TDATA" *) output [31:0]m00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TSTRB" *) output [3:0]m00_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TLAST" *) output m00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef" *) input m00_axis_tready;

  wire \<const0> ;
  wire \<const1> ;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [3:0]\^m00_axis_tdata ;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tvalid;

  assign m00_axis_tdata[31] = \<const0> ;
  assign m00_axis_tdata[30] = \<const0> ;
  assign m00_axis_tdata[29] = \<const0> ;
  assign m00_axis_tdata[28] = \<const0> ;
  assign m00_axis_tdata[27] = \<const0> ;
  assign m00_axis_tdata[26] = \<const0> ;
  assign m00_axis_tdata[25] = \<const0> ;
  assign m00_axis_tdata[24] = \<const0> ;
  assign m00_axis_tdata[23] = \<const0> ;
  assign m00_axis_tdata[22] = \<const0> ;
  assign m00_axis_tdata[21] = \<const0> ;
  assign m00_axis_tdata[20] = \<const0> ;
  assign m00_axis_tdata[19] = \<const0> ;
  assign m00_axis_tdata[18] = \<const0> ;
  assign m00_axis_tdata[17] = \<const0> ;
  assign m00_axis_tdata[16] = \<const0> ;
  assign m00_axis_tdata[15] = \<const0> ;
  assign m00_axis_tdata[14] = \<const0> ;
  assign m00_axis_tdata[13] = \<const0> ;
  assign m00_axis_tdata[12] = \<const0> ;
  assign m00_axis_tdata[11] = \<const0> ;
  assign m00_axis_tdata[10] = \<const0> ;
  assign m00_axis_tdata[9] = \<const0> ;
  assign m00_axis_tdata[8] = \<const0> ;
  assign m00_axis_tdata[7] = \<const0> ;
  assign m00_axis_tdata[6] = \<const0> ;
  assign m00_axis_tdata[5] = \<const0> ;
  assign m00_axis_tdata[4] = \<const0> ;
  assign m00_axis_tdata[3:0] = \^m00_axis_tdata [3:0];
  assign m00_axis_tstrb[3] = \<const1> ;
  assign m00_axis_tstrb[2] = \<const1> ;
  assign m00_axis_tstrb[1] = \<const1> ;
  assign m00_axis_tstrb[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis inst
       (.m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tdata(\^m00_axis_tdata ),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_master
   (m00_axis_tdata,
    m00_axis_tvalid,
    m00_axis_tlast,
    m00_axis_aclk,
    m00_axis_aresetn,
    m00_axis_tready);
  output [3:0]m00_axis_tdata;
  output m00_axis_tvalid;
  output m00_axis_tlast;
  input m00_axis_aclk;
  input m00_axis_aresetn;
  input m00_axis_tready;

  wire axis_tlast_delay_i_1_n_0;
  wire axis_tvalid_delay_i_1_n_0;
  wire clear;
  wire count0;
  wire \count[3]_i_1_n_0 ;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [3:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire [1:0]mst_exec_state;
  wire \mst_exec_state[0]_i_1_n_0 ;
  wire \mst_exec_state[0]_i_2_n_0 ;
  wire \mst_exec_state[1]_i_1_n_0 ;
  wire \mst_exec_state[1]_i_2_n_0 ;
  wire [4:0]p_0_in__0;
  wire [3:0]p_1_in;
  wire [0:0]read_pointer_reg__0;
  wire [4:0]sel0;
  wire tx_done_i_1_n_0;
  wire tx_done_i_2_n_0;
  wire tx_done_reg_n_0;
  wire tx_en;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    axis_tlast_delay_i_1
       (.I0(m00_axis_tdata[1]),
        .I1(read_pointer_reg__0),
        .I2(m00_axis_tdata[2]),
        .I3(m00_axis_tdata[3]),
        .I4(m00_axis_aresetn),
        .O(axis_tlast_delay_i_1_n_0));
  FDRE axis_tlast_delay_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_tlast_delay_i_1_n_0),
        .Q(m00_axis_tlast),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0400)) 
    axis_tvalid_delay_i_1
       (.I0(m00_axis_tdata[3]),
        .I1(mst_exec_state[1]),
        .I2(mst_exec_state[0]),
        .I3(m00_axis_aresetn),
        .O(axis_tvalid_delay_i_1_n_0));
  FDRE axis_tvalid_delay_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_tvalid_delay_i_1_n_0),
        .Q(m00_axis_tvalid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(sel0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .O(\count[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44044444)) 
    \count[4]_i_1 
       (.I0(mst_exec_state[1]),
        .I1(mst_exec_state[0]),
        .I2(sel0[3]),
        .I3(\mst_exec_state[0]_i_2_n_0 ),
        .I4(sel0[4]),
        .O(count0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_2 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(sel0[4]),
        .O(p_0_in__0[4]));
  FDRE \count_reg[0] 
       (.C(m00_axis_aclk),
        .CE(count0),
        .D(p_0_in__0[0]),
        .Q(sel0[0]),
        .R(clear));
  FDRE \count_reg[1] 
       (.C(m00_axis_aclk),
        .CE(count0),
        .D(p_0_in__0[1]),
        .Q(sel0[1]),
        .R(clear));
  FDRE \count_reg[2] 
       (.C(m00_axis_aclk),
        .CE(count0),
        .D(p_0_in__0[2]),
        .Q(sel0[2]),
        .R(clear));
  FDRE \count_reg[3] 
       (.C(m00_axis_aclk),
        .CE(count0),
        .D(\count[3]_i_1_n_0 ),
        .Q(sel0[3]),
        .R(clear));
  FDRE \count_reg[4] 
       (.C(m00_axis_aclk),
        .CE(count0),
        .D(p_0_in__0[4]),
        .Q(sel0[4]),
        .R(clear));
  LUT5 #(
    .INIT(32'hFF00BFFF)) 
    \mst_exec_state[0]_i_1 
       (.I0(\mst_exec_state[0]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .I3(mst_exec_state[0]),
        .I4(mst_exec_state[1]),
        .O(\mst_exec_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \mst_exec_state[0]_i_2 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .O(\mst_exec_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF8FA0000)) 
    \mst_exec_state[1]_i_1 
       (.I0(mst_exec_state[1]),
        .I1(mst_exec_state[0]),
        .I2(\mst_exec_state[1]_i_2_n_0 ),
        .I3(tx_done_reg_n_0),
        .I4(m00_axis_aresetn),
        .O(\mst_exec_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \mst_exec_state[1]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .I2(mst_exec_state[0]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\mst_exec_state[1]_i_2_n_0 ));
  FDRE \mst_exec_state_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\mst_exec_state[0]_i_1_n_0 ),
        .Q(mst_exec_state[0]),
        .R(clear));
  FDRE \mst_exec_state_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\mst_exec_state[1]_i_1_n_0 ),
        .Q(mst_exec_state[1]),
        .R(1'b0));
  FDRE \read_pointer_reg[0] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(p_1_in[0]),
        .Q(read_pointer_reg__0),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \stream_data_out[0]_i_1 
       (.I0(read_pointer_reg__0),
        .O(p_1_in[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \stream_data_out[1]_i_1 
       (.I0(read_pointer_reg__0),
        .I1(m00_axis_tdata[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \stream_data_out[2]_i_1 
       (.I0(read_pointer_reg__0),
        .I1(m00_axis_tdata[1]),
        .I2(m00_axis_tdata[2]),
        .O(p_1_in[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \stream_data_out[3]_i_1 
       (.I0(m00_axis_aresetn),
        .O(clear));
  LUT4 #(
    .INIT(16'h0020)) 
    \stream_data_out[3]_i_2 
       (.I0(m00_axis_tready),
        .I1(m00_axis_tdata[3]),
        .I2(mst_exec_state[1]),
        .I3(mst_exec_state[0]),
        .O(tx_en));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \stream_data_out[3]_i_3 
       (.I0(m00_axis_tdata[1]),
        .I1(read_pointer_reg__0),
        .I2(m00_axis_tdata[2]),
        .I3(m00_axis_tdata[3]),
        .O(p_1_in[3]));
  FDSE \stream_data_out_reg[0] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(p_1_in[0]),
        .Q(m00_axis_tdata[0]),
        .S(clear));
  FDRE \stream_data_out_reg[1] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(p_1_in[1]),
        .Q(m00_axis_tdata[1]),
        .R(clear));
  FDRE \stream_data_out_reg[2] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(p_1_in[2]),
        .Q(m00_axis_tdata[2]),
        .R(clear));
  FDRE \stream_data_out_reg[3] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(p_1_in[3]),
        .Q(m00_axis_tdata[3]),
        .R(clear));
  LUT5 #(
    .INIT(32'hAA8AAAAA)) 
    tx_done_i_1
       (.I0(tx_done_i_2_n_0),
        .I1(mst_exec_state[0]),
        .I2(mst_exec_state[1]),
        .I3(m00_axis_tdata[3]),
        .I4(m00_axis_tready),
        .O(tx_done_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAABAAAA00000000)) 
    tx_done_i_2
       (.I0(tx_done_reg_n_0),
        .I1(m00_axis_tdata[1]),
        .I2(read_pointer_reg__0),
        .I3(m00_axis_tdata[2]),
        .I4(m00_axis_tdata[3]),
        .I5(m00_axis_aresetn),
        .O(tx_done_i_2_n_0));
  FDRE tx_done_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(tx_done_i_1_n_0),
        .Q(tx_done_reg_n_0),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave
   (s00_axis_tready,
    s00_axis_aclk,
    s00_axis_tlast,
    s00_axis_aresetn,
    s00_axis_tvalid);
  output s00_axis_tready;
  input s00_axis_aclk;
  input s00_axis_tlast;
  input s00_axis_aresetn;
  input s00_axis_tvalid;

  wire mst_exec_state;
  wire mst_exec_state_i_1_n_0;
  wire [9:0]p_0_in;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tready_INST_0_i_1_n_0;
  wire s00_axis_tvalid;
  wire write_pointer;
  wire \write_pointer[8]_i_2_n_0 ;
  wire \write_pointer[9]_i_1_n_0 ;
  wire \write_pointer[9]_i_4_n_0 ;
  wire [9:0]write_pointer_reg__0;
  wire writes_done;
  wire writes_done_i_1_n_0;
  wire writes_done_i_2_n_0;
  wire writes_done_i_3_n_0;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2E00)) 
    mst_exec_state_i_1
       (.I0(s00_axis_tvalid),
        .I1(mst_exec_state),
        .I2(writes_done),
        .I3(s00_axis_aresetn),
        .O(mst_exec_state_i_1_n_0));
  FDRE mst_exec_state_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(mst_exec_state_i_1_n_0),
        .Q(mst_exec_state),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    s00_axis_tready_INST_0
       (.I0(s00_axis_tready_INST_0_i_1_n_0),
        .I1(mst_exec_state),
        .O(s00_axis_tready));
  LUT6 #(
    .INIT(64'h55555557FFFFFFFF)) 
    s00_axis_tready_INST_0_i_1
       (.I0(write_pointer_reg__0[9]),
        .I1(write_pointer_reg__0[5]),
        .I2(write_pointer_reg__0[4]),
        .I3(write_pointer_reg__0[7]),
        .I4(write_pointer_reg__0[6]),
        .I5(write_pointer_reg__0[8]),
        .O(s00_axis_tready_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \write_pointer[0]_i_1 
       (.I0(write_pointer_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \write_pointer[1]_i_1 
       (.I0(write_pointer_reg__0[0]),
        .I1(write_pointer_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \write_pointer[2]_i_1 
       (.I0(write_pointer_reg__0[1]),
        .I1(write_pointer_reg__0[0]),
        .I2(write_pointer_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \write_pointer[3]_i_1 
       (.I0(write_pointer_reg__0[2]),
        .I1(write_pointer_reg__0[0]),
        .I2(write_pointer_reg__0[1]),
        .I3(write_pointer_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \write_pointer[4]_i_1 
       (.I0(write_pointer_reg__0[3]),
        .I1(write_pointer_reg__0[1]),
        .I2(write_pointer_reg__0[0]),
        .I3(write_pointer_reg__0[2]),
        .I4(write_pointer_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \write_pointer[5]_i_1 
       (.I0(write_pointer_reg__0[4]),
        .I1(write_pointer_reg__0[2]),
        .I2(write_pointer_reg__0[0]),
        .I3(write_pointer_reg__0[1]),
        .I4(write_pointer_reg__0[3]),
        .I5(write_pointer_reg__0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \write_pointer[6]_i_1 
       (.I0(write_pointer_reg__0[5]),
        .I1(\write_pointer[8]_i_2_n_0 ),
        .I2(write_pointer_reg__0[4]),
        .I3(write_pointer_reg__0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \write_pointer[7]_i_1 
       (.I0(write_pointer_reg__0[6]),
        .I1(write_pointer_reg__0[4]),
        .I2(\write_pointer[8]_i_2_n_0 ),
        .I3(write_pointer_reg__0[5]),
        .I4(write_pointer_reg__0[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \write_pointer[8]_i_1 
       (.I0(write_pointer_reg__0[7]),
        .I1(write_pointer_reg__0[5]),
        .I2(\write_pointer[8]_i_2_n_0 ),
        .I3(write_pointer_reg__0[4]),
        .I4(write_pointer_reg__0[6]),
        .I5(write_pointer_reg__0[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \write_pointer[8]_i_2 
       (.I0(write_pointer_reg__0[2]),
        .I1(write_pointer_reg__0[0]),
        .I2(write_pointer_reg__0[1]),
        .I3(write_pointer_reg__0[3]),
        .O(\write_pointer[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \write_pointer[9]_i_1 
       (.I0(s00_axis_aresetn),
        .O(\write_pointer[9]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \write_pointer[9]_i_2 
       (.I0(s00_axis_tvalid),
        .I1(mst_exec_state),
        .I2(s00_axis_tready_INST_0_i_1_n_0),
        .O(write_pointer));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \write_pointer[9]_i_3 
       (.I0(write_pointer_reg__0[8]),
        .I1(write_pointer_reg__0[6]),
        .I2(\write_pointer[9]_i_4_n_0 ),
        .I3(write_pointer_reg__0[7]),
        .I4(write_pointer_reg__0[9]),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \write_pointer[9]_i_4 
       (.I0(write_pointer_reg__0[4]),
        .I1(write_pointer_reg__0[2]),
        .I2(write_pointer_reg__0[0]),
        .I3(write_pointer_reg__0[1]),
        .I4(write_pointer_reg__0[3]),
        .I5(write_pointer_reg__0[5]),
        .O(\write_pointer[9]_i_4_n_0 ));
  FDRE \write_pointer_reg[0] 
       (.C(s00_axis_aclk),
        .CE(write_pointer),
        .D(p_0_in[0]),
        .Q(write_pointer_reg__0[0]),
        .R(\write_pointer[9]_i_1_n_0 ));
  FDRE \write_pointer_reg[1] 
       (.C(s00_axis_aclk),
        .CE(write_pointer),
        .D(p_0_in[1]),
        .Q(write_pointer_reg__0[1]),
        .R(\write_pointer[9]_i_1_n_0 ));
  FDRE \write_pointer_reg[2] 
       (.C(s00_axis_aclk),
        .CE(write_pointer),
        .D(p_0_in[2]),
        .Q(write_pointer_reg__0[2]),
        .R(\write_pointer[9]_i_1_n_0 ));
  FDRE \write_pointer_reg[3] 
       (.C(s00_axis_aclk),
        .CE(write_pointer),
        .D(p_0_in[3]),
        .Q(write_pointer_reg__0[3]),
        .R(\write_pointer[9]_i_1_n_0 ));
  FDRE \write_pointer_reg[4] 
       (.C(s00_axis_aclk),
        .CE(write_pointer),
        .D(p_0_in[4]),
        .Q(write_pointer_reg__0[4]),
        .R(\write_pointer[9]_i_1_n_0 ));
  FDRE \write_pointer_reg[5] 
       (.C(s00_axis_aclk),
        .CE(write_pointer),
        .D(p_0_in[5]),
        .Q(write_pointer_reg__0[5]),
        .R(\write_pointer[9]_i_1_n_0 ));
  FDRE \write_pointer_reg[6] 
       (.C(s00_axis_aclk),
        .CE(write_pointer),
        .D(p_0_in[6]),
        .Q(write_pointer_reg__0[6]),
        .R(\write_pointer[9]_i_1_n_0 ));
  FDRE \write_pointer_reg[7] 
       (.C(s00_axis_aclk),
        .CE(write_pointer),
        .D(p_0_in[7]),
        .Q(write_pointer_reg__0[7]),
        .R(\write_pointer[9]_i_1_n_0 ));
  FDRE \write_pointer_reg[8] 
       (.C(s00_axis_aclk),
        .CE(write_pointer),
        .D(p_0_in[8]),
        .Q(write_pointer_reg__0[8]),
        .R(\write_pointer[9]_i_1_n_0 ));
  FDRE \write_pointer_reg[9] 
       (.C(s00_axis_aclk),
        .CE(write_pointer),
        .D(p_0_in[9]),
        .Q(write_pointer_reg__0[9]),
        .R(\write_pointer[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCFEEE00000000)) 
    writes_done_i_1
       (.I0(writes_done),
        .I1(writes_done_i_2_n_0),
        .I2(s00_axis_tready_INST_0_i_1_n_0),
        .I3(s00_axis_tlast),
        .I4(write_pointer),
        .I5(s00_axis_aresetn),
        .O(writes_done_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    writes_done_i_2
       (.I0(write_pointer_reg__0[8]),
        .I1(write_pointer_reg__0[9]),
        .I2(writes_done_i_3_n_0),
        .I3(\write_pointer[8]_i_2_n_0 ),
        .O(writes_done_i_2_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    writes_done_i_3
       (.I0(write_pointer_reg__0[5]),
        .I1(write_pointer_reg__0[4]),
        .I2(write_pointer_reg__0[7]),
        .I3(write_pointer_reg__0[6]),
        .O(writes_done_i_3_n_0));
  FDRE writes_done_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(writes_done_i_1_n_0),
        .Q(writes_done),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
