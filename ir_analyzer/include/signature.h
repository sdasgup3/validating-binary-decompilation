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
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/Debug.h"
#include <map>
#include <string>
using namespace std;
using namespace llvm;

class Signature {
private:
  vector<Type *> sigTypes;
  vector<int64_t> gptrIndices;
  void createSignature(Value *V);

public:
  Signature(Value *V) { createSignature(V); }

  void createBCSignature(BitCastInst *bc);
  void createGPTRSignature(GetElementPtrInst *gptr);
  bool matchSignature(Value *V);
  bool matchBCSignature(BitCastInst *bc, int typeIdx);
  bool matchGPTRSignature(GetElementPtrInst *gptr, int typeIdx, int gptrIdx);
  void dumpSignature();
};

map<string, vector<Signature *>>
extractSignaturesFromModule(Module &M, const string &functionToFindInitState);
map<Value *, string>
applySignaturesToModule(Module &M, const string &FunctionToAnalyze,
                        const map<string, vector<Signature *>> &signatureInfo);
#endif

