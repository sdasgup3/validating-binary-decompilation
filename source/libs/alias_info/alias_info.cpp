//===-- aliasInfo.cpp - Static analysis for stack height approximation
//--------------------------------------==//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.md for details.
//
//===----------------------------------------------------------------------===//
//
// This implements a function pass to approximate the max stack height of each
// function.
//
//===----------------------------------------------------------------------===//

#define DEBUG_TYPE "aliasInfo"
#include "alias_info.h"
#include "llvm/ADT/PostOrderIterator.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/raw_ostream.h"

#define RET_ADDRESS_SIZE 8

using namespace llvm;

char aliasInfo::ID = 0;
static RegisterPass<aliasInfo> X("alias-info", "Print alias analysis info");
// static RegisterPass<aliasInfo>
//    X("ssh", "To Determine the max static stack height (ssh) of a function");

/*******************************************************************
  * Function :   runOnFunction
  * Purpose  :   Entry point for aliasInfo pass
********************************************************************/
bool aliasInfo::runOnModule(Module &M) {
  Mod = &M;

  // AA = &getAnalysis<BasicAAWrapperPass>().getResult();

  std::unordered_set<llvm::Value *> LS;

  for (auto &Func : *Mod) {
    if (Func.getName() != "get_sign") {
      continue;
    }
    AA = &getAnalysis<AAResultsWrapperPass>(Func).getAAResults();
    llvm::errs() << "Function : " << Func.getName() << "\n";
    for (auto &B : Func) {
      for (auto &I : B) {
        if (auto *LI = dyn_cast<LoadInst>(&I)) {
          Value *ptr = LI->getPointerOperand();
          LS.insert(ptr);
          continue;
        }
        if (auto *SI = dyn_cast<StoreInst>(&I)) {
          Value *ptr = SI->getPointerOperand();
          LS.insert(ptr);
          continue;
        }
      }
    }
  }

  for (auto p : LS) {
    for (auto q : LS) {
      auto result = AA->alias(p, q);
      switch (result) {
      case MustAlias:
        llvm::errs() << "MustAlias: ";
        break;
      case MayAlias:
        llvm::errs() << "MayAlias: ";
        break;
      case PartialAlias:
        llvm::errs() << "PartialAlias: ";
        break;
      case NoAlias:
        llvm::errs() << "NoAlias: ";
        break;
      default:
        break;
      }
      p->printAsOperand(errs(), false);
      // llvm::errs() << *p;
      llvm::errs() << ", ";
      q->printAsOperand(errs(), false);
      // llvm::errs() << *q;
      llvm::errs() << "\n";
    }
  }

  return false; // Analysis pass
}
