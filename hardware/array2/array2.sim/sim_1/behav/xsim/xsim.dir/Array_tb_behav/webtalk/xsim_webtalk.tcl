webtalk_init -webtalk_dir /home/icedaq/code/project2/array2/array2.sim/sim_1/behav/xsim/xsim.dir/Array_tb_behav/webtalk/
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "Sat May 19 15:15:56 2018" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "XSIM v2017.4 (64-bit)" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "2086221" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "LIN64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "xsim_vivado" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "6378d3a5-416b-4fb2-b699-ea6db6136b09" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "73c2f0be96ac4794aba1bba2ba32a3ab" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "43" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "Arch" -context "user_environment"
webtalk_add_data -client project -key os_release -value "Arch Linux" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "Intel(R) Core(TM) i7-4771 CPU @ 3.50GHz" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "3754.136 MHz" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "1" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "16.000 GB" -context "user_environment"
webtalk_register_client -client xsim
webtalk_add_data -client xsim -key Command -value "xsim" -context "xsim\\command_line_options"
webtalk_add_data -client xsim -key trace_waveform -value "true" -context "xsim\\usage"
webtalk_add_data -client xsim -key runtime -value "1 us" -context "xsim\\usage"
webtalk_add_data -client xsim -key iteration -value "1" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Time -value "0.04_sec" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Memory -value "129724_KB" -context "xsim\\usage"
webtalk_transmit -clientid 779286670 -regid "" -xml /home/icedaq/code/project2/array2/array2.sim/sim_1/behav/xsim/xsim.dir/Array_tb_behav/webtalk/usage_statistics_ext_xsim.xml -html /home/icedaq/code/project2/array2/array2.sim/sim_1/behav/xsim/xsim.dir/Array_tb_behav/webtalk/usage_statistics_ext_xsim.html -wdm /home/icedaq/code/project2/array2/array2.sim/sim_1/behav/xsim/xsim.dir/Array_tb_behav/webtalk/usage_statistics_ext_xsim.wdm -intro "<H3>XSIM Usage Report</H3><BR>"
webtalk_terminate
