`timescale 1ns / 1ps

module MultCell #(
    
    parameter DATA_BITS = 8,
    parameter ACCUMULATOR_BITS = 32,
    parameter MEM_INIT_FILE = "",
    parameter ADDR_WIDTH = 10
    
    ) (

    input clock,
    input reset,
    
    // input of our data
    input [DATA_BITS-1:0]   data_in,
    input                   data_ready_in,
    output                  data_ready_out,
    
    // pass data to next module
    output [DATA_BITS-1:0]  data_out,
    
    // pass output to the maxarg modules
    output [ACCUMULATOR_BITS-1:0]   accumulator_out,
    output                          maxarg_stall
    );
    
    // registers
    reg [ACCUMULATOR_BITS-1:0]  accumulator;
    reg [DATA_BITS-1:0]  data; 
    reg [ADDR_WIDTH-1:0]    addr;
    reg                     done, data_ready;
    
    // wires
    wire [ADDR_WIDTH-1:0]   addr_out;
    wire [DATA_BITS-1:0]   weight_in; 
    
    // bram with the weights. The weights get loaded from the dat file.
    BRam #(
        .ADDR_WIDTH(ADDR_WIDTH), // We have 784 weights therefore we need a 10bit address bus.
        .DATA_WIDTH(DATA_BITS),
        .DEPTH(784),
        .MEM_INIT_FILE(MEM_INIT_FILE)
        ) ram (
       .i_clk(clock),
       .i_addr(addr_out),
       .o_data(weight_in));
    
    always @(posedge clock) begin
        if (reset) begin
            data        <= {DATA_BITS{1'b0}};
            accumulator <= {ACCUMULATOR_BITS{1'b0}};
            addr        <= {ADDR_WIDTH{1'b0}};
            done        <= 1'b0;
            data_ready  <= 1'b0;
        end else begin
            if (!done) begin
                // As soon as we acutally get data, we increment the address.
                if (data_ready_in == 1'b1) begin
                    data <= data_in;
                    data_ready <= data_ready_in;
                    
                    // At this point, we should have gone through the whole input vector. So we are done now.
                    if (addr == 10'd783) begin
                        done <= 1'b1;
                    end else begin
                        addr <= addr + 1;
                    end
                    
                end
    
                // Make sure that we do not copy X from accumulator_out.
                // This is a bit hacky, though.
                if ( addr > 10'd0) begin
                    accumulator <= accumulator_out ;
                end
            end else begin // If we are done, we can reset the values and start from scratch.
                done        <= 1'b0;
                accumulator <= {ACCUMULATOR_BITS{1'b0}};
                addr        <= {ADDR_WIDTH{1'b0}};
            end
        end
    end

    // orward the final value
    assign data_out        = data;
    assign data_ready_out      = data_ready;
    //assign accumulator_out = accumulator;
    assign addr_out        = addr;
    assign accumulator_out = weight_in * data + accumulator;
    assign maxarg_stall    = ~done;

    
endmodule
