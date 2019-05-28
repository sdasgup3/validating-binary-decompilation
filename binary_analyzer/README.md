## Compiling the proto definition of binary analysis file
```
cd /home/sdasgup3/Github/validating-binary-decompilation/binary_analyzer
protoc -I=. --python_out=.  binary_analysis.proto
```

## Running binary analysis
```
BIN=get_sign
rm -rf idal64.log ${BIN}.log ${BIN}.cfg
/home/sdasgup3/ida-6.95/idal64 -Lidal64.log -B -S"/home/sdasgup3/Github/validating-binary-decompilation/binary_analyzer/binary_analysis.py --output ${BIN}.cfg --log_file ${BIN}.log --arch amd64 --os linux --entrypoint main" ${BIN}
```
