`timescale 1ns / 1ps
`include "biases.svh"

// These modules are chained to find out, which class has the highest value.
// We need to pass out two things: The highest number itself and the the number of the class this number belongs to.

module ArgMaxCell # (
   
   parameter CLASS_BITS = 4, // 10 classes --> 4 bits
   parameter ACCUMULATOR_BITS = 32,
   parameter CLASS_NR //This number is used to identify the class

    ) (
    
    input clock,
    input reset,
    
    // input of the accumulated number.
    input [ACCUMULATOR_BITS-1:0]   accumulator_in,
    
    // see if the corresponing MAC cell is ready.
    input                           maxarg_stall,
    
    // input and output the max class and the current maximum.
    input [ACCUMULATOR_BITS-1:0]   max_in,
    input [CLASS_BITS-1:0]         maxclass_in,
    output [ACCUMULATOR_BITS-1:0]   max_out,
    output [CLASS_BITS-1:0]         maxclass_out
    
    );
    
    wire [ACCUMULATOR_BITS-1:0]  max_with_bias;
    reg [ACCUMULATOR_BITS-1:0]   max;
    reg [CLASS_BITS-1:0]         maxclass;
    
    always @(posedge clock) begin
    
        if (reset) begin
            max        <= {ACCUMULATOR_BITS{1'b0}}; 
            maxclass   <= {CLASS_BITS{1'b1}}; // since we only have 10 classes, this class does not exist. Using this, we can detect, when we have a real result. This saves some logic.
        end    
        if (!maxarg_stall) begin
            if ( max_with_bias < max_in ) begin
                max <= max_in;
                maxclass <= maxclass_in;
            end
            else if ( max_with_bias == max_in ) begin
                max <= max_in;
                maxclass <= maxclass_in;
            end
            else begin
                max <= max_with_bias;
                maxclass <= CLASS_NR;
            end        
        end else begin // not sure, if this works. If we go into maxarg_stall again, we reset the internal values.
            max        <= {ACCUMULATOR_BITS{1'b0}};
            maxclass   <= {CLASS_BITS{1'b1}};
        end
    end
    
    assign max_with_bias  = accumulator_in + biases[CLASS_NR];
    assign max_out  = max;
    assign maxclass_out = maxclass;
    
endmodule
