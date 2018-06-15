"""Extract weights from the frozen protobuf graph."""

from tensorflow.core.framework import graph_pb2
import fileinput
import numpy as np


def extract_bias(node):
    """Extracts values from the tensor_content field of a 1-dim float32 tensor."""
    value = node.attr['value']
    tensor = value.tensor
    float_val = np.frombuffer(tensor.tensor_content, dtype=np.float32)
    return float_val


def extract_quantized_weights(node):
    """Extracts values from the tensor_content field of a 2-dim uint8 tensor."""
    value = node.attr['value']
    tensor = value.tensor
    dim = [d.size for d in tensor.tensor_shape.dim]
    uint8_val = np.frombuffer(tensor.tensor_content, dtype=np.uint8)
    uint8_val = np.reshape(uint8_val, dim)
    return uint8_val


def extract_quantized_boundary(node):
    """Extracts float32 scalar from the tensor_content field."""
    value = node.attr['value']
    tensor = value.tensor
    val = np.frombuffer(tensor.tensor_content, dtype=np.float32)[0]
    return val

def main():
    file_name = 'model/quantized_mnist.pb'
    graph_def = graph_pb2.GraphDef()

    with open(file_name, 'rb') as f:
        graph_def.ParseFromString(f.read())

    for node in graph_def.node:
        if node.name == 'bias':
            biases = extract_bias(node)
        elif node.name == 'Variable_quantized_const':
            quantized_weights = extract_quantized_weights(node)
        elif node.name == 'Variable_quantized_max':
            quantized_max = extract_quantized_boundary(node)
        elif node.name == 'Variable_quantized_min':
            quantized_min = extract_quantized_boundary(node)

    # The weight matrix is 784x10 but we need 10x784. Transpose it.
    quantized_weights = quantized_weights.transpose()

    # Writing the data to the c header file.
    header_filename = 'output_data/headerfile_quantized.h'
    f = open(header_filename, 'w')

    # The weights.
    weights_string = "const char W[wRows][wCols] = {"
    rows = 0
    columns = 0
    for i in quantized_weights:
        weights_string += "{"
        rows += 1
        columns = 0
        for j in i:
            columns += 1
            weights_string += "%d," % j
        weights_string = weights_string[:-1]
        weights_string += "},"
    weights_string = weights_string[:-1]
    weights_string += "};\n"

    rows_string = "const int wRows = %d; const int wCols = %d; const int xCols = 1;\n" % (rows,columns)
    
    f.write(rows_string)
    f.write(weights_string)

    # The bias.
    biases_string = "const float b[wRows][xCols] = {"
    for b in biases:
        biases_string = biases_string + "{%f}," % b
    biases_string = biases_string[:-1]
    biases_string += "};\n"

    f.write(biases_string)

    # To finish we just add the quantized min and max.
    min_string = "const float quant_min = %f;\n" % quantized_min
    max_string = "const float quant_max = %f;\n" % quantized_max

    f.write(min_string)
    f.write(max_string)
    f.close

    print("Wrote file: ", header_filename)

if __name__ == '__main__':
    main()
