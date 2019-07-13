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
#include "signature.h"
#include "llvm/ADT/PostOrderIterator.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/GraphWriter.h"
#include "llvm/Support/raw_ostream.h"

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
  //  for (User *U : I->users()) {
  //    if (Instruction *Inst = dyn_cast<Instruction>(U)) {
  //      for (int i = 0; i < tabcount; i++) {
  //        errs() << "\t";
  //      }
  //      errs() << *Inst << "\n";
  //      def_use(Inst, tabcount + 1);
  //    }
  //  }
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

static void writeCFGToDotFile(Function &F) {
  std::string Filename = ("cfg." + F.getName() + ".dot").str();
  errs() << "WritingME '" << Filename << "'...";

  std::error_code EC;
  raw_fd_ostream File(Filename, EC, sys::fs::F_Text);

  if (!EC) {
    WriteGraph(File, (const Function *)&F, true, "DSAND");
    errs() << "test\n";
  } else {
    errs() << "  error opening file for writing!";
  }
  errs() << "\n";
}

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

  writeCFGToDotFile(*f);
  // errs() << "\n==========================================\n";
  // errs() << "Analysing Function : " << f->getName() << "\n";
  // errs() << "==========================================\n";

  // for (auto &B : *f) {
  //  for (auto &I : B) {
  //    errs() << "Instruction: ";
  //    I.dump();
  //    Instruction *Inst = dyn_cast<Instruction>(&I);
  //    //errs() << "Use Def\n";
  //    // use_defs(Inst, 1, INIT_VAR_CORR);
  //    // errs() << "Def Use\n";
  //    // def_use(Inst, 1);
  //    errs() << "\n\n";
  //  }
  //}
}

//===--------------------------------------------------------------------===//
// GraphTraits specializations for instructions graphs (data flow graphs)
//===--------------------------------------------------------------------===//

// Provide specializations of GraphTraits to be able to treat a instruction as a
// graph of basic blocks...

// template <> struct GraphTraits<Instruction*> {
//  typedef Instruction *NodeRef;
//  typedef succ_iterator ChildIteratorType;
//
//  static NodeRef getEntryNode(Instruction *I) { return I; }
//  static ChildIteratorType child_begin(NodeRef N) {
//
//    return succ_begin(N->getParent()); }
//  static ChildIteratorType child_end(NodeRef N) { return succ_end(N); }
//};

// template <> struct GraphTraits<BasicBlock*> {
//  typedef BasicBlock *NodeRef;
//  typedef succ_iterator ChildIteratorType;
//
//  static NodeRef getEntryNode(BasicBlock *BB) { return BB; }
//  static ChildIteratorType child_begin(NodeRef N) { return succ_begin(N); }
//  static ChildIteratorType child_end(NodeRef N) { return succ_end(N); }
//};
//
//
// template <> struct GraphTraits<Function*> : public GraphTraits<BasicBlock*> {
//  static NodeRef getEntryNode(Function *F) { return &F->getEntryBlock(); }
//
//  // nodes_iterator/begin/end - Allow iteration over all nodes in the graph
//  typedef pointer_iterator<Function::iterator> nodes_iterator;
//
//  static nodes_iterator nodes_begin(Function *F) {
//    return nodes_iterator(F->begin());
//  }
//
//  static nodes_iterator nodes_end(Function *F) {
//    return nodes_iterator(F->end());
//  }
//
//  static size_t size(Function *F) { return F->size(); }
//};
