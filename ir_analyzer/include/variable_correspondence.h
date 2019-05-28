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

namespace llvm {

class variable_correspondence : public FunctionPass {
private:
  Function *Func;

public:
  static char ID;

  variable_correspondence() : FunctionPass(ID) {}

  virtual bool runOnFunction(Function &F);
  void dfa();

  virtual void getAnalysisUsage(AnalysisUsage &AU) const {
    AU.setPreservesAll();
  };
};
}

#endif
