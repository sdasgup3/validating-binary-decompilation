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

#include "signature.h"
using namespace llvm;

/*******************************************************************
  * Function :
  * Purpose  :
********************************************************************/
static const map<int64_t, string> regnameHints = {
    {10, "rax"}, {20, "rbx"}, {30, "rcx"}, {40, "rdx"}, {50, "rsi"},
    {60, "rdi"}, {70, "rsp"}, {80, "rbp"}, {90, "edi"}};

void Signature::dumpSignature(int tabcount) {

  if (sigTypes.size() == 0) {
    for (int i = 0; i < tabcount; i++)
      errs() << "\t";
    errs() << "\tTypes: None\n";
  } else {
    for (int i = 0; i < tabcount; i++)
      errs() << "\t";
    errs() << "Types\n";
    for (auto sigType : sigTypes) {
      for (int i = 0; i < tabcount; i++)
        errs() << "\t";
      errs() << "\t\t" << *sigType << "\n";
    }
  }

  if (gptrIndices.size() == 0) {
    for (int i = 0; i < tabcount; i++)
      errs() << "\t";
    errs() << "\tGptr Indices: None\n";
  } else {
    for (int i = 0; i < tabcount; i++)
      errs() << "\t";
    errs() << "Gptr Indices: ";
    for (auto gptrIndex : gptrIndices) {
      errs() << gptrIndex << " ";
    }
  }
  errs() << "\n";
}

/*
** Match Signature routines
*/
bool Signature::matchBCSignature(BitCastInst *bc, size_t typeIdx) {
  // if ((typeIdx >= sigTypes.size()) || (sigTypes[typeIdx] != bc->getType())) {
  //  return false;
  //}
  Value *op = bc->getOperand(0);
  GetElementPtrInst *gptr = dyn_cast<GetElementPtrInst>(op);
  if (gptr) {
    return matchGPTRSignature(gptr, typeIdx + 1, 0);
  }

  return false;
}

bool Signature::matchGPTRSignature(GetElementPtrInst *gptr, size_t typeIdx,
                                   size_t gptrIdx) {
  for (auto index = gptr->idx_begin(); index != gptr->idx_end(); ++index) {
    ConstantInt *cint = dyn_cast<ConstantInt>(index);
    if (!cint)
      continue;
    if ((gptrIdx >= gptrIndices.size()) ||
        (cint->getZExtValue() != gptrIndices[gptrIdx++]))
      return false;
  }

  // DEBUG(errs() << *gptr << "\n");

  Value *ptr = gptr->getPointerOperand();
  GetElementPtrInst *gptr_ptr = dyn_cast<GetElementPtrInst>(ptr);
  if (gptr_ptr) {
    return matchGPTRSignature(gptr_ptr, typeIdx, gptrIdx);
  } else {
    if ((typeIdx >= sigTypes.size()) ||
        (sigTypes[typeIdx] != gptr->getSourceElementType())) {
      return false;
    }
  }

  return true;
}

bool Signature::matchSignature(Value *V) {
  BitCastInst *bc = dyn_cast<BitCastInst>(V);
  if (NULL != bc) {
    return matchBCSignature(bc, 0);
  }

  GetElementPtrInst *gptr = dyn_cast<GetElementPtrInst>(V);
  if (NULL != gptr) {
    return matchGPTRSignature(gptr, 0, 0);
  }

  return false;
}

/*
** Create Signature routines
*/
void Signature::createGPTRSignature(GetElementPtrInst *gptr) {
  sigTypes.push_back(gptr->getSourceElementType());

  for (auto index = gptr->idx_begin(); index != gptr->idx_end(); ++index) {
    ConstantInt *cint = dyn_cast<ConstantInt>(index);
    if (!cint)
      continue;
    gptrIndices.push_back(cint->getZExtValue());
  }

  Value *ptr = gptr->getPointerOperand();
  GetElementPtrInst *gptr_ptr = dyn_cast<GetElementPtrInst>(ptr);
  if (gptr_ptr) {
    sigTypes.pop_back();
    createGPTRSignature(gptr_ptr);
  }
}

void Signature::createBCSignature(BitCastInst *bc) {
  sigTypes.push_back(bc->getType());

  Value *op = bc->getOperand(0);
  GetElementPtrInst *gptr = dyn_cast<GetElementPtrInst>(op);
  if (gptr) {
    return createGPTRSignature(gptr);
  }
}
void Signature::createSignature(Value *V) {

  BitCastInst *bc = dyn_cast<BitCastInst>(V);
  if (NULL != bc) {
    createBCSignature(bc);
  }

  GetElementPtrInst *gptr = dyn_cast<GetElementPtrInst>(V);
  if (NULL != gptr) {
    createGPTRSignature(gptr);
  }
}

/*
** Extract signature from module
*/

map<string, vector<Signature *>>
llvm::extractSignaturesFromModule(Module &M,
                                  const string &functionToFindInitState) {
  Function *f = nullptr;
  map<string, vector<Signature *>> signatureInfo;

  for (auto &Func : M) {
    if (string::npos == Func.getName().str().find(functionToFindInitState) ||
        Func.isIntrinsic() || Func.isDeclaration()) {
      continue;
    }
    f = &Func;
    break;
  }

  assert(f && "extractSignaturesFromModule: The function specified with "
              "--init-state-function is not found!!");
  errs() << "\nExtracting variable correspondence signatures from "
         << f->getName() << "\n";

  for (auto &b : *f) {
    for (auto &i : b) {

      StoreInst *store = dyn_cast<StoreInst>(&i);
      if (!store)
        continue;

      Value *val = store->getValueOperand();
      Value *ptr = store->getPointerOperand();
      ConstantInt *cint = dyn_cast<ConstantInt>(val);
      if (!cint)
        continue;

      string regname = regnameHints.count(cint->getZExtValue())
                           ? regnameHints.at(cint->getZExtValue())
                           : "";
      assert("" != regname && "Unknown hint value!!");

      if (signatureInfo.count(regname)) {
        errs() << "Conflict in initial variable correspondence of " + regname
               << "\n";
      } else {
        signatureInfo[regname].push_back(new Signature(ptr));
      }
    }
  }

  // Check if all the regster's signatures are extracted
  for (auto regHints : regnameHints) {
    if (signatureInfo.count(regHints.second))
      continue;

    // Special handling for extracting rsp signature.
    // Due to DSE, we might have only the last store on rbp
    errs() << "Missing signature for: " << regHints.second << "\n";
  }

  DEBUG_WITH_TYPE("signature", for (auto sigInfo
                                    : signatureInfo) {
    errs() << sigInfo.first << " : \n";
    for (auto sig : sigInfo.second) {
      sig->dumpSignature(2);
    }
  });

  errs() << "\nExtracting variable correspondence signatures: Done"
         << "\n\n";
  return signatureInfo;
}

/*
** Apply the extracted signature to the module under analysis
*/

static pair<bool, string> applySignaturesToInstruction(
    Value *V, const map<string, vector<Signature *>> &signatureInfo) {

  for (auto sigInfo : signatureInfo) {
    auto regKey = sigInfo.first;
    for (auto sig : sigInfo.second) {
      if (sig->matchSignature(V)) {
        return pair<int, string>(true, regKey);
      }
    }
  }

  return pair<bool, string>(false, "");
}

map<Value *, string> llvm::applySignaturesToModule(
    Module &M, const string &FunctionToAnalyze,
    const map<string, vector<Signature *>> &signatureInfo) {
  Function *f = nullptr;
  map<Value *, string> initVariableCorrespondence;

  for (auto &Func : M) {
    if (string::npos == Func.getName().str().find(FunctionToAnalyze) ||
        Func.isIntrinsic() || Func.isDeclaration()) {
      continue;
    }
    f = &Func;
    break;
  }

  assert(f && "applySignaturesToModule: The function specified with "
              "--target-function is not found!!");
  errs() << "\nFinding initial variable correspondence in " << f->getName()
         << "\n";

  for (auto &b : *f) {
    for (auto &i : b) {
      auto result = applySignaturesToInstruction(&i, signatureInfo);
      if (result.first) {
        initVariableCorrespondence[&i] = result.second;
      }
    }
  }

  for (auto varr_corr : initVariableCorrespondence) {
    errs() << *(varr_corr.first) << " : " << (varr_corr.second) << "\n";
  }

  errs() << "\nFinding initial variable correspondence: Done"
         << "\n\n";
  return initVariableCorrespondence;
}
