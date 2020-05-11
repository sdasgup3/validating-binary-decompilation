//===-- matcher-graph.cpp --===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.md for details.
//
//===----------------------------------------------------------------------===//

#include "data-dep-graph.h"
#include "memssa.h"

using namespace llvm;

DataDepGraph::DataDepGraph(Function *F, bool useSSAEdges) {

  this->F = F;

  // Argument SSA edges
  auto argI = F->arg_begin();
  while (argI != F->arg_end()) {
    Value *U = &*argI;
    set<Value *> S;

    for (Value::user_iterator VI = U->user_begin(); VI != U->user_end(); VI++) {
      Value *V = dyn_cast<Value>(*VI);
      if (!V) {
        assert(0 && "DataDepGraph::User Value type error!");
      }

      S.insert(V);
    }

    GImpl[U] = S;
    argI++;
  }

  // Instruction SSA edges
  for (inst_iterator I = inst_begin(F), E = inst_end(F); I != E; ++I) {
    Value *U = &*I;
    set<Value *> S;

    for (Value::user_iterator VI = U->user_begin(); VI != U->user_end(); VI++) {
      Value *V = dyn_cast<Value>(*VI);
      if (!V) {
        assert(0 && "DataDepGraph::User Value type error!");
      }

      S.insert(V);
    }

    GImpl[U] = S;
  }

  if (useSSAEdges) {
    return;
  }

// MemSSA edges
#ifdef MATCHER_DEBUG
  llvm::errs() << "\n\nMemDep Edges for: " << F->getName() << "\n";
#endif

  MemSSA *mSSA = new MemSSA(F);
  MemDepEdgesType edges = mSSA->collectMemoryDepEdges();
  for (auto e : edges) {
    Value *U = e.first;
    auto adjList = e.second;

    if (!GImpl.count(U)) {
      llvm::errs() << *U;
      assert(0 && "DataDepGraph::getAdj::Missing load/store in graph!");
    }

    // llvm::errs() << *U << "\n";
    for (auto p : adjList) {
      if (!dyn_cast<StoreInst>(p) && !dyn_cast<CallInst>(p)) {
        llvm::errs() << "\t" << *p << "\n";
        assert(0 && "Defining instruction should always be a store");
      }

      llvm::errs() << *p << " --> " << *U << "\n";

      GImpl[p].insert(U);
    }
  }

  // Collect vertices of the graph
  for (auto p : GImpl) {
    VertexSet.push_back(p.first);
  }
}

set<Value *> DataDepGraph::getAdj(Value *V) {
  if (!GImpl.count(V)) {
    llvm::errs() << *V;
    assert(0 && "DataDepGraph::getAdj::Missing vertex in graph!");
    return set<Value *>();
  }

  return GImpl[V];
}
