# Simantic Similarity Matching

## Create the directory layout [Already Populated and need to be done once]
```bash
cd mini-era
cat docs/filelist.txt | parallel  "echo; echo {}; ../../scripts/ssm-extractor.py -P ${HOME}/Github/validating-binary-decompilation/source/build/lib/LLVMfunc-analyzer.so -O ./ bc-seeds/{}/{}.ll"
```
