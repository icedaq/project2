connect_debug_port u_ila_0/probe1 [get_nets [list {design_1_i/axis_array_0_M00_AXIS_TDATA[0]} {design_1_i/axis_array_0_M00_AXIS_TDATA[1]} {design_1_i/axis_array_0_M00_AXIS_TDATA[2]} {design_1_i/axis_array_0_M00_AXIS_TDATA[3]} {design_1_i/axis_array_0_M00_AXIS_TDATA[4]} {design_1_i/axis_array_0_M00_AXIS_TDATA[5]} {design_1_i/axis_array_0_M00_AXIS_TDATA[6]} {design_1_i/axis_array_0_M00_AXIS_TDATA[7]} {design_1_i/axis_array_0_M00_AXIS_TDATA[8]} {design_1_i/axis_array_0_M00_AXIS_TDATA[9]} {design_1_i/axis_array_0_M00_AXIS_TDATA[10]} {design_1_i/axis_array_0_M00_AXIS_TDATA[11]} {design_1_i/axis_array_0_M00_AXIS_TDATA[12]} {design_1_i/axis_array_0_M00_AXIS_TDATA[13]} {design_1_i/axis_array_0_M00_AXIS_TDATA[14]} {design_1_i/axis_array_0_M00_AXIS_TDATA[15]} {design_1_i/axis_array_0_M00_AXIS_TDATA[16]} {design_1_i/axis_array_0_M00_AXIS_TDATA[17]} {design_1_i/axis_array_0_M00_AXIS_TDATA[18]} {design_1_i/axis_array_0_M00_AXIS_TDATA[19]} {design_1_i/axis_array_0_M00_AXIS_TDATA[20]} {design_1_i/axis_array_0_M00_AXIS_TDATA[21]} {design_1_i/axis_array_0_M00_AXIS_TDATA[22]} {design_1_i/axis_array_0_M00_AXIS_TDATA[23]} {design_1_i/axis_array_0_M00_AXIS_TDATA[24]} {design_1_i/axis_array_0_M00_AXIS_TDATA[25]} {design_1_i/axis_array_0_M00_AXIS_TDATA[26]} {design_1_i/axis_array_0_M00_AXIS_TDATA[27]} {design_1_i/axis_array_0_M00_AXIS_TDATA[28]} {design_1_i/axis_array_0_M00_AXIS_TDATA[29]} {design_1_i/axis_array_0_M00_AXIS_TDATA[30]} {design_1_i/axis_array_0_M00_AXIS_TDATA[31]}]]
connect_debug_port u_ila_0/probe2 [get_nets [list design_1_i/axis_array_0_M00_AXIS_TLAST]]
connect_debug_port u_ila_0/probe3 [get_nets [list design_1_i/axis_array_0_M00_AXIS_TREADY]]
connect_debug_port u_ila_0/probe4 [get_nets [list design_1_i/axis_array_0_M00_AXIS_TVALID]]




connect_debug_port u_ila_0/probe2 [get_nets [list {design_1_i/axis_array_ip_0/debug_data[0]} {design_1_i/axis_array_ip_0/debug_data[1]} {design_1_i/axis_array_ip_0/debug_data[2]} {design_1_i/axis_array_ip_0/debug_data[3]} {design_1_i/axis_array_ip_0/debug_data[4]} {design_1_i/axis_array_ip_0/debug_data[5]} {design_1_i/axis_array_ip_0/debug_data[6]} {design_1_i/axis_array_ip_0/debug_data[7]} {design_1_i/axis_array_ip_0/debug_data[8]} {design_1_i/axis_array_ip_0/debug_data[9]} {design_1_i/axis_array_ip_0/debug_data[10]} {design_1_i/axis_array_ip_0/debug_data[11]} {design_1_i/axis_array_ip_0/debug_data[12]} {design_1_i/axis_array_ip_0/debug_data[13]} {design_1_i/axis_array_ip_0/debug_data[14]} {design_1_i/axis_array_ip_0/debug_data[15]} {design_1_i/axis_array_ip_0/debug_data[16]} {design_1_i/axis_array_ip_0/debug_data[17]} {design_1_i/axis_array_ip_0/debug_data[18]} {design_1_i/axis_array_ip_0/debug_data[19]} {design_1_i/axis_array_ip_0/debug_data[20]} {design_1_i/axis_array_ip_0/debug_data[21]} {design_1_i/axis_array_ip_0/debug_data[22]} {design_1_i/axis_array_ip_0/debug_data[23]} {design_1_i/axis_array_ip_0/debug_data[24]} {design_1_i/axis_array_ip_0/debug_data[25]} {design_1_i/axis_array_ip_0/debug_data[26]} {design_1_i/axis_array_ip_0/debug_data[27]} {design_1_i/axis_array_ip_0/debug_data[28]} {design_1_i/axis_array_ip_0/debug_data[29]} {design_1_i/axis_array_ip_0/debug_data[30]} {design_1_i/axis_array_ip_0/debug_data[31]}]]
connect_debug_port u_ila_0/probe14 [get_nets [list design_1_i/axis_array_ip_0/debug_state]]



connect_debug_port u_ila_0/probe22 [get_nets [list {design_1_i/axis_array_ip_0/inst/array/MACArgMAXPair[9].mult_cell/addr}]]



connect_debug_port u_ila_0/probe2 [get_nets [list {design_1_i/axis_array_ip_0/inst/myMaster/stream_data_out[0]} {design_1_i/axis_array_ip_0/inst/myMaster/stream_data_out[1]} {design_1_i/axis_array_ip_0/inst/myMaster/stream_data_out[2]} {design_1_i/axis_array_ip_0/inst/myMaster/stream_data_out[3]}]]



create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 4 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER true [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 2048 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list design_1_i/processing_system7_0/inst/FCLK_CLK0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 4 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {design_1_i/axis_array_ip_0/inst/myMaster/M_AXIS_TDATA[0]} {design_1_i/axis_array_ip_0/inst/myMaster/M_AXIS_TDATA[1]} {design_1_i/axis_array_ip_0/inst/myMaster/M_AXIS_TDATA[2]} {design_1_i/axis_array_ip_0/inst/myMaster/M_AXIS_TDATA[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 4 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {design_1_i/axis_array_ip_0/inst/myMaster/class_in[0]} {design_1_i/axis_array_ip_0/inst/myMaster/class_in[1]} {design_1_i/axis_array_ip_0/inst/myMaster/class_in[2]} {design_1_i/axis_array_ip_0/inst/myMaster/class_in[3]}]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_FCLK_CLK0]
