#!/bin/bash

if [ "$(uname -s)" == "Darwin" ]; then
  root_dir=$(dirname $(dirname $(greadlink -f $0})))
else
  root_dir=$(dirname $(dirname $(readlink -f $0})))
fi
rm -f ${root_dir}/assets/dist/tflite-*.whl

python ${root_dir}/setup.py bdist_wheel \
  --bdist-dir ${root_dir}/assets/build \
  --dist-dir ${root_dir}/assets/dist
rm -rf ${root_dir}/tflite.egg-info
rm -rf ${root_dir}/build
