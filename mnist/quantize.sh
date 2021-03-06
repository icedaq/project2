#!/bin/bash

# Freeze the stored graph
tensorflow/bazel-bin/tensorflow/python/tools/freeze_graph \
	--input_graph=model/mnist_graph.pb \
    --input_checkpoint=model/checkpoint/checkpoint-0 \
	--output_graph=model/frozen_mnist.pb \
	--output_node_name=output

# Quantize the graph
tensorflow/bazel-bin/tensorflow/tools/graph_transforms/transform_graph \
  --in_graph=model/frozen_mnist.pb \
  --out_graph=model/quantized_mnist.pb \
  --inputs=input \
  --outputs=output \
  --transforms='add_default_attributes strip_unused_nodes(type=float, shape="1,299,299,3")
    remove_nodes(op=Identity, op=CheckNumerics) fold_constants(ignore_errors=true)
    fold_batch_norms fold_old_batch_norms quantize_weights quantize_nodes
    strip_unused_nodes sort_by_execution_order'