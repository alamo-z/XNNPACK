#!/bin/sh
# Copyright 2019 Google LLC
#
# This source code is licensed under the BSD-style license found in the
# LICENSE file in the root directory of this source tree.

############################### AArch64 assembly ##############################
tools/xngen src/f16-gemm/4x16-aarch64-neonfp16arith-ld32.S.in        -D INC=0 -o src/f16-gemm/gen/4x16-minmax-aarch64-neonfp16arith-ld32.S
tools/xngen src/f16-gemm/4x16-aarch64-neonfp16arith-ld32.S.in        -D INC=1 -o src/f16-gemm/gen-inc/4x16inc-minmax-aarch64-neonfp16arith-ld32.S

tools/xngen src/f16-gemm/6x16-aarch64-neonfp16arith-ld32.S.in        -D INC=0 -o src/f16-gemm/gen/6x16-minmax-aarch64-neonfp16arith-ld32.S
tools/xngen src/f16-gemm/6x16-aarch64-neonfp16arith-ld32.S.in        -D INC=1 -o src/f16-gemm/gen-inc/6x16inc-minmax-aarch64-neonfp16arith-ld32.S

########################## ARM NEON with FP16 compute #########################
### LD64 micro-kernels
tools/xngen src/f16-gemm/neonfp16arith-ld64.c.in -D MR=4 -D NR=8 -o src/f16-gemm/gen/4x8-neonfp16arith-ld64.c
tools/xngen src/f16-gemm/neonfp16arith-ld64.c.in -D MR=6 -D NR=8 -o src/f16-gemm/gen/6x8-neonfp16arith-ld64.c
tools/xngen src/f16-gemm/neonfp16arith-ld64.c.in -D MR=8 -D NR=8 -o src/f16-gemm/gen/8x8-neonfp16arith-ld64.c

################################## Unit tests #################################
tools/generate-gemm-test.py --spec test/f16-gemm-minmax.yaml --output test/f16-gemm-minmax.cc
