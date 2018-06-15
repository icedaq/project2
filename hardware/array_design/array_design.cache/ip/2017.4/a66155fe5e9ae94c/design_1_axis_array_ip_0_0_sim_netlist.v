// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Fri Jun  8 17:35:27 2018
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
   (s00_axis_tready,
    debug_state,
    debug_data,
    s00_axis_aclk,
    s00_axis_aresetn,
    s00_axis_tvalid,
    s00_axis_tdata);
  output s00_axis_tready;
  output debug_state;
  output [31:0]debug_data;
  input s00_axis_aclk;
  input s00_axis_aresetn;
  input s00_axis_tvalid;
  input [31:0]s00_axis_tdata;

  wire [31:0]debug_data;
  wire debug_state;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tready;
  wire s00_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave mySlave
       (.debug_data(debug_data),
        .debug_state(debug_state),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_axis_array_ip_0_0,axis,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (debug_data,
    debug_state,
    s00_axis_aclk,
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
  output [31:0]debug_data;
  output debug_state;
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
  wire [31:0]debug_data;
  wire debug_state;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
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
  assign m00_axis_tdata[3] = \<const0> ;
  assign m00_axis_tdata[2] = \<const0> ;
  assign m00_axis_tdata[1] = \<const0> ;
  assign m00_axis_tdata[0] = \<const0> ;
  assign m00_axis_tlast = \<const0> ;
  assign m00_axis_tstrb[3] = \<const1> ;
  assign m00_axis_tstrb[2] = \<const1> ;
  assign m00_axis_tstrb[1] = \<const1> ;
  assign m00_axis_tstrb[0] = \<const1> ;
  assign m00_axis_tvalid = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis inst
       (.debug_data(debug_data),
        .debug_state(debug_state),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave
   (s00_axis_tready,
    debug_state,
    debug_data,
    s00_axis_aclk,
    s00_axis_aresetn,
    s00_axis_tvalid,
    s00_axis_tdata);
  output s00_axis_tready;
  output debug_state;
  output [31:0]debug_data;
  input s00_axis_aclk;
  input s00_axis_aresetn;
  input s00_axis_tvalid;
  input [31:0]s00_axis_tdata;

  wire curData;
  wire [31:0]debug_data;
  wire debug_state;
  wire mst_exec_state_i_1_n_0;
  wire reg_data_ready_i_1_n_0;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tready;
  wire s00_axis_tvalid;

  LUT2 #(
    .INIT(4'h8)) 
    \curData[31]_i_1 
       (.I0(s00_axis_aresetn),
        .I1(s00_axis_tready),
        .O(curData));
  FDRE \curData_reg[0] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[0]),
        .Q(debug_data[0]),
        .R(1'b0));
  FDRE \curData_reg[10] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[10]),
        .Q(debug_data[10]),
        .R(1'b0));
  FDRE \curData_reg[11] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[11]),
        .Q(debug_data[11]),
        .R(1'b0));
  FDRE \curData_reg[12] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[12]),
        .Q(debug_data[12]),
        .R(1'b0));
  FDRE \curData_reg[13] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[13]),
        .Q(debug_data[13]),
        .R(1'b0));
  FDRE \curData_reg[14] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[14]),
        .Q(debug_data[14]),
        .R(1'b0));
  FDRE \curData_reg[15] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[15]),
        .Q(debug_data[15]),
        .R(1'b0));
  FDRE \curData_reg[16] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[16]),
        .Q(debug_data[16]),
        .R(1'b0));
  FDRE \curData_reg[17] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[17]),
        .Q(debug_data[17]),
        .R(1'b0));
  FDRE \curData_reg[18] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[18]),
        .Q(debug_data[18]),
        .R(1'b0));
  FDRE \curData_reg[19] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[19]),
        .Q(debug_data[19]),
        .R(1'b0));
  FDRE \curData_reg[1] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[1]),
        .Q(debug_data[1]),
        .R(1'b0));
  FDRE \curData_reg[20] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[20]),
        .Q(debug_data[20]),
        .R(1'b0));
  FDRE \curData_reg[21] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[21]),
        .Q(debug_data[21]),
        .R(1'b0));
  FDRE \curData_reg[22] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[22]),
        .Q(debug_data[22]),
        .R(1'b0));
  FDRE \curData_reg[23] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[23]),
        .Q(debug_data[23]),
        .R(1'b0));
  FDRE \curData_reg[24] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[24]),
        .Q(debug_data[24]),
        .R(1'b0));
  FDRE \curData_reg[25] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[25]),
        .Q(debug_data[25]),
        .R(1'b0));
  FDRE \curData_reg[26] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[26]),
        .Q(debug_data[26]),
        .R(1'b0));
  FDRE \curData_reg[27] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[27]),
        .Q(debug_data[27]),
        .R(1'b0));
  FDRE \curData_reg[28] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[28]),
        .Q(debug_data[28]),
        .R(1'b0));
  FDRE \curData_reg[29] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[29]),
        .Q(debug_data[29]),
        .R(1'b0));
  FDRE \curData_reg[2] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[2]),
        .Q(debug_data[2]),
        .R(1'b0));
  FDRE \curData_reg[30] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[30]),
        .Q(debug_data[30]),
        .R(1'b0));
  FDRE \curData_reg[31] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[31]),
        .Q(debug_data[31]),
        .R(1'b0));
  FDRE \curData_reg[3] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[3]),
        .Q(debug_data[3]),
        .R(1'b0));
  FDRE \curData_reg[4] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[4]),
        .Q(debug_data[4]),
        .R(1'b0));
  FDRE \curData_reg[5] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[5]),
        .Q(debug_data[5]),
        .R(1'b0));
  FDRE \curData_reg[6] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[6]),
        .Q(debug_data[6]),
        .R(1'b0));
  FDRE \curData_reg[7] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[7]),
        .Q(debug_data[7]),
        .R(1'b0));
  FDRE \curData_reg[8] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[8]),
        .Q(debug_data[8]),
        .R(1'b0));
  FDRE \curData_reg[9] 
       (.C(s00_axis_aclk),
        .CE(curData),
        .D(s00_axis_tdata[9]),
        .Q(debug_data[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mst_exec_state_i_1
       (.I0(s00_axis_aresetn),
        .I1(s00_axis_tvalid),
        .O(mst_exec_state_i_1_n_0));
  FDRE mst_exec_state_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(mst_exec_state_i_1_n_0),
        .Q(s00_axis_tready),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    reg_data_ready_i_1
       (.I0(s00_axis_tready),
        .I1(s00_axis_aresetn),
        .I2(debug_state),
        .O(reg_data_ready_i_1_n_0));
  FDRE reg_data_ready_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(reg_data_ready_i_1_n_0),
        .Q(debug_state),
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
