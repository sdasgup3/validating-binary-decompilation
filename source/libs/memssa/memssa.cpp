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

using namespace llvm;

void memssa::getAnalysisUsage(AnalysisUsage &AU) const {
  AU.addRequired<MemorySSAWrapperPass>();
  AU.addPreserved<MemorySSAWrapperPass>();
}

bool memssa::runOnFunction(Function &F) {

  MemorySSA *MSSA = &getAnalysis<MemorySSAWrapperPass>().getMSSA();
  // MemorySSAWalker MAW = new MemorySSAWalker(MSSA);
  errs() << "\n";

  for (Function::iterator BB = F.begin(); BB != F.end(); BB++) {
    errs() << "Basic block (name=" << BB->getName() << ")\n";

    // Get MemoryPhi and print it out
    MemoryPhi *MP = MSSA->getMemoryAccess(dyn_cast<BasicBlock>(BB));
    if (MP != NULL)
      MP->dump();
    for (BasicBlock::iterator itrIns = (*BB).begin(); itrIns != (*BB).end();
         itrIns++) {
      // MemoryAccess* MA = MAW.getClobberingMemoryAccess(itrIns);
      // MemoryLocation Location;
      // MemoryAccess* MAR = MAW.getClobberingMemoryAccess(MA,&Location);
      // MAR->dump();
      errs() << "Instruction: " << *itrIns << "\n";

      // Get MemoryDef or MemoryUse and print it out
      // MemoryAccess *MA = MSSA->getMemoryAccess(dyn_cast<Value>(itrIns));
      MemoryAccess *MA = MSSA->getMemoryAccess(dyn_cast<Instruction>(itrIns));
      if (MA != NULL) {
        MA->dump();
        // if(MSSA->isLiveOnEntryDef(MA))

        // Get immediate MemoryDef of the instruction annotated
        // MemoryDef/MemoryUse
        for (memoryaccess_def_iterator MAitr = MA->defs_begin();
             MAitr != MA->defs_end(); MAitr++) {
          errs() << "Def: " << **MAitr << "\n";
          // Get the instruction the immediate Memory Def annotation represent
          Instruction *u = cast<MemoryUseOrDef>(*MAitr)->getMemoryInst();
          if (u != NULL)
            errs() << "     Def Inst: " << *u << "\n";
        }
      }
    }
  }
  return 0;
}

char memssa::ID = 0;

static RegisterPass<memssa> GS("memssa", "Get my Memory-SSA");
