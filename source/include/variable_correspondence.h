//===-- variable_correspondence.h --===//
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

#ifndef __VARIABLE_CORRESPONDENCE_H__
#define __VARIABLE_CORRESPONDENCE_H__

#include "llvm/IR/InstIterator.h"
#include "llvm/IR/InstVisitor.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Pass.h"
#include <map>
#include <string>
using namespace std;
using namespace llvm;

namespace llvm {

class variable_correspondence : public ModulePass {
private:
  Module *Mod;

public:
  static char ID;

  variable_correspondence() : ModulePass(ID) {}

  virtual bool runOnModule(Module &F);
  void dfa(Module &M);

  void find_dummy_init_corr(Module &M);
  void find_init_corr(Module &M);

  virtual void getAnalysisUsage(AnalysisUsage &AU) const {
    AU.setPreservesAll();
  };
};

} // namespace llvm

#endif
