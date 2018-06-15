# Set an output prefix, which is the local directory if not specified
PREFIX?=$(shell pwd)
BUILDTAGS=

.PHONY: train quantize test print extract_weights verify

#all: clean fmt lint cbuild sbuild copy
all: train quantize test

# build the client for linux
train:
	@echo "Training and storing the model."
	./run.sh mnist_softmax.py --data_dir=input_data

quantize:
	@echo "Freezing and quantizing the model."
	./quantize.sh

test:
	@echo "Testing the quantized model."
	./run.sh test_quant.py

extract_weights:
	@echo "Extracting weights."
	./run.sh extract_weights.py model/quantized_mnist.pb

create_vivado_files:
	@echo "Creating BRAM init files and verilog header files."
	./run.sh create_vivado_files.py model/quantized_mnist.pb

summarize_graph:
	@echo "Summarizing quantized graph."
	tensorflow/bazel-bin/tensorflow/tools/graph_transforms/summarize_graph --in_graph=model/quantized_mnist.pb --print_structure=true

verify:
	@echo "Verifying model data."
	gcc -o matmul matmul.c
	./matmul

