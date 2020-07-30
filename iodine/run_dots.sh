#!/bin/sh

pip3 install -r iodine/requirements.txt

# Run training with a cut down size.
python3 -m iodine.main \
  -f with dots\
  data.shuffle_buffer=2 \
  data.batch_size=2 \
  n_z=4 \
  num_components=3 \
  stop_after_steps=11
