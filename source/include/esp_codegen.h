//===-- esp_codegen.h --===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.md for details.
//
//===----------------------------------------------------------------------===//
//
// This file provide class definition and functionality to approximate the max
// stack frame size for each fucntion.
//
//===----------------------------------------------------------------------===//

#ifndef __ESP_CODEGEN__
#define __ESP_CODEGEN__

#include "llvm/IR/InstIterator.h"
#include "llvm/IR/InstVisitor.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Pass.h"
#include <map>
#include <string>
using namespace std;
using namespace llvm;

namespace llvm {

class esp_codegen : public ModulePass {
private:
  Module *Mod;

public:
  static char ID;

  esp_codegen() : ModulePass(ID) {}

  virtual bool runOnModule(Module &M);

  virtual void getAnalysisUsage(AnalysisUsage &AU) const {
    AU.setPreservesAll();
  };
};

} // namespace llvm

#endif
