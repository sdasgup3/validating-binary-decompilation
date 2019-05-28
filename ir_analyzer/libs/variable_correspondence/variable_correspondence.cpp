//===-- variable_correspondence.cpp - Finding variable correspondence --===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.md for details.
//
//===----------------------------------------------------------------------===//

#define DEBUG_TYPE "variable_correspondence"
#include "variable_correspondence.h"
#include "llvm/ADT/PostOrderIterator.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

char variable_correspondence::ID = 0;
static RegisterPass<variable_correspondence> X("var_corr", "To Do");

cl::opt<std::string>
    FunctionToAnalyze("target_function",
                      cl::desc("Specify the llvm function name to analyze"),
                      cl::value_desc("Function Name"), cl::Required);

/*******************************************************************
  * Function :   runOnFunction
  * Purpose  :
********************************************************************/
bool variable_correspondence::runOnFunction(Function &F) {
  Func = &F;

  dfa();

  return false; // Analysis pass
}

/*******************************************************************
  * Function :  print use def chains
  * Purpose  :
********************************************************************/
void def_use(Instruction *I, int tabcount) {
  for (User *U : I->users()) {
    if (Instruction *Inst = dyn_cast<Instruction>(U)) {
      for (int i = 0; i < tabcount; i++) {
        errs() << "\t";
      }
      errs() << *Inst << "\n";
      def_use(Inst, tabcount + 1);
    }
  }
}

/*******************************************************************
  * Function :  print use def chains
  * Purpose  :
********************************************************************/
void use_defs(Instruction *Inst, int tabcount) {
  for (Use &U : Inst->operands()) {
    Value *v = U.get();
    Instruction *I = dyn_cast<Instruction>(v);
    if (!I) {
      // errs() << "Skipped Instr: " << *v << " Type: " << *(v->getType()) <<
      // "\n";
      if (Argument *arg = dyn_cast<Argument>(v)) {
        for (int i = 0; i < tabcount; i++) {
          errs() << "\t";
        }
        errs() << *arg << "\n";
      }
      continue;
    }

    for (int i = 0; i < tabcount; i++) {
      errs() << "\t";
    }
    errs() << *I << "\n";
    use_defs(I, tabcount + 1);
  }
}

/*******************************************************************
  * Function :  dfa
  * Purpose  :
********************************************************************/
void variable_correspondence::dfa() {
  if (Func->getName() != FunctionToAnalyze || Func->isIntrinsic() ||
      Func->isDeclaration()) {
    return;
  }

  errs() << "==========================================\n";
  errs() << "Function : " << Func->getName() << "\n";
  errs() << "==========================================\n";

  for (auto &B : *Func) {
    for (auto &I : B) {
      errs() << "Instruction: ";
      I.dump();
      Instruction *Inst = dyn_cast<Instruction>(&I);
      errs() << "Use Def\n";
      use_defs(Inst, 1);
      errs() << "Def Use\n";
      def_use(Inst, 1);
      errs() << "\n\n";
    }
  }
}
