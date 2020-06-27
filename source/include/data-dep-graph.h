//===-- matcher-graph.h --===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.md for details.
//
//===----------------------------------------------------------------------===//
//
// This file provide GraphTraits specializations for instructions graphs
// (data flow graphs)
//
//===----------------------------------------------------------------------===//

#ifndef __DATA_DEP_GRAPH_H__
#define __DATA_DEP_GRAPH_H__

#include "llvm/IR/InstIterator.h"
#include "llvm/IR/InstVisitor.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Operator.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/Utils/FunctionComparator.h"
#include <map>
#include <set>
#include <string>

#undef DEBUG_TYPE
#define DEBUG_TYPE "data-dep-graph"

using namespace std;
using namespace llvm;

namespace llvm {

/*****************************************
***** Data Dependence Graph Impl *********
******************************************/
class DataDepGraph {
private:
  map<Value *, set<Value *>> GImpl;

public:
  Function *F;
  DataDepGraph(Function *F, bool useSSAEdges = false);
  size_t numEdges() { return GImpl.size(); };
  set<Value *> getAdj(Value *V);
  map<Value *, set<Value *>> getImpl() { return GImpl; };
  vector<Value *> VertexSet;
};

} // namespace llvm

#endif
