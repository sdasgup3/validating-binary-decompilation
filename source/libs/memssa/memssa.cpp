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

MemSSA::MemSSA(Function *Func)
    : DT(*Func), AC(*Func), TLI(TLII), AA(TLI),
      BAA(Func->getParent()->getDataLayout(), *Func, TLI, AC, &DT), F(Func) {
  AA.addAAResult(BAA);
  MSSA = new MemorySSA(*F, &AA, &DT);
  Walker = MSSA->getWalker();
}

MemDepEdgesType MemSSA::collectMemoryDepEdges() {
  MemDepEdgesType retval;

  for (Function::iterator BB = F->begin(); BB != F->end(); BB++) {

    // Get MemoryPhi and print it out
    // MemoryPhi *MP = MSSA->getMemoryAccess(dyn_cast<BasicBlock>(BB));
    // if (MP != NULL)
    //   MP->dump();
    // errs() << "\n";

    for (BasicBlock::iterator itrIns = (*BB).begin(); itrIns != (*BB).end();
         itrIns++) {

      Instruction *I = &*itrIns;

      if (!dyn_cast<StoreInst>(I) && !dyn_cast<LoadInst>(I))
        continue;
#ifdef MEMSSA_DEBUG
      errs() << *I << "\n";
#endif
      MemoryAccess *MA = Walker->getClobberingMemoryAccess(&*itrIns);
      // MemoryLocation Location;
      // MemoryAccess* MAR = Walker.getClobberingMemoryAccess(MA,&Location);
      // MAR->dump();

      // Get MemoryDef or MemoryUse and print it out
      // MemoryAccess *MA = MSSA->getMemoryAccess(dyn_cast<Value>(itrIns));
      // MemoryAccess *MA =
      // MSSA->getMemoryAccess(dyn_cast<Instruction>(&*itrIns));

      if (!MA) {
#ifdef MEMSSA_DEBUG
        errs() << "\n\n";
#endif
        continue;
      }

#ifdef MEMSSA_DEBUG
      errs() << "\tMemeory Access: \n";
      MA->dump();
#endif

      if (MSSA->isLiveOnEntryDef(MA)) {
#ifdef MEMSSA_DEBUG
        errs() << "isLiveOnEntryDef\n\n";
#endif
        continue;
      }

      if (dyn_cast<MemoryPhi>(MA)) {

        auto definingInstrs = handleMemPhi(MSSA, cast<MemoryPhi>(MA));
#ifdef MEMSSA_DEBUG
        for (auto p : definingInstrs) {
          errs() << "\t\tDef Inst: " << *p << "\n";
        }
#endif
        retval[I].insert(definingInstrs.begin(), definingInstrs.end());

      } else {
        Instruction *u = cast<MemoryUseOrDef>(MA)->getMemoryInst();
#ifdef MEMSSA_DEBUG
        errs() << "\t\tDef Inst: " << *u << "\n";
#endif
        retval[I].insert(u);
      }

#ifdef MEMSSA_DEBUG
      errs() << "\n\n";
#endif
    }
  }

  return retval;
}

set<Instruction *> MemSSA::handleMemPhi(MemorySSA *MSSA, MemoryPhi *phi) {
  if (definingInstrsOfMemoryPhi.count(phi))
    return definingInstrsOfMemoryPhi.at(phi);
  definingInstrsOfMemoryPhi[phi] = set<Instruction *>();

  set<Instruction *> retval;
  for (memoryaccess_def_iterator MAitr = phi->defs_begin();
       MAitr != phi->defs_end(); MAitr++) {

    MemoryAccess *MA = *MAitr;

    if (MSSA->isLiveOnEntryDef(MA)) {
      continue;
    }

    if (dyn_cast<MemoryPhi>(MA)) {
      auto tmpV = handleMemPhi(MSSA, cast<MemoryPhi>(MA));
      retval.insert(tmpV.begin(), tmpV.end());
    } else {
      Instruction *u = cast<MemoryUseOrDef>(MA)->getMemoryInst();
      retval.insert(u);
    }
  }

  definingInstrsOfMemoryPhi[phi].insert(retval.begin(), retval.end());

  return retval;
}
