## Running testcase
```
/home/sdasgup3/Github/validating-binary-decompilation/scripts/mcsema_out.sh <bin> <entrypoint>

cat filelist.txt | parallel -j1 "~/Install/llvm/llvm.4.0.0.install/bin/opt -load /home/sdasgup3/Github/validating-binary-decompilation/ir_analyzer/build/lib/LLVMvariable_correspondence.so  < {}.unoptimized.ll  --var_corr   -disable-output -target-function _get_sign -init-state-function _init_var_correspondence --output-dfg-file {}.unoptimized.dot"
cat filelist.txt | parallel -j1 "~/Install/llvm/llvm.4.0.0.install/bin/opt -load /home/sdasgup3/Github/validating-binary-decompilation/ir_analyzer/build/lib/LLVMvariable_correspondence.so  < {}.dead_stores_eliminated.ll  --var_corr   -disable-output -target-function _get_sign -init-state-function _init_var_correspondence --output-dfg-file {}.dead_stores_eliminated.dot"
cat filelist.txt | parallel -j1 "~/Install/llvm/llvm.4.0.0.install/bin/opt -load /home/sdasgup3/Github/validating-binary-decompilation/ir_analyzer/build/lib/LLVMvariable_correspondence.so  < {}.optimized.ll  --var_corr   -disable-output -target-function _get_sign -init-state-function _init_var_correspondence --output-dfg-file }.optimized.dot"

cat filelist.txt | parallel -j1 "dot -Tps {}.unoptimized.dot -o {}.unoptimized.ps"
cat filelist.txt | parallel -j1 "dot -Tps {}.dead_stores_eliminated.dot -o {}.dead_stores_eliminated.ps"
cat filelist.txt | parallel -j1 "dot -Tps {}.optimized.dot -o {}.optimized.ps"
```
