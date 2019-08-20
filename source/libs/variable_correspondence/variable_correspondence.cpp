//===-- variable_correspondence.cpp - Finding variable correspondence --===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.md for details.
//
//===----------------------------------------------------------------------===//

#include "variable_correspondence.h"
#include "llvm-dfg.h"
#include "signature.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"
#undef DEBUG_TYPE
#define DEBUG_TYPE "variable_correspondence"

using namespace llvm;

char variable_correspondence::ID = 0;
static RegisterPass<variable_correspondence> X("var_corr", "To Do");

cl::opt<std::string>
    FunctionToAnalyze("target-function",
                      cl::desc("Specify the llvm function name to analyze"),
                      cl::value_desc("Function Name"), cl::Required);
cl::opt<std::string> FunctionToFindInitState(
    "init-state-function",
    cl::desc("Specify the llvm function name to determine the initial variable "
             "correspondence"),
    cl::value_desc("Function Name"), cl::Required);

cl::opt<std::string> OutputDFG(
    "output-dfg-file",
    cl::desc(
        "Specify the filename used to dump the llvm DFG for FunctionToAnalyze"),
    cl::value_desc("File Name"));

/*******************************************************************
  * Function :   runOnModule
  * Purpose  :   Entry of the module pass
********************************************************************/
bool variable_correspondence::runOnModule(Module &M) {
  // Func = &F;
  Mod = &M;

  // Find the initial variable correspondence w.r.t a dummy function
  auto signatureInfo = extractSignaturesFromModule(M, FunctionToFindInitState);
  // Find the initial variable correspondence w.r.t the function under analysis
  map<Value *, string> initVariableCorrespondence =
      applySignaturesToModule(M, FunctionToAnalyze, signatureInfo);

  // Extracting data-flow facts
  dfa(M);

  return false; // Analysis pass
}

/*******************************************************************
  * Function :  print use def chains
  * Purpose  :
********************************************************************/
void def_use(Instruction *I, int tabcount) {
  // for (User *U : I->users()) {
  Value::user_iterator S = I->user_begin();
  Value::user_iterator E = I->user_end();
  unsigned count = 0;
  for (; S != E; S++) {
    // errs() << "HERE: " << **S << "\n";
    Instruction *Inst = dyn_cast<Instruction>(*S);
    if (Inst) {
      for (int i = 0; i < tabcount; i++) {
        errs() << "\t";
      }
      // errs() << *Inst << "\n";
      // def_use(Inst, tabcount + 1);
    } else {
      errs() << "User Not Inst: " << *I << "\n";
    }
    count++;
  }

  assert(count == I->getNumUses() && "CHECK2");
}

/*******************************************************************
  * Function :  print use def chains
  * Purpose  :
********************************************************************/
// void use_defs(Instruction *Inst, int tabcount,
//              const map<string, Value *> &INIT_VAR_CORR) {
//  for (Use &U : Inst->operands()) {
//    Value *v = U.get();
//    Instruction *I = dyn_cast<Instruction>(v);
//    if (!I) {
//      errs() << "Skipped Instr: " << *v << " Type: " << *(v->getType()) <<
//      "\n";
//      if (Argument *arg = dyn_cast<Argument>(v)) {
//        for (int i = 0; i < tabcount; i++) {
//          errs() << "\t";
//        }
//        errs() << "Arg: " << *arg << "\n";
//      }
//      continue;
//    }
//
//    for (int i = 0; i < tabcount; i++) {
//      errs() << "\t";
//    }
//
//    bool found_hd_reg = false;
//    for (auto p : INIT_VAR_CORR) {
//      if (p.second == I) {
//        found_hd_reg = true;
//        errs() << p.first << "\n";
//      }
//    }
//
//    if (!found_hd_reg) {
//      errs() << *I << "\n";
//      use_defs(I, tabcount + 1, INIT_VAR_CORR);
//    }
//  }
//}

/*******************************************************************
  * Function :  dfa
  * Purpose  :
********************************************************************/
void variable_correspondence::dfa(Module &M) {
  Function *f;
  for (auto &Func : M) {
    if (string::npos == Func.getName().str().find(FunctionToAnalyze) ||
        Func.isIntrinsic() || Func.isDeclaration()) {
      continue;
    }
    f = &Func;
    break;
  }
  writeDFGToDotFile(f, OutputDFG);
  // errs() << "\n==========================================\n";
  // errs() << "Analysing Function : " << f->getName() << "\n";
  // errs() << "==========================================\n";

  // for (auto &B : *f) {
  //  for (auto &I : B) {
  //    errs() << "Instruction: ";
  //    I.dump();
  //    Instruction *Inst = dyn_cast<Instruction>(&I);
  //    // errs() << "Use Def\n";
  //    // use_defs(Inst, 1);
  //    errs() << "Def Use\n";
  //    def_use(Inst, 1);
  //    errs() << "\n\n";
  //  }
  //}
}
