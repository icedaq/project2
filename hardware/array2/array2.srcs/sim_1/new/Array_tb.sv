`timescale 1ns / 1ps

module Array_tb();

    reg clock_t, reset_t, result_reaty_t;
    
    reg [7:0]   data_in_t;
    reg [3:0]   class_out_t;
    
    Array # (
        .DATA_BITS(8),
        .NUM_CLASSES(10),
        .CLASS_BITS(4),
        .ACCUMULATOR_BITS(32)
    ) test_array (
        .clock(clock_t),
        .reset(reset_t),
        .data_in(data_in_t),
        .class_out(class_out_t)
    );
    
    // Initialize all variables
    initial begin
    
        clock_t = 0;
        reset_t = 1;
        #1; // Push. Posedge.
        #1; // Negedge.
        
         reset_t = 0;

        // This should be easy. Just push in some data!
        for (int i=0; i<784; i=i+1) begin
            data_in_t = 1;
            #1; // Push. Posedge.
            #1; // Negedge.
        end
        
        // what do we need to do to pipeline?
        for (int i=0; i<784; i=i+1) begin
            data_in_t = 2;
            #1; // Push. Posedge.
            #1; // Negedge.
        end
       
        $finish;      // Terminate simulation
        end
        
        // Clock generator
        always begin
           #1  clock_t = ~clock_t; // Toggle clock every 5 ticks
        end

    
endmodule
