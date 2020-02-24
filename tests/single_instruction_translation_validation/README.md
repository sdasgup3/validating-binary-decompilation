## Single instruction validation

### Pre-requisites
  - Build K
  ```bash
  cd Github
  git clone --recursive git@github.com:sdasgup3/k.git
  cd k
  git checkout bin-decomp-val

  git submodule update --init --recursive
  sudo apt-get install build-essential m4 openjdk-8-jdk libgmp-dev libmpfr-dev pkg-config flex z3 libz3-dev maven opam python3 cmake zlib1g-dev libboost-test-dev libyaml-dev libjemalloc-dev
  curl -sSL https://get.haskellstack.org/ | sh

  sudo apt-get install openjdk-8-jdk
  sudo apt-get install maven
  mvn package -DskipTests   -DskipKTest -Dllvm.backend.skip -DskipDocs -Dhaskell.backend.skip
  ```

  - [Build X86 Semantics](https://github.com/kframework/X86-64-semantics#to-compile-the-x86-64-semantics)
  ```bash
  cd Github
  git clone git@github.com:kframework/X86-64-semantics.git
  cd X86-semantics/semantics
  ../scripts/kompile.pl --backend java
  ../scripts/run-single-c-file.sh ../tests/program-tests/bubblesort/test.c java |& tee /tmp/run.log
  ```

  - [Build LLVM Semantics](https://github.com/sdasgup3/llvm-verified-backend)
  ```bash

  cd Github
  git clone git@github.com:sdasgup3/llvm-verified-backend.git
  cd llvm-verified-backend
  # git checkout working // Takes insane time for krove run
  git checkout single-instruction-val

  ./scripts/kompile-all.sh --llvm
  ./scripts/build-parser.sh
  ```

### Run Instructions
  - [Register Variants](https://github.com/sdasgup3/validating-binary-decompilation/tree/master/tests/single_instruction_translation_validation/mcsema/README.md)


### Results
  - [Register Variants](https://github.com/sdasgup3/validating-binary-decompilation/blob/master/tests/single_instruction_translation_validation/mcsema/docs/FailureReasons.md)
