#!/usr/bin/env sh

./build/tools/caffe train \
    --solver=models/VGGNet/VGGNet-D/solver.prototxt \
    --gpu 0 \
    2>&1 | tee models/VGGNet/VGGNet-D/train_vggnetd.log