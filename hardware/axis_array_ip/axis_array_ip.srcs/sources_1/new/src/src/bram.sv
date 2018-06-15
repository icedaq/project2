`timescale 1ns / 1ps

// Single port bram from https://timetoexplore.net/blog/block-ram-in-verilog-with-vivado
// Modified by P. Liniger.

module BRam #(
    parameter ADDR_WIDTH = 10,
    parameter DATA_WIDTH = 8,
    parameter DEPTH = 784,
    parameter MEM_INIT_FILE = ""
    ) (
   
    input wire i_clk,
    input wire [ADDR_WIDTH-1:0] i_addr, 
    output reg [DATA_WIDTH-1:0] o_data 
    );
    
    reg read = 1'b1;
    reg [DATA_WIDTH-1:0] memory_array [0:DEPTH-1]; 

    generate
      if (MEM_INIT_FILE != "") begin: use_init_file
        initial
          $readmemh(MEM_INIT_FILE, memory_array, 0, DEPTH-1);
      end else begin: init_bram_to_zero
        integer ram_index;
        initial
          for (ram_index = 0; ram_index < DEPTH; ram_index = ram_index + 1)
            memory_array[ram_index] = {DATA_WIDTH{1'b0}};
      end
    endgenerate

    always @ (posedge i_clk)
    begin
    if (read)
        begin
            o_data <= memory_array[i_addr];
        end
    else
        begin
            memory_array[i_addr] <= o_data;
        end
    end
    
endmodule
						