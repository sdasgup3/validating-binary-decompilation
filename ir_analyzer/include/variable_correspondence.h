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

#include "llvm/IR/InstVisitor.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Pass.h"
#include <map>
#include <string>
using namespace std;

namespace llvm {

// class variable_correspondence : public FunctionPass {
class variable_correspondence : public ModulePass {
private:
  // Function *Func;
  Module *Mod;
  map<string, Value *> DUMMY_INIT_VAR_CORR, INIT_VAR_CORR;

public:
  static char ID;

  // variable_correspondence() : FunctionPass(ID) {}
  variable_correspondence() : ModulePass(ID) {}

  // virtual bool runOnFunction(Function &F);
  virtual bool runOnModule(Module &F);
  void dfa();

  void find_dummy_init_corr(Function &F);
  void find_init_corr(Function &F);

  virtual void getAnalysisUsage(AnalysisUsage &AU) const {
    AU.setPreservesAll();
  };
};
}

#endif
