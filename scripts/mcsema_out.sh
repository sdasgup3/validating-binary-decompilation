#!/bin/bash
set -x

# Examples:
# To run mcsema on a binary `binlabel` with entry point and `entry`
#   $ ./run-all-tests.sh
# Note: the outputs will be generated in the current directory

binary=$1
binlabel=$(basename $binary)
entry=$2
IDA=/home/sdasgup3/ida-6.95/idal64
mcsema-disass --disassembler $HOME/ida-6.95/idal64 --os linux --arch amd64 --output $binlabel.cfg --binary $binary --entrypoint $entry
#mcsema-lift-4.0 --os linux --arch amd64 --cfg $binlabel.cfg --output $binlabel.bc -disable_dead_store_elimination -disable_register_forwarding -disable_optimizer -keep_memops
#mcsema-lift-4.0 --os linux --arch amd64 --cfg $binlabel.cfg --output $binlabel.bc -disable_register_forwarding -disable_dead_store_elimination # now mcsema have -enable_register_forwarding



#mcsema-lift-4.0 --os linux --arch amd64 --cfg $binlabel.cfg --output $binlabel.bc -disable_optimizer -disable_dead_store_elimination -disable_optimizer_O3
mcsema-lift-4.0 --os linux --arch amd64 --cfg $binlabel.cfg --output $binlabel.bc -disable_optimizer
llvm-dis $binlabel.bc -o $binlabel.unoptimized.ll
#mcsema-lift-4.0 --os linux --arch amd64 --cfg $binlabel.cfg --output $binlabel.bc -disable_optimizer_O3
#llvm-dis $binlabel.bc -o $binlabel.dead_stores_eliminated.ll

#mcsema-lift-4.0 --os linux --arch amd64 --cfg $binlabel.cfg --output $binlabel.bc
#llvm-dis $binlabel.bc -o $binlabel.optimizedplus.ll

#mcsema-lift-4.0 --os linux --arch amd64 --cfg $binlabel.cfg --output $binlabel.bc -disable_dead_store_elimination
mcsema-lift-4.0 --os linux --arch amd64 --cfg $binlabel.cfg --output $binlabel.bc
llvm-dis $binlabel.bc -o $binlabel.optimized.ll

#mcsema-lift-4.0 --os linux --arch amd64 --cfg $binlabel.cfg --output $binlabel.bc -disable_optimizer
#llvm-dis $binlabel.bc -o $binlabel.legacy.ll

#/home/sdasgup3/ida-6.95/idal64 -Lidal64.log -B -S"/usr/local/lib/python2.7/dist-packages/mcsema_disass-2.0-py2.7.egg/mcsema_disass/ida/get_cfg.py --output x.cfg --log_file x.log --arch amd64 --os linux --entrypoint main" get_sign


## revng
#/home/sdasgup3/Github/orchestra
#. ./environment
#/home/sdasgup3/Github/orchestra/root/usr/x86_64-pc-linux-gnu/x86_64-gentoo-linux-musl/gcc-binlabel/4.9.3/x86_64-gentoo-linux-musl-gcc -static getsign.c -o getsign.x86-64
#/home/sdasgup3/Github/orchestra/build/revng/revng translate -O0 getsign.x86-64

## Optimizations
## opt -S -inline -O3 -strip  get_sign.bin.optimized.ll  -o get_sign.bin.optimized.opt.ll
