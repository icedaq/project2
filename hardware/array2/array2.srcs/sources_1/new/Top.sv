`timescale 1ns / 1ps

// This module currently serves as a wrapper for the array itself.
// The array currently only does 1 Byte input at the time.
// Next thing to do here is to split up a 32bit input onto 4 copies of the array.
module Top (

    input clock,
    input reset,
    
    input [31:0] data_in,
    output [31:0] class_out

);

    Array #(
        .DATA_BITS(8),
        .NUM_CLASSES(10),
        .CLASS_BITS(4),
        .ACCUMULATOR_BITS(32)
        ) array (
        .clock(clock),
        .reset(reset),
        
        .data_in(data_in[7:0]),
        .class_out(class_out)
        );

endmodule