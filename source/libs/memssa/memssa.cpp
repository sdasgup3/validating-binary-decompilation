//===-------------------------- memssa.cpp
//----------------------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

// This file try to use MemorySSA pass in LLVM 3.9 svn version.
// With those APIs provided in MemorySSA.h,
// We can now get the immediate Memory Def of the instruction annotated Memory
// Def/Memory Use/Memory Phi,
// and the instruction the immediate Memory Def annotation represent.

#define DEBUG_TYPE "memssa"
#include "memssa.h"
#include <vector>

using namespace llvm;
using namespace std;

void memssa::getAnalysisUsage(AnalysisUsage &AU) const {
  // AU.addRequired<MemorySSAWrapperPass>();
  // AU.addPreserved<MemorySSAWrapperPass>();
  AU.addRequired<AssumptionCacheTracker>();
  AU.addRequired<DominatorTreeWrapperPass>();
  AU.addRequired<TargetLibraryInfoWrapperPass>();
  AU.addRequired<MemorySSAWrapperPass>();
  AU.addRequired<AAResultsWrapperPass>();
  // AU.addPreserved<DominatorTreeWrapperPass>();
  // AU.addPreserved<GlobalsAAWrapperPass>();

}

vector<Instruction*> handleMemPhi(MemorySSA *MSSA, MemoryPhi* phi) {
  vector<Instruction*> retval;

  for (memoryaccess_def_iterator MAitr = phi->defs_begin();
       MAitr != phi->defs_end(); MAitr++) {

    MemoryAccess* MA = *MAitr;
    errs() << "\tDef: " << *MA << "\n";

    if (MSSA->isLiveOnEntryDef(MA)) {
        continue;
    }

    if(dyn_cast<MemoryPhi>(MA)) {
      auto tmpV = handleMemPhi(MSSA, cast<MemoryPhi>(MA));
      for(auto p: tmpV) {
        retval.push_back(p);
      }
    } else {
      Instruction *u = cast<MemoryUseOrDef>(MA)->getMemoryInst();
      retval.push_back(u);
    }
    // if (u != NULL) {
    //   errs() << "\t\tDef Inst: " << *u << "\n";
    // } else {
    //   errs() << "\t\tNo Inst\n";
    // }
  }

  return retval;
}

bool memssa::runOnFunction(Function &F) {

  MemorySSA *MSSA = &getAnalysis<MemorySSAWrapperPass>().getMSSA();
  //MemorySSAWalker *MAW = new MemorySSAWalker(*MSSA);
  MemorySSAWalker *MAW = MSSA->getWalker();
  errs() << "\n";

  errs() << "Function Name = " << F.getName() << "\n";
  for (Function::iterator BB = F.begin(); BB != F.end(); BB++) {
    errs() << "Basic block (name=" << BB->getName() << ")\n";

    // Get MemoryPhi and print it out
    MemoryPhi *MP = MSSA->getMemoryAccess(dyn_cast<BasicBlock>(BB));
    if (MP != NULL)
      MP->dump();
    errs() << "\n";

    for (BasicBlock::iterator itrIns = (*BB).begin(); itrIns != (*BB).end();
         itrIns++) {

      Instruction *I = &*itrIns;

      if(!dyn_cast<StoreInst>(I) && !dyn_cast<LoadInst>(I)) continue;

      errs() << "Instruction: " << *itrIns << "\n";
      MemoryAccess* MA = MAW->getClobberingMemoryAccess(&*itrIns);
      // MemoryLocation Location;
      // MemoryAccess* MAR = MAW.getClobberingMemoryAccess(MA,&Location);
      // MAR->dump();

      // Get MemoryDef or MemoryUse and print it out
      // MemoryAccess *MA = MSSA->getMemoryAccess(dyn_cast<Value>(itrIns));
      // MemoryAccess *MA = MSSA->getMemoryAccess(dyn_cast<Instruction>(&*itrIns));

      if(!MA) {
        errs() << "\n\n";
        continue;
      }

      errs() << "\tMemeory Access: \n";
      MA->dump();

      if (MSSA->isLiveOnEntryDef(MA)) {
        errs() << "\n\n";
        continue;
      }

      if(dyn_cast<MemoryPhi>(MA)) {
        auto definingInstrs = handleMemPhi(MSSA, cast<MemoryPhi>(MA));
        for(auto p: definingInstrs) {
          errs() << "\t\tDef Inst: " << *p << "\n";
        }
      } else {
        Instruction *u = cast<MemoryUseOrDef>(MA)->getMemoryInst();
        errs() << "\t\tDef Inst: " << *u << "\n";
      }

      errs() << "\n\n";
    }
  }
  return 0;
}

char memssa::ID = 0;

static RegisterPass<memssa> GS("memssa", "Get my Memory-SSA");
