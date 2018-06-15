# Run inference on the quantized graph.

from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import argparse
import sys

from tensorflow.examples.tutorials.mnist import input_data

import tensorflow as tf

def load_graph(model_file):
  graph = tf.Graph()
  graph_def = tf.GraphDef()

  with open(model_file, "rb") as f:
    graph_def.ParseFromString(f.read())
  with graph.as_default():
    tf.import_graph_def(graph_def)

  return graph

def main(_):
  # Import data
  mnist = input_data.read_data_sets(FLAGS.data_dir, one_hot=True)

  # Variables
  model_file = "model/quantized_mnist.pb"

  # Load our graph
  print('Loading the model: ' + model_file)
  graph = load_graph(model_file)

  # DEBUG: Print all the nodes in the graph
  # print(sess.graph.get_operations())
  # [print(n.name) for n in tf.get_default_graph().as_graph_def().node]

  input_name = "import/input:0"
  output_name = "import/output:0"
  x = graph.get_tensor_by_name(input_name)
  y = graph.get_tensor_by_name(output_name)

  print('Starting session.')
  with tf.Session(graph=graph) as sess:

    # Placeholder for testing.
    y_ = tf.placeholder(tf.float32, [None, 10])

    correct_prediction = tf.equal(tf.argmax(y, 1), tf.argmax(y_, 1))
    accuracy = tf.reduce_mean(tf.cast(correct_prediction, tf.float32))
    result = sess.run(accuracy, feed_dict={x: mnist.test.images,
                                      y_: mnist.test.labels})
    print("Accuracy of quantized model: " + str(result))
    tf.summary.FileWriter("board", sess.graph)

if __name__ == '__main__':
  parser = argparse.ArgumentParser()
  parser.add_argument('--data_dir', type=str, default='/tmp/tensorflow/mnist/input_data',
                      help='Directory for storing input data')
  FLAGS, unparsed = parser.parse_known_args()
  tf.app.run(main=main, argv=[sys.argv[0]] + unparsed)
  