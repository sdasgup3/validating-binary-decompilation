//===-- signature.h --===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.md for details.
//
//===----------------------------------------------------------------------===//
//
// This file provide class definition and functionality to extract signatures of
// simulated hardware registers
//
//===----------------------------------------------------------------------===//

#ifndef __SIGNATURE_H__
#define __SIGNATURE_H__

#include "llvm/IR/InstVisitor.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"
#include <map>
#include <string>

#undef DEBUG_TYPE
#define DEBUG_TYPE "signature"

using namespace std;
using namespace llvm;

namespace llvm {

class Signature {
private:
  vector<Type *> sigTypes;
  vector<size_t> gptrIndices;
  void createSignature(Value *V);

public:
  Signature(Value *V) { createSignature(V); }

  void createBCSignature(BitCastInst *bc);
  void createGPTRSignature(GetElementPtrInst *gptr);
  bool matchSignature(Value *V);
  bool matchBCSignature(BitCastInst *bc, size_t typeIdx);
  bool matchGPTRSignature(GetElementPtrInst *gptr, size_t typeIdx,
                          size_t gptrIdx);
  void dumpSignature(int tabcount = 0);
};

map<string, vector<Signature *>>
extractSignaturesFromModule(Module &M, const string &functionToFindInitState);
map<Value *, string>
applySignaturesToModule(Module &M, const string &FunctionToAnalyze,
                        const map<string, vector<Signature *>> &signatureInfo);

} // namespace llvm
#endif
