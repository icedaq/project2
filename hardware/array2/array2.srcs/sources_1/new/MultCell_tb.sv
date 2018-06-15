`timescale 1ns / 1ps

module MultCell_tb();
       
    reg clock_t, reset_t, maxarg_stall_t, data_ready_t;

    //reg [7:0] data_in_t [0:3];
    reg [7:0] data_in_t, data_out_t;
    reg [31:0] accumulator_out_t;

    MultCell #(
        .DATA_BITS(8),
        .ACCUMULATOR_BITS(32),
        .MEM_INIT_FILE("/home/icedaq/code/project2/array2/array2.srcs/sources_1/new/weights_1.dat"),
        .ADDR_WIDTH(10)
        ) test_cell (
        .clock(clock_t),
        .reset(reset_t),
        
        .data_in(data_in_t),
        .data_ready(data_ready_t),
        .data_out(data_out_t),
        
        .accumulator_out(accumulator_out_t),
        .maxarg_stall(maxarg_stall_t)
        );
        
    // Initialize all variables
    initial begin
    
        clock_t = 0;
        reset_t = 1;
        #1; // Push. Posedge.
        #1; // Negedge.

        reset_t = 0;
    
        data_in_t = 1;
        data_ready_t = 1;
        #1; // Push. Posedge.
        #1; // Negedge.
        
        data_in_t = 2;
        #1; // Push. Posedge.
        #1; // Negedge.
        
        data_in_t = 3;
        #1; // Push. Posedge.
        #1; // Negedge.
       
        data_in_t = 4;
        #1; // Push. Posedge.
        #1; // Negedge.

       
        $finish;      // Terminate simulation
        end
        
        // Clock generator
        always begin
           #1  clock_t = ~clock_t; // Toggle clock every 5 ticks
        end
        
endmodule
