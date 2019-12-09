//===-------------------------- memssa.h
//------------------------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

#include "llvm/ADT/DenseMap.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/AssumptionCache.h"
#include "llvm/Analysis/BasicAliasAnalysis.h"
#include "llvm/Analysis/GlobalsModRef.h"
#include "llvm/Analysis/TargetLibraryInfo.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Instruction.h"
#include "llvm/Pass.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/Utils/Local.h"
#include "llvm/Transforms/Utils/MemorySSA.h"

#include <map>
#include <set>

using namespace std;
using namespace llvm;
typedef map<Instruction *, set<Instruction *>> MemDepEdgesType;
namespace llvm {

class MemSSA {
public:
private:
  DominatorTree DT;
  AssumptionCache AC;
  TargetLibraryInfoImpl TLII;
  TargetLibraryInfo TLI;
  AAResults AA;
  BasicAAResult BAA;
  MemorySSA *MSSA;
  MemorySSAWalker *Walker;
  Function *F;

public:
  MemSSA(Function *F, DataLayout &DL);
  set<Instruction *> handleMemPhi(MemorySSA *MSSA, MemoryPhi *phi);
  MemDepEdgesType collectMemoryDepEdges();
};
}
