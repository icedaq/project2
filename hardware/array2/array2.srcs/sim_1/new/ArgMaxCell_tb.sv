`timescale 1ns / 1ps



module ArgMaxCell_tb();

    reg clock_t, reset_t, maxarg_stall_t;
    
    reg [3:0] maxclass_in_t, maxclass_out_t;
    reg [31:0] accumulator_in_t, max_in_t, max_out_t;

    ArgMaxCell #(
        .CLASS_BITS(4),
        .ACCUMULATOR_BITS(32),
        .CLASS_NR(2)
    ) test_cell (
    .clock(clock_t),
    .reset(reset_t),
    
    .accumulator_in(accumulator_in_t),
    .maxarg_stall(maxarg_stall_t),
    
    .max_in(max_in_t),
    .maxclass_in(maxclass_in_t),
    .max_out(max_out_t),
    .maxclass_out(maxclass_out_t)
    );

    // Initialize all variables
    initial begin
    
        clock_t = 0;
        reset_t = 0;
        #1; // Push. Posedge.
        #1; // Negedge.

        // Case where the current class is bigger.
        maxarg_stall_t = 0;
        accumulator_in_t = 5;
        max_in_t = 3;
        maxclass_in_t = 1;
        #1; // Push. Posedge.
        #1; // Negedge.
    
        // Reset
        reset_t = 1;
        #1; // Push. Posedge.
        #1; // Negedge.
        reset_t = 0;
        
        // Case where the current class is smaller.
        accumulator_in_t = 1;
        max_in_t = 3;
        maxclass_in_t = 1;
        #1; // Push. Posedge.
        #1; // Negedge.
       
        $finish;      // Terminate simulation
        end
        
        // Clock generator
        always begin
           #1  clock_t = ~clock_t; // Toggle clock every 5 ticks
        end

endmodule