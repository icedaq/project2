`timescale 1 ns / 1 ps

	module slave #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// AXI4Stream sink: Data Width
		parameter integer C_S_AXIS_TDATA_WIDTH	= 32
	)
	(
		// Users to add ports here
	
		output wire [C_S_AXIS_TDATA_WIDTH-1 : 0] image_out, // handover the data to the array.
		output wire data_ready, // signal the array, that the data is ready.
    
		// User ports ends
		
		// Do not modify the ports beyond this line

		// AXI4Stream sink: Clock
		input wire  S_AXIS_ACLK,
		// AXI4Stream sink: Reset
		input wire  S_AXIS_ARESETN,
		// Ready to accept data in
		output wire  S_AXIS_TREADY,
		// Data in
		input wire [C_S_AXIS_TDATA_WIDTH-1 : 0] S_AXIS_TDATA,
		// Byte qualifier
		input wire [(C_S_AXIS_TDATA_WIDTH/8)-1 : 0] S_AXIS_TSTRB,
		// Indicates boundary of last packet
		input wire  S_AXIS_TLAST,
		// Data is in valid
		input wire  S_AXIS_TVALID
	);

	// Define the states of state machine
	// The control state machine oversees the writing of input streaming data to the FIFO,
	// and outputs the streaming data from the FIFO
	parameter [1:0] IDLE = 1'b0,        // This is the initial/idle state 

	                WRITE_ARRAY  = 1'b1; // In this state FIFO is written with the
	                                    // input stream data S_AXIS_TDATA 
	wire  	axis_tready;
	// State variable
	reg mst_exec_state;  
	// FIFO implementation signals

	assign S_AXIS_TREADY	= axis_tready;
	// Control state machine implementation
	always @(posedge S_AXIS_ACLK) 
	begin  
	  if (!S_AXIS_ARESETN) 
	  // Synchronous reset (active low)
	    begin
	      mst_exec_state <= IDLE;
	    end  
	  else
	    case (mst_exec_state)
	      IDLE: 
	        // The sink starts accepting tdata when 
	        // there tvalid is asserted to mark the
	        // presence of valid streaming data 
	          if (S_AXIS_TVALID)
	            begin
	              mst_exec_state <= WRITE_ARRAY;
	            end
	          else
	            begin
	              mst_exec_state <= IDLE;
	            end
	      WRITE_ARRAY: 
	        if (~S_AXIS_TVALID)
	          begin
	            mst_exec_state <= IDLE;
	          end
	        else
	          begin
	            mst_exec_state <= WRITE_ARRAY;
	          end

	    endcase
	end

	assign axis_tready = (mst_exec_state == WRITE_ARRAY);

    reg [C_S_AXIS_TDATA_WIDTH-1:0] curData;
    reg reg_data_ready;

	always@(posedge S_AXIS_ACLK)
	begin
	  if(!S_AXIS_ARESETN)
	    begin
	      //writes_done <= 1'b0;
	    end  
	  else
	    if (mst_exec_state == WRITE_ARRAY)
	      begin
	           reg_data_ready <= 1'b1;
	           curData <= S_AXIS_TDATA;
	      end
	    else
	      begin
	           reg_data_ready <= 1'b0;
	      end
	end
	    
    assign image_out = curData;
    assign data_ready = reg_data_ready;

	endmodule
