`timescale 1ns / 1ps



module Array # (
    parameter DATA_BITS         = 8,
    parameter NUM_CLASSES       = 10,
    parameter CLASS_BITS = 4, // 10 classes --> 4 bits
    parameter ACCUMULATOR_BITS = 32,
    parameter BASE_PATH = "/home/icedaq/code/project2/weights/prod/"
    )  (

    input clock,
    input reset,
    
    input [DATA_BITS-1:0] data_in,
    input data_ready,
    output [CLASS_BITS-1:0] class_out   // this is the result.

    );
    
    genvar i;
    generate for (i = 0; i < NUM_CLASSES; i = i + 1) begin : MACArgMAXPair
    
        wire [DATA_BITS-1:0]        cell_data_in, cell_data_out;
        wire [CLASS_BITS-1:0]       cell_maxclass_in, cell_maxclass_out;
        wire [ACCUMULATOR_BITS-1:0] cell_max_in, cell_max_out, cell_accumulator;
        wire                        cell_data_ready_in, cell_data_ready_out, cell_maxarg_stall;
    
        // The first MultCell will get the input.
        if (i == 0) begin: ArrayIn
            assign cell_data_in = data_in;
            assign cell_maxclass_in = {CLASS_BITS{1'b1}};
            assign cell_max_in = {ACCUMULATOR_BITS{1'b0}};
            assign cell_data_ready_in = data_ready;
        end else begin: ArrayRest
            assign cell_data_in = MACArgMAXPair[i-1].cell_data_out;
            assign cell_max_in = MACArgMAXPair[i-1].cell_max_out;
            assign cell_maxclass_in = MACArgMAXPair[i-1].cell_maxclass_out;
            assign cell_data_ready_in = MACArgMAXPair[i-1].cell_data_ready_out;
        end
        
        // The last ArgMaxCell will be our output
        if (i == NUM_CLASSES - 1) begin: ArrayOut
            assign class_out = cell_maxclass_out;
        end
        
        // In simulation we can use sformatf but this does not work when synthesized.
        // $sformatf("/home/icedaq/code/project2/weights/test/weights_%0d.dat", i)
        localparam [53*8:1] filenames [0 : 9]   = '{{BASE_PATH, "weights_0.dat"}, {BASE_PATH, "weights_1.dat"}, {BASE_PATH, "weights_2.dat"},
         {BASE_PATH, "weights_3.dat"}, {BASE_PATH, "weights_4.dat"}, {BASE_PATH, "weights_5.dat"}, {BASE_PATH, "weights_6.dat"}, {BASE_PATH, "weights_7.dat"},
         {BASE_PATH, "weights_8.dat"}, {BASE_PATH, "weights_9.dat"}};
         
         
        // The MultCell
        MultCell #(
            .DATA_BITS(DATA_BITS),
            .ACCUMULATOR_BITS(ACCUMULATOR_BITS),
            .MEM_INIT_FILE(filenames[i]),
            .ADDR_WIDTH(10) //maybe put this into a parameter.
            ) mult_cell (
            .clock(clock),
            .reset(reset),
            
            .data_in(cell_data_in),
            .data_ready_in(cell_data_ready_in),
            .data_ready_out(cell_data_ready_out),
            .data_out(cell_data_out),
            
            .accumulator_out(cell_accumulator),
            .maxarg_stall(cell_maxarg_stall)
            );
         
       ArgMaxCell #(
            .CLASS_BITS(4),
            .ACCUMULATOR_BITS(32),
            .CLASS_NR(i)
            ) argmax_cell (
            .clock(clock),
            .reset(reset),
            
            .accumulator_in(cell_accumulator),
            .maxarg_stall(cell_maxarg_stall),
            
            .max_in(cell_max_in),
            .maxclass_in(cell_maxclass_in),
            .max_out(cell_max_out),
            .maxclass_out(cell_maxclass_out)
            );
            
    end endgenerate
        
endmodule
