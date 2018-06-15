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

    # The weights.
    # We need one file per row --> 10 files. weights_i.dat
    # Every line contains a hex number.
    filenumber = 0
    for i in quantized_weights:
        wfile = 'output_data/weights/weights_%d.dat' % filenumber
        f = open(wfile, 'w')
        filenumber += 1
        for j in i:
            tmp = "%02x\n" % j
            f.write(tmp)
        f.close()

    # The biases
    # Since we only have 10 biases, we store them in one header file as parameter.
    # (b[i][0] / 0.005402);
    # localparam [31:0] biases [9 : 0] = '{32'h00000001 ...};
    bfile = 'output_data/biases.svh'
    f = open(bfile, 'w')
    biases_string = "localparam [31:0] biases [0 : 9] = {"

    # We do not want any negative biases. Therefore we make them positive.
    # We just add the smallest bias to all the others. Then we scale.
    smallestBias = biases[0]
    for b in biases:
        if (smallestBias >= b):
            smallestBias = b
    for b in biases:
        bias_scaled = (b + abs(smallestBias)) / 0.005402 # calculate this number!
        biases_string = biases_string + "32\'h%08x, " % int(round(bias_scaled))
    biases_string = biases_string[:-2]
    biases_string += "};"
    f.write(biases_string)
    f.close()

    print("Wrote files")

if __name__ == '__main__':
    main()