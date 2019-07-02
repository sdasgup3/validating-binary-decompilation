#!/bin/bash
set -x

bin=$1
entry=$2
IDA=/home/sdasgup3/ida-6.95/idal64
mcsema-disass --disassembler /home/sdasgup3/ida-6.95/idal64 --os linux --arch amd64 --output $bin.cfg --binary $bin --entrypoint $entry
#mcsema-lift-4.0 --os linux --arch amd64 --cfg $bin.cfg --output $bin.bc -disable_dead_store_elimination -disable_register_forwarding -disable_optimizer -keep_memops
mcsema-lift-4.0 --os linux --arch amd64 --cfg $bin.cfg --output $bin.bc -disable_register_forwarding -disable_dead_store_elimination
llvm-dis $bin.bc -o $bin.ll

#/home/sdasgup3/ida-6.95/idal64 -Lidal64.log -B -S"/usr/local/lib/python2.7/dist-packages/mcsema_disass-2.0-py2.7.egg/mcsema_disass/ida/get_cfg.py --output x.cfg --log_file x.log --arch amd64 --os linux --entrypoint main" get_sign


## revng
#/home/sdasgup3/Github/orchestra
#. ./environment
#/home/sdasgup3/Github/orchestra/root/usr/x86_64-pc-linux-gnu/x86_64-gentoo-linux-musl/gcc-bin/4.9.3/x86_64-gentoo-linux-musl-gcc -static getsign.c -o getsign.x86-64
#/home/sdasgup3/Github/orchestra/build/revng/revng translate -O0 getsign.x86-64
