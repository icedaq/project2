# Copyright 2015 The TensorFlow Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ==============================================================================

"""A very simple MNIST classifier.

See extensive documentation at
https://www.tensorflow.org/get_started/mnist/beginners
"""
from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import argparse
import sys

from tensorflow.examples.tutorials.mnist import input_data

import tensorflow as tf

FLAGS = None

def main(_):
  # Import data
  mnist = input_data.read_data_sets(FLAGS.data_dir, one_hot=True)

  # Variables
  input_graph_name = "mnist_graph.pb"
  checkpoint_state_name = "checkpoint_state"

  # Create the model
  x = tf.placeholder(tf.float32, [None, 784], name="input")
  W = tf.Variable(tf.zeros([784, 10]))
  b = tf.Variable(tf.zeros([10]), name="bias")
  y = tf.nn.softmax(tf.add(tf.matmul(x, W),b), name="output")

  # Define loss and optimizer
  y_ = tf.placeholder(tf.float32, [None, 10])

  # Cross entropy and optimization.
  cross_entropy = tf.reduce_mean(-tf.reduce_sum(y_ * tf.log(y), reduction_indices=[1]))
  train_step = tf.train.GradientDescentOptimizer(0.5).minimize(cross_entropy)

  sess = tf.InteractiveSession()
  tf.global_variables_initializer().run()
  # Train
  for _ in range(1000):
    batch_xs, batch_ys = mnist.train.next_batch(100)
    sess.run(train_step, feed_dict={x: batch_xs, y_: batch_ys})

  # Create the saver
  saver = tf.train.Saver()
  checkpoint_path = saver.save(sess, 'model/checkpoint/checkpoint', global_step=0,
          latest_filename=checkpoint_state_name)
  # print (checkpoint_path) --> model/checkpoint/checkpoint-0
  tf.train.write_graph(sess.graph, 'model/', input_graph_name)
  # tf.summary.FileWriter("board", sess.graph)

  # DEBUG: Print all the nodes in the graph
  # [print(n.name) for n in tf.get_default_graph().as_graph_def().node]

  # Test trained model
  correct_prediction = tf.equal(tf.argmax(y, 1), tf.argmax(y_, 1))
  accuracy = tf.reduce_mean(tf.cast(correct_prediction, tf.float32))
  result = sess.run(accuracy, feed_dict={x: mnist.test.images,
                                      y_: mnist.test.labels})
  print("Trained accuracy is: " + str(result))

if __name__ == '__main__':
  parser = argparse.ArgumentParser()
  parser.add_argument('--data_dir', type=str, default='/tmp/tensorflow/mnist/input_data',
                      help='Directory for storing input data')
  FLAGS, unparsed = parser.parse_known_args()
  tf.app.run(main=main, argv=[sys.argv[0]] + unparsed)
