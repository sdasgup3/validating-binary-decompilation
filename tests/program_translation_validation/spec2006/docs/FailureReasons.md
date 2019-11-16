## Removed from consideration
### C++
```
483.xalancbmk
473.astar
471.omnetpp
```

### mcsema missing semantics
```
462.libquantum
mcsema-disass --disassembler /home/ubuntu/ida-6.95/idal64 --os linux --arch amd64_avx --output binary/test.mcsema.cfg --binary binary//test --entrypoint main
mcsema-lift-4.0 --os linux --arch amd64_avx --cfg binary/test.mcsema.cfg --output binary/test.mcsema.bc -disable_dead_store_elimination -disable_optimizer
llvm-dis binary/test.mcsema.bc -o binary/test.mcsema.ll
E1116 07:42:35.823671 43935 Lifter.cpp:123] Missing semantics for instruction (AMD64 40bd06 7 (BYTES 0f 56 15 d3 07 00 00) ORPS_XMMxud_MEMxud (WRITE_OP (REG_256 YMM2)) (READ_OP (REG_256 YMM2)) (READ_OP (DWORD_PTR (ADD (REG_64 PC) (SIGNED_IMM_64 0x7da)))))
E1116 07:42:35.966266 43935 Lifter.cpp:123] Missing semantics for instruction (AMD64 40bbdb 7 (BYTES 0f 56 05 ce 08 00 00) ORPS_XMMxud_MEMxud (WRITE_OP (REG_256 YMM0)) (READ_OP (REG_256 YMM0)) (READ_OP (DWORD_PTR (ADD (REG_64 PC) (SIGNED_IMM_64 0x8d5)))))
E1116 07:42:35.966737 43935 Lifter.cpp:123] Missing semantics for instruction (AMD64 40bc07 7 (BYTES 0f 56 15 a2 08 00 00) ORPS_XMMxud_MEMxud (WRITE_OP (REG_256 YMM2)) (READ_OP (REG_256 YMM2)) (READ_OP (DWORD_PTR (ADD (REG_64 PC) (SIGNED_IMM_64 0x8a9)))))

400.perlbench
mcsema-disass --disassembler /home/ubuntu/ida-6.95/idal64 --os linux --arch amd64_avx --output binary/test.mcsema.cfg --binary binary//test --entrypoint main
Makefile:19: recipe for target 'mcsema' failed
Traceback (most recent call last):
  File "/usr/local/lib/python2.7/dist-packages/mcsema_disass-2.0-py2.7.egg/mcsema_disass/ida/disass.py", line 77, in execute
    cwd=os.path.dirname(__file__))
  File "/usr/lib/python2.7/subprocess.py", line 190, in check_call
    raise CalledProcessError(retcode, cmd)
CalledProcessError: Command '/home/ubuntu/ida-6.95/idal64 -B -S"/usr/local/lib/python2.7/dist-packages/mcsema_disass-2.0-py2.7.egg/mcsema_disass/ida/get_cfg.py --output /home/ubuntu/Github/validating-binary-decompilation/tests/program_translation_validation/spec2006/400.perlbench/binary/test.mcsema.cfg --log_file /dev/null --arch amd64 --os linux --entrypoint main" /tmp/tmpjOt041/test' returned non-zero exit status 1
Generated an invalid (zero-sized) CFG. Please use the --log_file option to see an error log.
make: *** [mcsema] Error 1

403.gcc
mcsema-disass --disassembler /home/ubuntu/ida-6.95/idal64 --os linux --arch amd64_avx --output binary/test.mcsema.cfg --binary binary//test --entrypoint main
Makefile:19: recipe for target 'mcsema' failed
Traceback (most recent call last):
  File "/usr/local/lib/python2.7/dist-packages/mcsema_disass-2.0-py2.7.egg/mcsema_disass/ida/disass.py", line 77, in execute
    cwd=os.path.dirname(__file__))
  File "/usr/lib/python2.7/subprocess.py", line 190, in check_call
    raise CalledProcessError(retcode, cmd)
```

## Compd
  ```
  makefilelist: 4075
  wc docs/compdPass.log docs/compdErr.log
  3883   3883 111880 docs/compdPass.log
   192    192   5306 docs/compdErr.log
  4075   4075 117186 total
  ```
