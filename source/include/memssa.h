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

// #define MEMSSA_DEBUG

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
  // Map to keep track of MemoryPhis which define any MemoryAccess.
  // Against each MemoryPhi, we store the instructions which define
  // that MemoryPhi.
  map<MemoryPhi *, set<Instruction *>> definingInstrsOfMemoryPhi;

public:
  MemSSA(Function *F);
  set<Instruction *> handleMemPhi(MemorySSA *MSSA, MemoryPhi *phi);
  MemDepEdgesType collectMemoryDepEdges();
};
}
