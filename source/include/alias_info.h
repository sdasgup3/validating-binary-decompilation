//===-- max_stack_height.h - Static analysis for stack height approximation
//--------------------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file provide class definition and functionality to approximate the max
// stack frame size for each fucntion.
//
//===----------------------------------------------------------------------===//

#ifndef __ALIASINFO_H__
#define __ALIASINFO_H__

#include "llvm/IR/Instructions.h"
#include "llvm/Pass.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/BasicAliasAnalysis.h"
#include "llvm/Analysis/BasicAliasAnalysis.h"
#include <unordered_set>

namespace llvm {

class aliasInfo : public ModulePass {
private:
  Module *Mod;

public:
  static char ID;
  llvm::AliasAnalysis *AA;
  //llvm::BasicAAResult *AA;

  aliasInfo() : ModulePass(ID) {
  }

  virtual bool runOnModule(Module &M);

  virtual void getAnalysisUsage(AnalysisUsage &AU) const {
    //AU.setPreservesAll();
    AU.addRequired<AAResultsWrapperPass>();
    //AU.addRequired<BasicAAWrapperPass>();
  };
};
}

#endif
