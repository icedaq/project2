#!/bin/bash

source .tox/py27/bin/activate && \
python $1 $2 && \
deactivate

