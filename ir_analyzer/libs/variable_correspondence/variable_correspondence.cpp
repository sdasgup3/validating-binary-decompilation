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
#include "llvm/IR/Module.h"
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
cl::opt<std::string> FunctionToFindInitState(
    "init_state_function",
    cl::desc("Specify the llvm function name to determine the initial variable "
             "correspondence"),
    cl::value_desc("Function Name"), cl::Required);

/*******************************************************************
  * Function :   runOnModule
  * Purpose  :
********************************************************************/
bool variable_correspondence::runOnModule(Module &M) {
  // Func = &F;
  Mod = &M;

  // Find the initial variable correspondence w.r.t a dummy function
  for (auto &Func : M) {
    if (string::npos == Func.getName().str().find(FunctionToFindInitState) ||
        Func.isIntrinsic() || Func.isDeclaration()) {
      continue;
    }
    find_dummy_init_corr(Func);
  }

  // Find the initial variable correspondence w.r.t the function under snalysis
  for (auto &Func : M) {
    if (string::npos == Func.getName().str().find(FunctionToAnalyze) ||
        Func.isIntrinsic() || Func.isDeclaration()) {
      continue;
    }
    find_init_corr(Func);
  }

  // dfa();

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
void use_defs(Instruction *Inst, int tabcount) {
  //  for (Use &U : Inst->operands()) {
  //    Value *v = U.get();
  //    Instruction *I = dyn_cast<Instruction>(v);
  //    if (!I) {
  //      // errs() << "Skipped Instr: " << *v << " Type: " << *(v->getType())
  //      <<
  //      // "\n";
  //      if (Argument *arg = dyn_cast<Argument>(v)) {
  //        for (int i = 0; i < tabcount; i++) {
  //          errs() << "\t";
  //        }
  //        errs() << *arg << "\n";
  //      }
  //      continue;
  //    }
  //
  //    for (int i = 0; i < tabcount; i++) {
  //      errs() << "\t";
  //    }
  //    errs() << *I << "\n";
  //    use_defs(I, tabcount + 1);
  //  }
}

/*******************************************************************
  * Function :  dfa
  * Purpose  :
********************************************************************/
void variable_correspondence::dfa() {
  //  if (Func->getName() != FunctionToAnalyze || Func->isIntrinsic() ||
  //      Func->isDeclaration()) {
  //    return;
  //  }
  //
  //  errs() << "==========================================\n";
  //  errs() << "Function : " << Func->getName() << "\n";
  //  errs() << "==========================================\n";
  //
  //  for (auto &B : *Func) {
  //    for (auto &I : B) {
  //      errs() << "Instruction: ";
  //      I.dump();
  //      Instruction *Inst = dyn_cast<Instruction>(&I);
  //      errs() << "Use Def\n";
  //      use_defs(Inst, 1);
  //      errs() << "Def Use\n";
  //      def_use(Inst, 1);
  //      errs() << "\n\n";
  //    }
  //  }
}

/*******************************************************************
  * Function :
  * Purpose  :
********************************************************************/
static string regname_hints(int64_t val) {
  switch (val) {
  case 10:
    return "rax";
  case 20:
    return "rbx";
  case 30:
    return "rcx";
  case 40:
    return "rdx";
  case 50:
    return "rsi";
  case 60:
    return "rdi";
  case 70:
    return "rsp";
  case 80:
    return "rbp";
  };
  assert(0 && "Unknown hint value!!");
  return "";
}

void variable_correspondence::find_dummy_init_corr(Function &f) {
  errs() << "\nFinding initial variable correspondence in dummy " << f.getName()
         << "\n";
  for (auto &b : f) {
    for (auto &i : b) {
      // errs() << "Instruction: ";
      // i.dump();
      StoreInst *store = dyn_cast<StoreInst>(&i);
      if (!store)
        continue;

      Value *val = store->getValueOperand();
      Value *ptr = store->getPointerOperand();
      ConstantInt *cint = dyn_cast<ConstantInt>(val);
      if (cint) {
        string regname = regname_hints(cint->getZExtValue());
        errs() << regname << " " << *store << "\n";

        if (DUMMY_INIT_VAR_CORR.count(regname)) {
          if (DUMMY_INIT_VAR_CORR.at(regname) != ptr) {
            errs() << "Conflict in initial variable correspondence of " +
                          regname
                   << "\n";
            assert(0);
          }
        } else {
          DUMMY_INIT_VAR_CORR[regname] = ptr;
          // errs() << "Inserting " << regname << " with: " << *ptr << "\n";
        }
      }
    }
  }
  for (auto varr_corr : DUMMY_INIT_VAR_CORR) {
    errs() << varr_corr.first << " : " << *(varr_corr.second) << "\n";
  }
}

static bool isSameGptr(GetElementPtrInst *gptr1, GetElementPtrInst *gptr2) {

  if (!gptr1 && !gptr2) {
    return true;
  }
  if ((!gptr1 && gptr2) || (gptr1 && !gptr2)) {
    return false;
  }

  if (gptr1->getSourceElementType() != gptr2->getSourceElementType())
    return false;
  // errs() << "\n\n";
  if (gptr1->getResultElementType() != gptr2->getResultElementType())
    return false;
  if (gptr1->getNumIndices() != gptr2->getNumIndices())
    return false;

  // int count = 0;
  for (auto Index1 = gptr1->idx_begin(), Index2 = gptr2->idx_begin();
       Index1 != gptr1->idx_end() && Index2 != gptr2->idx_end();
       ++Index1, ++Index2) {
    ConstantInt *cint1 = dyn_cast<ConstantInt>(Index1);
    ConstantInt *cint2 = dyn_cast<ConstantInt>(Index2);
    if (!cint1 || !cint2)
      return false;

    // errs() << cint1->getZExtValue() << " " << cint2->getZExtValue() << "\n";
    if (cint1->getZExtValue() != cint2->getZExtValue())
      return false;
    // count++;
    // if (3 == count)
    //  break;
  }
  Value *ptr1 = gptr1->getPointerOperand();
  Value *ptr2 = gptr2->getPointerOperand();
  // errs() << *gptr1 << "\n";
  // errs() << *gptr2 << "\n";

  return isSameGptr(dyn_cast<GetElementPtrInst>(ptr1),
                    dyn_cast<GetElementPtrInst>(ptr2));
}

static bool isSameBC(BitCastInst *bc1, BitCastInst *bc2) {
  Type *t1 = bc1->getType();
  Type *t2 = bc2->getType();

  // if (t1 != t2)
  //  return false;

  Value *op1 = bc1->getOperand(0);
  Value *op2 = bc2->getOperand(0);

  GetElementPtrInst *gptr1 = dyn_cast<GetElementPtrInst>(op1);
  GetElementPtrInst *gptr2 = dyn_cast<GetElementPtrInst>(op2);

  if (gptr1 && gptr2 && isSameGptr(gptr1, gptr2)) {
    // errs() << "REF: " << *bc1 << "\n";
    // errs() << "CAND: " << *bc2 << "\n";
    return true;
  }
  return false;
}

static bool isRelatable(Value *ref, Value *cand) {

  BitCastInst *bc_ref = dyn_cast<BitCastInst>(ref);
  BitCastInst *bc_cand = dyn_cast<BitCastInst>(cand);

  if (bc_ref && bc_cand) {
    return isSameBC(bc_ref, bc_cand);
  }

  return false;
}

void variable_correspondence::find_init_corr(Function &f) {
  errs() << "\nFinding initial variable correspondence in " << f.getName()
         << "\n";
  for (auto &b : f) {
    for (auto &i : b) {
      // errs() << "Instruction: ";
      // i.dump();
      // GetElementPtrInst *gptr = dyn_cast<GetElementPtrInst>(&i);
      // if (!gptr)
      //  continue;

      for (auto var_corr : DUMMY_INIT_VAR_CORR) {
        // GetElementPtrInst *mapped_val =
        //    dyn_cast<GetElementPtrInst>(var_corr.second);
        if (isRelatable(var_corr.second, &i)) {
          INIT_VAR_CORR[var_corr.first] = &i;
        }
        // if (mapped_val && sameGptr(mapped_val, gptr)) {
        //  INIT_VAR_CORR[var_corr.first] = gptr;
        //}
      }
    }
  }
  for (auto varr_corr : INIT_VAR_CORR) {
    errs() << varr_corr.first << " : " << *(varr_corr.second) << "\n";
  }
}
