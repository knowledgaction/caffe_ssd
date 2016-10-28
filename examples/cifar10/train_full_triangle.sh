#!/usr/bin/env sh

TOOLS=./build/tools

$TOOLS/caffe train \
    --solver=examples/cifar10/cifar10_full_triangle_solver.prototxt

# reduce learning rate by factor of 10
$TOOLS/caffe train \
    --solver=examples/cifar10/cifar10_full_triangle_solver_lr1.prototxt \
    --snapshot=examples/cifar10/cifar10_full_triangle_iter_16000.solverstate

# reduce learning rate by factor of 10
$TOOLS/caffe train \
    --solver=examples/cifar10/cifar10_full_triangle_solver_lr2.prototxt \
    --snapshot=examples/cifar10/cifar10_full_triangle_iter_22000.solverstate
